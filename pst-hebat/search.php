<?php
/**
 * Search results template
 *
 * @package WPSquad
 */

get_header();
?>

<main id="primary" class="site-search container mx-auto px-4 py-12">

	<header class="page-header mb-8">
		<h1 class="page-title text-3xl font-bold">
			<?php
			printf(
				/* translators: %s: search query */
				esc_html__( 'Search results for: %s', 'pst_hebat' ),
				'<span class="text-blue-600">&ldquo;' . esc_html( get_search_query() ) . '&rdquo;</span>'
			);
			?>
		</h1>
	</header>

	<?php if ( have_posts() ) : ?>

		<div class="posts-list space-y-6">
			<?php
			while ( have_posts() ) :
				the_post();
				?>
				<article id="post-<?php the_ID(); ?>" <?php post_class( 'post-card border-b pb-6' ); ?>>
					<h2 class="entry-title text-2xl font-semibold mb-2">
						<a href="<?php the_permalink(); ?>" class="hover:underline"><?php the_title(); ?></a>
					</h2>
					<div class="entry-excerpt text-gray-700">
						<?php the_excerpt(); ?>
					</div>
				</article>
				<?php
			endwhile;
			?>
		</div>

		<?php
		the_posts_pagination( array(
			'mid_size'  => 2,
			'prev_text' => esc_html__( 'Previous', 'pst_hebat' ),
			'next_text' => esc_html__( 'Next', 'pst_hebat' ),
		) );
		?>

	<?php else : ?>

		<div class="no-results">
			<p class="mb-4"><?php esc_html_e( 'Tidak ada hasil yang cocok dengan pencarian Anda.', 'pst_hebat' ); ?></p>
			<?php get_search_form(); ?>
		</div>

	<?php endif; ?>

</main>

<?php
get_footer();
