#!/bin/bash
# seed.sh — Auto-install WP (if needed) + seed content
# Usage: docker compose exec -T wordpress bash < scripts/seed.sh

set -euo pipefail

echo "=== WP DevKit — WordPress Setup & Seed ==="

# --- Install WP-CLI if missing ---
if ! command -v wp &>/dev/null; then
  echo ">>> Installing WP-CLI..."
  curl -sO https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp-cli.phar
  mv wp-cli.phar /usr/local/bin/wp
fi

WP_PATH="${WP_PATH:-/var/www/html}"
cd "$WP_PATH"

# --- Check if WordPress is installed ---
if ! wp core is-installed --allow-root 2>/dev/null; then
  echo ">>> WordPress belum terinstal. Menginstal..."

  # Generate wp-config if missing
  if [ ! -f wp-config.php ]; then
    wp config create \
      --dbname="${WORDPRESS_DB_NAME:-wordpress}" \
      --dbuser="${WORDPRESS_DB_USER:-wordpress}" \
      --dbpass="${WORDPRESS_DB_PASSWORD:-wordpress}" \
      --dbhost="${WORDPRESS_DB_HOST:-db}" \
      --allow-root
  fi

  # Get site info dari environment atau default
  SITE_URL="${WP_SITE_URL:-http://localhost:8080}"
  SITE_TITLE="${WP_SITE_TITLE:-My WordPress Site}"
  ADMIN_USER="${WP_ADMIN_USER:-admin}"
  ADMIN_PASS="${WP_ADMIN_PASS:-admin}"
  ADMIN_EMAIL="${WP_ADMIN_EMAIL:-admin@example.com}"

  wp core install \
    --url="$SITE_URL" \
    --title="$SITE_TITLE" \
    --admin_user="$ADMIN_USER" \
    --admin_password="$ADMIN_PASS" \
    --admin_email="$ADMIN_EMAIL" \
    --allow-root

  echo ">>> WordPress installed! (admin / $ADMIN_PASS)"
else
  echo ">>> WordPress already installed."
fi

# --- Settings ---
echo ">>> Updating settings..."
wp option update timezone_string "Asia/Jakarta" --allow-root
wp option update date_format "j F Y" --allow-root
wp option update time_format "H:i" --allow-root
wp option update start_of_week 1 --allow-root
wp option update posts_per_page 10 --allow-root
wp option update permalink_structure "/%postname%/" --allow-root
wp rewrite flush --allow-root

# --- Delete default content ---
wp post delete 1 --force --allow-root 2>/dev/null || true
wp post delete 2 --force --allow-root 2>/dev/null || true
wp comment delete 1 --force --allow-root 2>/dev/null || true

# --- Create pages ---
echo ">>> Creating pages..."
HOME_ID=$(wp post create \
  --post_type=page \
  --post_title='Home' \
  --post_status=publish \
  --post_content='Welcome to our site.' \
  --porcelain --allow-root 2>/dev/null || echo "")

ABOUT_ID=$(wp post create \
  --post_type=page \
  --post_title='About' \
  --post_status=publish \
  --post_content='About us page content.' \
  --porcelain --allow-root 2>/dev/null || echo "")

CONTACT_ID=$(wp post create \
  --post_type=page \
  --post_title='Contact' \
  --post_status=publish \
  --post_content='Contact us page.' \
  --porcelain --allow-root 2>/dev/null || echo "")

# --- Set homepage ---
if [ -n "$HOME_ID" ]; then
  wp option update show_on_front 'page' --allow-root
  wp option update page_on_front "$HOME_ID" --allow-root
fi
if [ -n "$ABOUT_ID" ]; then
  wp option update page_for_posts "$ABOUT_ID" --allow-root
fi

# --- Create menu ---
echo ">>> Creating menu..."
wp menu create "Primary Menu" --allow-root 2>/dev/null || true
wp menu location assign primary-menu primary --allow-root 2>/dev/null || true

for page_id in $HOME_ID $ABOUT_ID $CONTACT_ID; do
  if [ -n "$page_id" ]; then
    wp menu item add-post primary-menu "$page_id" --allow-root 2>/dev/null || true
  fi
done

# --- Sample posts ---
echo ">>> Creating sample posts..."
wp post create \
  --post_type=post \
  --post_title='Selamat Datang di Website Kami' \
  --post_content='Ini adalah contoh postingan pertama. Silakan ganti dengan konten asli.' \
  --post_status=publish --allow-root 2>/dev/null || true

wp post create \
  --post_type=post \
  --post_title='Layanan Unggulan Kami' \
  --post_content='Kami menyediakan berbagai layanan unggulan untuk memenuhi kebutuhan Anda.' \
  --post_status=publish --allow-root 2>/dev/null || true

# --- Categories ---
wp term create category "Berita" --description="Berita terbaru" --allow-root 2>/dev/null || true
wp term create category "Layanan" --description="Informasi layanan" --allow-root 2>/dev/null || true

echo ""
echo "=========================================="
echo " Setup & Seed Selesai!"
echo "=========================================="
echo " URL : http://localhost:8080"
echo " Admin : http://localhost:8080/wp-admin"
echo " Login : admin / admin"
echo ""
echo " Theme: aktivasi lewat WP Admin > Appearance > Themes"
echo "        atau: wp theme activate theme-slug --allow-root"
