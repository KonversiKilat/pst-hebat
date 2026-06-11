<?php
/**
 * Category Template — Documents (parent + children)
 * Document grid layout matching homepage section
 *
 * @package PST_Hebat
 */

get_header();
?>

<div class="flex-1 max-w-screen-2xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8">

	<!-- Breadcrumb -->
	<div class="flex items-center gap-2 text-sm text-slate-500 mb-4">
		<a href="<?php echo esc_url(home_url('/')); ?>" class="hover:text-brand-600 no-underline"><?php esc_html_e('Home', 'pst_hebat'); ?></a>
		<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
		<?php
		$cat = get_queried_object();
		$doc_parent = get_category_by_slug('documents');
		if ($cat && $doc_parent && $cat->parent === $doc_parent->term_id) :
			$parent_name = $doc_parent->name;
		?>
		<a href="<?php echo esc_url(get_category_link($doc_parent)); ?>" class="hover:text-brand-600 no-underline"><?php echo esc_html($parent_name); ?></a>
		<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
		<?php endif; ?>
		<span class="font-semibold text-slate-700"><?php single_cat_title(); ?></span>
	</div>

	<!-- Header -->
	<div class="flex items-center justify-between mb-6">
		<div>
			<h1 class="text-2xl sm:text-3xl font-bold text-slate-900"><?php single_cat_title(); ?></h1>
			<p class="text-sm text-slate-500 mt-1">
				<?php echo esc_html($wp_query->found_posts); ?> <?php esc_html_e('documents', 'pst_hebat'); ?>
				<?php if ($cat && $doc_parent && $cat->parent === $doc_parent->term_id) : ?>
				&middot; <a href="<?php echo esc_url(get_category_link($doc_parent)); ?>" class="text-brand-600 hover:text-brand-700 no-underline"><?php echo esc_html($parent_name); ?></a>
				<?php endif; ?>
			</p>
		</div>
	</div>

	<!-- Document Grid -->
	<?php if (have_posts()) : ?>
	<div class="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-3">
		<?php while (have_posts()) : the_post();
			$pdf_url = get_post_meta(get_the_ID(), '_pst_hebat_pdf_url', true);
			$categories = get_the_category();
			$cat_name = '';
			$cat_slug = '';
			foreach ($categories as $c) {
				if ($c->term_id !== $cat->term_id && $c->parent === $doc_parent->term_id) {
					$cat_name = $c->name;
					$cat_slug = $c->slug;
					break;
				}
			}
			if (empty($cat_name)) {
				$cat_name = $cat->name;
				$cat_slug = $cat->slug;
			}
		?>
		<a href="<?php the_permalink(); ?>" class="doc-card bg-white border border-slate-200 rounded-xl p-4 shadow-sm no-underline block hover:border-navy-500 transition-all group">
			<div class="flex items-start gap-3">
				<div class="w-9 h-11 rounded-lg bg-gradient-to-b from-red-50 to-red-100 border border-red-200 flex items-center justify-center shrink-0">
					<svg class="w-4.5 h-4.5 text-red-500" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
				</div>
				<div class="min-w-0 flex-1">
					<h4 class="text-sm font-semibold text-slate-800 leading-snug line-clamp-2 group-hover:text-brand-600 transition-colors"><?php the_title(); ?></h4>
					<p class="text-xs text-slate-500 mt-0.5 truncate"><?php the_author(); ?></p>
					<div class="flex items-center gap-2 mt-1.5 text-xs text-slate-400">
						<span class="bg-navy-50 text-navy-600 px-1.5 py-0.5 rounded text-[10px] font-medium"><?php echo esc_html($cat_name); ?></span>
						<span><?php echo esc_html(get_the_modified_date('Y-m-d')); ?></span>
						<?php if ($pdf_url) : ?>
						<svg class="w-3 h-3 text-brand-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
						<?php endif; ?>
					</div>
				</div>
			</div>
		</a>
		<?php endwhile; ?>
	</div>

	<!-- Pagination -->
	<div class="mt-8">
		<?php
		the_posts_pagination(array(
			'mid_size'  => 2,
			'prev_text' => '&larr; ' . esc_html__('Previous', 'pst_hebat'),
			'next_text' => esc_html__('Next', 'pst_hebat') . ' &rarr;',
		));
		?>
	</div>

	<?php else : ?>
	<div class="text-center py-16">
		<svg class="w-12 h-12 text-slate-300 mx-auto mb-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
		<p class="text-slate-400 text-sm"><?php esc_html_e('No documents found in this category.', 'pst_hebat'); ?></p>
		<a href="<?php echo esc_url(home_url('/')); ?>" class="text-brand-600 hover:text-brand-700 text-sm font-medium no-underline mt-2 inline-block"><?php esc_html_e('Back to Home', 'pst_hebat'); ?></a>
	</div>
	<?php endif; ?>

</div>

<?php
get_footer();
