<?php
/**
 * Default page template
 *
 * @package WPSquad
 */

get_header();
?>

<main id="primary" class="site-page container mx-auto px-4 py-12">

	<?php
	while ( have_posts() ) :
		the_post();
		?>
		<article id="post-<?php the_ID(); ?>" <?php post_class( 'page-content' ); ?>>
			<header class="entry-header mb-6">
				<h1 class="entry-title text-4xl font-bold"><?php the_title(); ?></h1>
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
		</article>

		<?php
		// Komentar untuk pages (kalau diizinkan di admin)
		if ( comments_open() || get_comments_number() ) :
			comments_template();
		endif;

	endwhile;
	?>

</main>

<?php
get_footer();
