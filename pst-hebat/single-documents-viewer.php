<?php
/**
 * Single Post Template — Documents viewer layout
 * For posts in Documents category hierarchy
 *
 * @package PST_Hebat
 */

get_header();
?>

<div class="flex-1 max-w-screen-2xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8">

<?php while (have_posts()) : the_post();
	$pdf_url = get_post_meta(get_the_ID(), '_pst_hebat_pdf_url', true);
	$cats = get_the_category();
	$parent_cat = null;
	foreach ($cats as $c) {
		if ($c->parent) {
			$parent = get_term($c->parent, 'category');
			if ($parent && $parent->slug === 'documents') {
				$parent_cat = $parent;
				break;
			}
		}
	}
	$sub_cat = $parent_cat ? $parent_cat : (!empty($cats) ? $cats[0] : null);
?>

	<!-- Breadcrumb -->
	<div class="flex items-center gap-2 text-sm text-slate-500 mb-6 flex-wrap">
		<a href="<?php echo esc_url(home_url('/')); ?>" class="hover:text-brand-600 no-underline">Home</a>
		<svg class="w-3.5 h-3.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
		<a href="<?php echo esc_url(get_category_link(get_category_by_slug('documents'))); ?>" class="hover:text-brand-600 no-underline">Documents</a>
		<?php if ($sub_cat && $sub_cat->slug !== 'documents') : ?>
		<svg class="w-3.5 h-3.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
		<a href="<?php echo esc_url(get_category_link($sub_cat)); ?>" class="hover:text-brand-600 no-underline"><?php echo esc_html($sub_cat->name); ?></a>
		<?php endif; ?>
		<svg class="w-3.5 h-3.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
		<span class="font-medium text-slate-700 truncate"><?php the_title(); ?></span>
	</div>

	<div class="grid lg:grid-cols-3 gap-8">

		<!-- Main content -->
		<div class="lg:col-span-2 min-w-0">
			<!-- Featured image -->
			<?php if (has_post_thumbnail()) : ?>
			<div class="mb-6 rounded-xl overflow-hidden">
				<?php the_post_thumbnail('large', array('class' => 'w-full object-cover')); ?>
			</div>
			<?php endif; ?>

			<!-- Title & meta -->
			<h1 class="text-2xl sm:text-3xl lg:text-4xl font-bold text-slate-900 leading-tight mb-4"><?php the_title(); ?></h1>
			<div class="flex flex-wrap items-center gap-3 text-sm text-slate-500 mb-6 pb-5 border-b border-slate-100">
				<?php if ($sub_cat) : ?>
				<a href="<?php echo esc_url(get_category_link($sub_cat)); ?>" class="px-2.5 py-0.5 rounded text-xs font-medium bg-brand-50 text-brand-600 hover:bg-brand-100 no-underline"><?php echo esc_html($sub_cat->name); ?></a>
				<?php endif; ?>
				<span><?php echo get_the_date('j M Y'); ?></span>
				<span><?php esc_html_e('by', 'pst_hebat'); ?> <?php the_author(); ?></span>
				<?php if ($pdf_url) : ?>
				<span class="flex items-center gap-1 text-brand-600 font-medium">
					<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					PDF
				</span>
				<?php endif; ?>
			</div>

			<!-- Content -->
			<div class="prose max-w-none text-slate-700 leading-relaxed">
				<?php the_content(); ?>
			</div>

			<!-- Tags -->
			<?php if (has_tag()) : ?>
			<div class="flex flex-wrap gap-1.5 mt-6 pt-4 border-t border-slate-100">
				<?php the_tags('', '', ''); ?>
			</div>
			<?php endif; ?>

			<!-- Comments -->
			<?php if (comments_open() || get_comments_number()) : comments_template(); endif; ?>
		</div>

		<!-- Sidebar -->
		<div class="lg:col-span-1 space-y-6">
			<!-- PDF Download Card -->
			<?php if ($pdf_url) : ?>
			<div class="bg-white border border-slate-200 rounded-xl p-5 shadow-sm">
				<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3"><?php esc_html_e('Document File', 'pst_hebat'); ?></h3>
				<div class="flex items-center gap-3 mb-4">
					<div class="w-10 h-12 rounded-lg bg-gradient-to-b from-red-50 to-red-100 border border-red-200 flex items-center justify-center shrink-0">
						<svg class="w-5 h-5 text-red-500" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					</div>
					<div class="min-w-0">
						<p class="text-sm font-semibold text-slate-800 truncate"><?php the_title(); ?>.pdf</p>
						<p class="text-xs text-slate-400"><?php esc_html_e('PDF Document', 'pst_hebat'); ?></p>
					</div>
				</div>
				<a href="<?php echo esc_url($pdf_url); ?>" target="_blank" class="flex items-center justify-center gap-2 w-full px-4 py-2.5 bg-brand-600 hover:bg-brand-700 text-white text-sm font-semibold rounded-lg transition no-underline">
					<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"/><polyline points="17 8 12 3 7 8"/><line x1="12" y1="3" x2="12" y2="15"/></svg>
					<?php esc_html_e('Download PDF', 'pst_hebat'); ?>
				</a>
			</div>
			<?php endif; ?>

			<!-- Category Info -->
			<div class="bg-white border border-slate-200 rounded-xl p-5 shadow-sm">
				<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3"><?php esc_html_e('Category', 'pst_hebat'); ?></h3>
				<?php if ($sub_cat) : ?>
				<a href="<?php echo esc_url(get_category_link($sub_cat)); ?>" class="flex items-center gap-2 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					<?php echo esc_html($sub_cat->name); ?>
				</a>
				<?php endif; ?>
			</div>

			<!-- Prev/Next -->
			<nav class="flex flex-col gap-2">
				<?php
				$prev = get_previous_post();
				$next = get_next_post();
				if ($prev) : ?>
				<a href="<?php echo esc_url(get_permalink($prev)); ?>" class="flex items-center gap-2 px-4 py-3 bg-white border border-slate-200 rounded-xl hover:border-brand-300 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
					<div class="min-w-0">
						<div class="text-[10px] text-slate-400 uppercase tracking-wider"><?php esc_html_e('Previous', 'pst_hebat'); ?></div>
						<div class="text-xs font-medium text-slate-700 truncate"><?php echo esc_html($prev->post_title); ?></div>
					</div>
				</a>
				<?php endif; ?>
				<?php if ($next) : ?>
				<a href="<?php echo esc_url(get_permalink($next)); ?>" class="flex items-center gap-2 px-4 py-3 bg-white border border-slate-200 rounded-xl hover:border-brand-300 transition no-underline">
					<div class="min-w-0 flex-1 text-right">
						<div class="text-[10px] text-slate-400 uppercase tracking-wider"><?php esc_html_e('Next', 'pst_hebat'); ?></div>
						<div class="text-xs font-medium text-slate-700 truncate"><?php echo esc_html($next->post_title); ?></div>
					</div>
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
				</a>
				<?php endif; ?>
			</nav>
		</div>
	</div>

<?php endwhile; ?>
</div>

<?php
get_footer();
