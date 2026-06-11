<?php
/**
 * Index — fallback template.
 * Dipakai kalau tidak ada template yang lebih spesifik (page.php, single.php, dll).
 *
 * @package WPSquad
 */

get_header();
?>

<main id="primary" class="site-index container mx-auto px-4 py-12">

	<?php if ( have_posts() ) : ?>

		<header class="page-header mb-8">
			<h1 class="page-title text-3xl font-bold"><?php single_post_title(); ?></h1>
		</header>

		<div class="posts-list grid gap-6">
			<?php
			while ( have_posts() ) :
				the_post();
				?>
				<article id="post-<?php the_ID(); ?>" <?php post_class( 'post-card border rounded-lg p-6' ); ?>>
					<h2 class="entry-title text-2xl font-semibold mb-2">
						<a href="<?php the_permalink(); ?>" class="hover:underline"><?php the_title(); ?></a>
					</h2>
					<?php if ( has_post_thumbnail() ) : ?>
						<div class="entry-thumbnail mb-4">
							<?php the_post_thumbnail( 'medium', array( 'class' => 'rounded' ) ); ?>
						</div>
					<?php endif; ?>
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
			<h1 class="text-2xl font-bold mb-4"><?php esc_html_e( 'Nothing found', 'pst_hebat' ); ?></h1>
			<p><?php esc_html_e( 'Sorry, no posts matched your criteria.', 'pst_hebat' ); ?></p>
		</div>

	<?php endif; ?>

</main>

<?php
get_footer();
