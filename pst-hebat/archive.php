<?php
/**
 * Archive template (categories, tags, dates, authors, custom taxonomies)
 *
 * @package WPSquad
 */

get_header();
?>

<main id="primary" class="site-archive container mx-auto px-4 py-12">

	<header class="page-header mb-8">
		<?php
		the_archive_title( '<h1 class="page-title text-3xl font-bold">', '</h1>' );
		the_archive_description( '<div class="archive-description text-gray-600 mt-2">', '</div>' );
		?>
	</header>

	<?php if ( have_posts() ) : ?>

		<div class="posts-list grid gap-6 md:grid-cols-2 lg:grid-cols-3">
			<?php
			while ( have_posts() ) :
				the_post();
				?>
				<article id="post-<?php the_ID(); ?>" <?php post_class( 'post-card border rounded-lg p-6 flex flex-col' ); ?>>
					<?php if ( has_post_thumbnail() ) : ?>
						<a href="<?php the_permalink(); ?>" class="block mb-4">
							<?php the_post_thumbnail( 'medium', array( 'class' => 'rounded w-full' ) ); ?>
						</a>
					<?php endif; ?>

					<h2 class="entry-title text-xl font-semibold mb-2">
						<a href="<?php the_permalink(); ?>" class="hover:underline"><?php the_title(); ?></a>
					</h2>

					<div class="entry-meta text-sm text-gray-600 mb-3">
						<time datetime="<?php echo esc_attr( get_the_date( 'c' ) ); ?>">
							<?php echo esc_html( get_the_date() ); ?>
						</time>
					</div>

					<div class="entry-excerpt text-gray-700 flex-grow">
						<?php the_excerpt(); ?>
					</div>

					<a href="<?php the_permalink(); ?>" class="mt-4 text-sm font-medium hover:underline">
						<?php esc_html_e( 'Read more', 'pst_hebat' ); ?> &rarr;
					</a>
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
			<p><?php esc_html_e( 'No posts found in this archive.', 'pst_hebat' ); ?></p>
		</div>

	<?php endif; ?>

</main>

<?php
get_footer();
