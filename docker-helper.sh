#!/bin/bash
# docker-helper.sh — Manage WordPress Docker environment
# Usage: ./docker-helper.sh <command> [project-dir]

set -euo pipefail

PROJECT_DIR="${2:-.}"

detect_theme_slug() {
  # Find the actual theme directory (first dir with style.css)
  for d in "$PROJECT_DIR"/*/; do
    if [ -f "${d}style.css" ] && grep -qi "Theme Name" "${d}style.css" 2>/dev/null; then
      basename "$d"
      return 0
    fi
  done
  echo "theme"
}

case "${1:-help}" in
  up)
    echo "=== Starting Docker environment ==="
    cd "$PROJECT_DIR" && docker compose up -d --build
    echo "WordPress : http://localhost:$(docker compose port wordpress 80 2>/dev/null | cut -d: -f2 || echo 8080)"
    echo "phpMyAdmin: http://localhost:$(docker compose port phpmyadmin 80 2>/dev/null | cut -d: -f2 || echo 8081)"
    ;;
  down)
    echo "=== Stopping Docker environment ==="
    cd "$PROJECT_DIR" && docker compose down
    ;;
  restart)
    cd "$PROJECT_DIR" && docker compose down && docker compose up -d
    echo "Restarted."
    ;;
  reset)
    echo "=== Resetting database (WARNING: deletes all data) ==="
    cd "$PROJECT_DIR" && docker compose down -v && docker compose up -d
    echo "Database reset. Run 'setup' to reinstall."
    ;;
  setup)
    echo "=== Full setup: WP install + seed content ==="
    cd "$PROJECT_DIR"
    docker compose exec -T wordpress bash < scripts/seed.sh
    THEME=$(detect_theme_slug)
    echo ""
    echo ">>> Activating theme: $THEME"
    docker compose exec wordpress wp theme activate "$THEME" --allow-root 2>/dev/null || \
      echo "⚠ Theme activation skipped. Activate manually via WP Admin."
    ;;
  wp)
    shift 2
    cd "$PROJECT_DIR" && docker compose exec wordpress wp "$@" --allow-root
    ;;
  activate)
    THEME=$(detect_theme_slug)
    echo "=== Activating theme: $THEME ==="
    cd "$PROJECT_DIR" && docker compose exec wordpress wp theme activate "$THEME" --allow-root
    ;;
  seed)
    if [ -f "$PROJECT_DIR/scripts/seed.sh" ]; then
      echo "=== Seeding content ==="
      cd "$PROJECT_DIR" && docker compose exec -T wordpress bash < scripts/seed.sh
    else
      echo "No seed script found at scripts/seed.sh"
    fi
    ;;
  export-db)
    OUTPUT="${3:-seed.sql}"
    echo "=== Exporting database to $OUTPUT ==="
    cd "$PROJECT_DIR" && docker compose exec -T wordpress wp db export "/var/www/html/wp-content/uploads/$OUTPUT" --allow-root
    echo "Exported to wp-content/uploads/$OUTPUT"
    ;;
  import-db)
    FILE="${3:-seed.sql}"
    echo "=== Importing database from $FILE ==="
    cd "$PROJECT_DIR" && docker compose exec -T wordpress wp db import "/var/www/html/wp-content/uploads/$FILE" --allow-root
    ;;
  replace-url)
    OLD="${3:-http://localhost:8080}"
    NEW="${4}"
    if [ -z "$NEW" ]; then
      echo "Usage: $0 replace-url <project-dir> <old-url> <new-url>"
      exit 1
    fi
    echo "=== Replacing $OLD with $NEW ==="
    cd "$PROJECT_DIR" && docker compose exec -T wordpress wp search-replace "$OLD" "$NEW" --allow-root
    ;;
  logs)
    cd "$PROJECT_DIR" && docker compose logs -f wordpress
    ;;
  ps)
    cd "$PROJECT_DIR" && docker compose ps
    ;;
  shell)
    cd "$PROJECT_DIR" && docker compose exec wordpress bash
    ;;
  *)
    echo "WP DevKit Docker Helper"
    echo ""
    echo "Commands:"
    echo "  setup        Full setup: WP install + seed + activate theme"
    echo "  up           Start Docker environment"
    echo "  down         Stop Docker environment"
    echo "  restart      Restart containers"
    echo "  reset        Reset database (delete everything)"
    echo "  activate     Activate theme"
    echo "  seed         Run seed script"
    echo "  wp <cmd>     Run WP-CLI command"
    echo "  export-db    Export database to file"
    echo "  import-db    Import database from file"
    echo "  replace-url  Search-replace URLs in database"
    echo "  logs         View WordPress logs"
    echo "  ps           Show container status"
    echo "  shell        Open bash in WordPress container"
    echo ""
    echo "Usage: ./docker-helper.sh <command> [project-dir]"
    ;;
esac
