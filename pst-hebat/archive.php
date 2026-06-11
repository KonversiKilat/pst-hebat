<?php
/**
 * Archive template (categories, tags, dates, authors, custom taxonomies)
 *
 * @package WPSquad
 */

get_header();
?>

<main class="flex-1">
	<div class="max-w-screen-2xl mx-auto px-4 sm:px-6 lg:px-8 py-8">

	<header class="mb-8">
		<?php
		the_archive_title( '<h1 class="text-2xl md:text-3xl font-black text-gray-900">', '</h1>' );
		the_archive_description( '<div class="text-sm text-gray-500 mt-2">', '</div>' );
		?>
	</header>

	<?php if ( have_posts() ) : ?>

		<div class="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
			<?php while ( have_posts() ) : the_post(); ?>
				<article id="post-<?php the_ID(); ?>" <?php post_class('bg-white border border-slate-200 rounded-xl p-5 shadow-sm flex flex-col hover:shadow-md transition-all'); ?>>
					<?php if ( has_post_thumbnail() ) : ?>
						<a href="<?php the_permalink(); ?>" class="block mb-4 -mx-5 -mt-5 rounded-t-xl overflow-hidden">
							<?php the_post_thumbnail( 'medium', array( 'class' => 'w-full h-48 object-cover' ) ); ?>
						</a>
					<?php endif; ?>

					<h2 class="text-lg font-bold text-slate-800 mb-1.5">
						<a href="<?php the_permalink(); ?>" class="hover:text-brand-600 transition no-underline"><?php the_title(); ?></a>
					</h2>

					<div class="text-xs text-slate-400 mb-3">
						<time datetime="<?php echo esc_attr( get_the_date( 'c' ) ); ?>"><?php echo esc_html( get_the_date() ); ?></time>
						<?php if ( has_category() ) : ?> &middot; <?php the_category(', '); ?><?php endif; ?>
					</div>

					<div class="text-sm text-slate-600 leading-relaxed flex-grow">
						<?php the_excerpt(); ?>
					</div>

					<a href="<?php the_permalink(); ?>" class="mt-4 text-sm font-semibold text-brand-600 hover:text-brand-700 transition no-underline">
						<?php esc_html_e( 'Read more', 'pst_hebat' ); ?> &rarr;
					</a>
				</article>
			<?php endwhile; ?>
		</div>

		<div class="pagination">
			<?php
			echo paginate_links(array(
				'mid_size'  => 2,
				'prev_text' => '&larr; ' . esc_html__('Prev', 'pst_hebat'),
				'next_text' => esc_html__('Next', 'pst_hebat') . ' &rarr;',
				'type'      => 'list',
			));
			?>
		</div>

	<?php else : ?>

		<div class="text-center py-20">
			<svg class="w-16 h-16 mx-auto text-gray-300 mb-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/></svg>
			<p class="text-sm text-slate-500"><?php esc_html_e( 'No posts found in this archive.', 'pst_hebat' ); ?></p>
		</div>

	<?php endif; ?>

	</div>
</main>

<?php
get_footer();
