<?php
/**
 * Single post template
 *
 * @package WPSquad
 */

get_header();
?>

<main id="primary" class="site-single container mx-auto px-4 py-12 max-w-3xl">

	<?php
	while ( have_posts() ) :
		the_post();
		?>
		<article id="post-<?php the_ID(); ?>" <?php post_class( 'single-post' ); ?>>
			<header class="entry-header mb-6">
				<h1 class="entry-title text-4xl font-bold mb-2"><?php the_title(); ?></h1>
				<div class="entry-meta text-sm text-gray-600 flex flex-wrap gap-4">
					<span>
						<time datetime="<?php echo esc_attr( get_the_date( 'c' ) ); ?>">
							<?php echo esc_html( get_the_date() ); ?>
						</time>
					</span>
					<span>
						<?php
						printf(
							/* translators: %s: post author name */
							esc_html__( 'by %s', 'pst_hebat' ),
							'<a href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . esc_html( get_the_author() ) . '</a>'
						);
						?>
					</span>
					<?php if ( has_category() ) : ?>
						<span>
							<?php
							printf(
								/* translators: %s: category list */
								esc_html__( 'in %s', 'pst_hebat' ),
								get_the_category_list( ', ' )
							);
							?>
						</span>
					<?php endif; ?>
				</div>
			</header>

			<?php if ( has_post_thumbnail() ) : ?>
				<div class="entry-thumbnail mb-6">
					<?php the_post_thumbnail( 'large', array( 'class' => 'rounded-lg w-full' ) ); ?>
				</div>
			<?php endif; ?>

			<div class="entry-content prose max-w-none">
				<?php
				the_content();

				wp_link_pages( array(
					'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'pst_hebat' ),
					'after'  => '</div>',
				) );
				?>
			</div>

			<footer class="entry-footer mt-8 pt-6 border-t">
				<?php if ( has_tag() ) : ?>
					<div class="entry-tags text-sm text-gray-600">
						<strong><?php esc_html_e( 'Tags:', 'pst_hebat' ); ?></strong>
						<?php the_tags( '', ', ', '' ); ?>
					</div>
				<?php endif; ?>
			</footer>
		</article>

		<nav class="post-navigation flex justify-between mt-8 pt-8 border-t" aria-label="<?php esc_attr_e( 'Post navigation', 'pst_hebat' ); ?>">
			<?php
			$prev_post = get_previous_post();
			$next_post = get_next_post();
			?>
			<div class="nav-previous">
				<?php if ( $prev_post ) : ?>
					<a href="<?php echo esc_url( get_permalink( $prev_post ) ); ?>" class="hover:underline">
						&larr; <?php echo esc_html( $prev_post->post_title ); ?>
					</a>
				<?php endif; ?>
			</div>
			<div class="nav-next">
				<?php if ( $next_post ) : ?>
					<a href="<?php echo esc_url( get_permalink( $next_post ) ); ?>" class="hover:underline">
						<?php echo esc_html( $next_post->post_title ); ?> &rarr;
					</a>
				<?php endif; ?>
			</div>
		</nav>

		<?php
		if ( comments_open() || get_comments_number() ) :
			comments_template();
		endif;

	endwhile;
	?>

</main>

<?php
get_footer();
