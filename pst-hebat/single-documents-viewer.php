<?php
/**
 * Single Post Template — Documents Viewer (3-column)
 * Left: document list | Center: PDF embed | Right: metadata
 *
 * @package PST_Hebat
 */

get_header();

while (have_posts()) : the_post();
	$current_id   = get_the_ID();
	$pdf_url      = get_post_meta($current_id, '_pst_hebat_pdf_url', true);
	$pdf_filesize = '';
	if ($pdf_url) {
		$tmp = @wp_remote_head($pdf_url, array('timeout' => 5));
		if (!is_wp_error($tmp) && isset($tmp['headers']['content-length'])) {
			$bytes = (int) $tmp['headers']['content-length'];
			$pdf_filesize = $bytes > 1048576
				? round($bytes / 1048576, 1) . ' MB'
				: round($bytes / 1024) . ' KB';
		}
	}

	/* Find sub-category under "documents" */
	$cats       = get_the_category();
	$doc_parent = get_category_by_slug('documents');
	$sub_cat    = null;
	foreach ($cats as $c) {
		if ($doc_parent && $c->parent === $doc_parent->term_id) {
			$sub_cat = $c;
			break;
		}
	}
	if (!$sub_cat && !empty($cats)) $sub_cat = $cats[0];

	/* Query sibling posts in same sub-category */
	$sibling_args = array(
		'post_type'      => 'post',
		'posts_per_page' => -1,
		'orderby'        => 'title',
		'order'          => 'ASC',
		'post_status'    => 'publish',
	);
	if ($sub_cat) {
		$sibling_args['cat'] = $sub_cat->term_id;
	}
	$siblings = new WP_Query($sibling_args);
	$sis_total = $siblings->found_posts;
?>

<?php
/* Breadcrumb: walk up category hierarchy */
$breadcrumb_ancestors = array();
if (!empty($cats)) {
	$check = $cats[0];
	while ($check && $check->parent) {
		$par = get_term($check->parent, 'category');
		if (!$par) break;
		array_unshift($breadcrumb_ancestors, $par);
		$check = $par;
	}
}
?>

<div class="max-w-screen-2xl w-full mx-auto px-4 sm:px-6 lg:px-8 pt-6">
	<nav class="flex items-center gap-2 text-sm text-slate-500 flex-wrap" aria-label="Breadcrumb">
		<a href="<?php echo esc_url(home_url('/')); ?>" class="hover:text-brand-600 no-underline"><?php esc_html_e('Home', 'pst_hebat'); ?></a>
		<?php foreach ($breadcrumb_ancestors as $bc) : ?>
		<svg class="w-3.5 h-3.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
		<a href="<?php echo esc_url(get_category_link($bc)); ?>" class="hover:text-brand-600 no-underline"><?php echo esc_html($bc->name); ?></a>
		<?php endforeach; ?>
		<svg class="w-3.5 h-3.5 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
		<span class="font-semibold text-slate-700"><?php the_title(); ?></span>
	</nav>
</div>

<!-- Mobile: other documents in this sub-category -->
<?php if ($sis_total > 1) : ?>
<div class="lg:hidden max-w-screen-2xl w-full mx-auto px-4 sm:px-6 pb-4">
	<details class="bg-white border border-slate-200 rounded-xl overflow-hidden">
		<summary class="flex items-center justify-between px-4 py-3 cursor-pointer select-none">
			<span class="text-sm font-semibold text-slate-700"><?php echo $sub_cat ? esc_html($sub_cat->name) . ' ' . esc_html__('Documents', 'pst_hebat') : esc_html__('Other Documents', 'pst_hebat'); ?></span>
			<span class="text-xs text-slate-400"><?php echo $sis_total; ?> <?php esc_html_e('items', 'pst_hebat'); ?></span>
		</summary>
		<div class="border-t border-slate-100 max-h-64 overflow-y-auto">
			<?php
			rewind_posts();
			while ($siblings->have_posts()) : $siblings->the_post();
				$m_id   = get_the_ID();
				$m_url  = get_post_meta($m_id, '_pst_hebat_pdf_url', true);
				$m_active = ($m_id === $current_id);
		?>
			<a href="<?php the_permalink(); ?>" class="flex items-center gap-2.5 px-4 py-2.5 border-b border-slate-50 last:border-0 transition no-underline <?php echo $m_active ? 'bg-brand-50' : 'hover:bg-slate-50'; ?>">
				<svg class="w-4 h-4 shrink-0 <?php echo $m_active ? 'text-brand-500' : 'text-red-400'; ?>" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
				<span class="text-sm truncate flex-1 <?php echo $m_active ? 'text-brand-700 font-semibold' : 'text-slate-700'; ?>"><?php the_title(); ?></span>
				<?php if ($m_active) : ?>
				<span class="text-[10px] text-brand-500 font-medium shrink-0"><?php esc_html_e('current', 'pst_hebat'); ?></span>
				<?php elseif ($m_url) : ?>
				<svg class="w-3.5 h-3.5 text-slate-300 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
				<?php endif; ?>
			</a>
			<?php endwhile; wp_reset_postdata(); ?>
		</div>
	</details>
</div>
<?php endif; ?>

<div class="flex-1 flex max-w-screen-2xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-6 gap-6">

	<!-- ===== LEFT SIDEBAR: Document List ===== -->
	<aside class="hidden lg:block w-64 shrink-0">
		<div class="sticky top-20 space-y-4">
			<div class="flex items-center justify-between">
				<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400">
					<?php echo $sub_cat ? esc_html($sub_cat->name) : esc_html__('Documents', 'pst_hebat'); ?>
				</h3>
				<span id="sidebar-total" class="text-xs text-slate-400"><?php echo $sis_total; ?></span>
			</div>
			<div class="relative">
				<svg class="absolute left-3 top-1/2 -translate-y-1/2 w-3.5 h-3.5 text-slate-400" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.3-4.3"/></svg>
				<input type="text" id="sidebar-search" placeholder="<?php esc_attr_e('Filter documents...', 'pst_hebat'); ?>" class="w-full bg-slate-100 border border-slate-200 rounded-lg pl-9 pr-3 py-2 text-xs text-slate-700 placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-brand-500/40 focus:border-brand-500/60 transition">
			</div>
			<div id="sidebar-doclist" class="space-y-1 max-h-[calc(100vh-220px)] overflow-y-auto pr-1">
				<?php if ($siblings->have_posts()) : while ($siblings->have_posts()) : $siblings->the_post();
					$sid    = get_the_ID();
					$s_url  = get_post_meta($sid, '_pst_hebat_pdf_url', true);
					$active = ($sid === $current_id);
				?>
				<a href="<?php the_permalink(); ?>" class="sidebar-doc flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm transition no-underline block <?php echo $active ? 'bg-brand-50 text-brand-700 font-semibold' : 'text-slate-600 hover:bg-slate-100'; ?>" data-id="<?php echo $sid; ?>" data-title="<?php echo esc_attr(get_the_title()); ?>" data-pdf="<?php echo esc_attr($s_url); ?>">
					<svg class="w-4 h-4 shrink-0 <?php echo $active ? 'text-brand-500' : 'text-red-400'; ?>" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					<span class="truncate"><?php the_title(); ?></span>
				</a>
				<?php endwhile; wp_reset_postdata(); endif; ?>
			</div>
		</div>
	</aside>

	<!-- ===== CENTER: PDF Viewer ===== -->
	<main class="flex-1 min-w-0">
		<!-- Toolbar -->
		<div class="bg-white border border-slate-200 rounded-t-xl px-4 py-3 flex items-center justify-between">
			<div class="flex items-center gap-3 min-w-0">
				<svg class="w-5 h-5 text-red-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
				<span id="viewer-title" class="text-sm font-semibold text-slate-700 truncate"><?php the_title(); ?></span>
			</div>
			<div class="flex items-center gap-2 shrink-0">
				<button id="fullscreen-btn" class="p-1.5 rounded-lg hover:bg-slate-100 text-slate-400 transition" aria-label="<?php esc_attr_e('Fullscreen', 'pst_hebat'); ?>">
					<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M8 3H5a2 2 0 00-2 2v3m18 0V5a2 2 0 00-2-2h-3m0 18h3a2 2 0 002-2v-3M3 16v3a2 2 0 002 2h3"/></svg>
				</button>
			</div>
		</div>
		<!-- PDF Embed -->
		<div class="bg-slate-100 border-x border-b border-slate-200 rounded-b-xl overflow-hidden relative" style="height:calc(100vh - 200px);">
			<?php if ($pdf_url) : ?>
			<embed id="pdf-embed" src="<?php echo esc_url($pdf_url); ?>" type="application/pdf" class="w-full h-full">
			<?php else : ?>
			<div id="no-selection-viewer" class="flex items-center justify-center h-full text-center">
				<div>
					<svg class="w-16 h-16 text-slate-300 mx-auto mb-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					<h3 class="text-base font-semibold text-slate-400"><?php esc_html_e('No PDF attached', 'pst_hebat'); ?></h3>
					<p class="text-sm text-slate-300 mt-1"><?php esc_html_e('Upload a PDF via the post editor to view it here.', 'pst_hebat'); ?></p>
				</div>
			</div>
			<?php endif; ?>
		</div>
		<!-- Metadata bar -->
		<?php if ($pdf_url) : ?>
		<div id="doc-metadata" class="bg-white border border-slate-200 rounded-xl p-3 mt-3 flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-slate-500">
			<span class="flex items-center gap-1">
				<svg class="w-3 h-3 text-slate-400" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
				<?php the_author(); ?>
			</span>
			<span class="w-px h-4 bg-slate-200 hidden sm:block"></span>
			<span><?php echo get_the_date('j M Y'); ?></span>
			<?php if ($pdf_filesize) : ?>
			<span class="w-px h-4 bg-slate-200 hidden sm:block"></span>
			<span><?php echo esc_html($pdf_filesize); ?></span>
			<?php endif; ?>
			<?php if ($sub_cat) : ?>
			<span class="w-px h-4 bg-slate-200 hidden sm:block"></span>
			<span class="font-medium text-brand-600"><?php echo esc_html($sub_cat->name); ?></span>
			<?php endif; ?>
		</div>
		<?php endif; ?>
	</main>

	<!-- ===== RIGHT SIDEBAR: Info ===== -->
	<aside class="hidden xl:block w-72 shrink-0">
		<div class="sticky top-20 space-y-4">

			<!-- Download card -->
			<?php if ($pdf_url) : ?>
			<div class="bg-white border border-slate-200 rounded-xl p-5 shadow-sm">
				<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3"><?php esc_html_e('Document File', 'pst_hebat'); ?></h3>
				<div class="flex items-center gap-3 mb-4">
					<div class="w-10 h-12 rounded-lg bg-gradient-to-b from-red-50 to-red-100 border border-red-200 flex items-center justify-center shrink-0">
						<svg class="w-5 h-5 text-red-500" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					</div>
					<div class="min-w-0">
						<p class="text-sm font-semibold text-slate-800 truncate"><?php the_title(); ?>.pdf</p>
						<p class="text-xs text-slate-400"><?php echo $pdf_filesize ? esc_html($pdf_filesize) : 'PDF'; ?></p>
					</div>
				</div>
				<a href="<?php echo esc_url($pdf_url); ?>" target="_blank" class="flex items-center justify-center gap-2 w-full px-4 py-2.5 bg-brand-600 hover:bg-brand-700 text-white text-sm font-semibold rounded-lg transition no-underline">
					<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"/><polyline points="17 8 12 3 7 8"/><line x1="12" y1="3" x2="12" y2="15"/></svg>
					<?php esc_html_e('Download PDF', 'pst_hebat'); ?>
				</a>
			</div>
			<?php endif; ?>

			<!-- Document details -->
			<div class="bg-white border border-slate-200 rounded-xl p-5 shadow-sm">
				<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3"><?php esc_html_e('Details', 'pst_hebat'); ?></h3>
				<dl class="space-y-2.5 text-sm">
					<div class="flex justify-between">
						<dt class="text-slate-400"><?php esc_html_e('Date', 'pst_hebat'); ?></dt>
						<dd class="font-medium text-slate-700"><?php echo get_the_date('j M Y'); ?></dd>
					</div>
					<div class="flex justify-between">
						<dt class="text-slate-400"><?php esc_html_e('Author', 'pst_hebat'); ?></dt>
						<dd class="font-medium text-slate-700"><?php the_author(); ?></dd>
					</div>
					<?php if ($sub_cat) : ?>
					<div class="flex justify-between">
						<dt class="text-slate-400"><?php esc_html_e('Category', 'pst_hebat'); ?></dt>
						<dd><a href="<?php echo esc_url(get_category_link($sub_cat)); ?>" class="font-medium text-brand-600 hover:text-brand-700 no-underline"><?php echo esc_html($sub_cat->name); ?></a></dd>
					</div>
					<?php endif; ?>
					<?php if ($pdf_filesize) : ?>
					<div class="flex justify-between">
						<dt class="text-slate-400"><?php esc_html_e('Size', 'pst_hebat'); ?></dt>
						<dd class="font-medium text-slate-700"><?php echo esc_html($pdf_filesize); ?></dd>
					</div>
					<?php endif; ?>
				</dl>
			</div>

			<!-- Prev / Next -->
			<?php
			$prev = get_previous_post();
			$next = get_next_post();
			if ($prev || $next) :
			?>
			<div class="space-y-2">
				<?php if ($prev) : ?>
				<a href="<?php echo esc_url(get_permalink($prev)); ?>" class="flex items-center gap-2.5 px-4 py-3 bg-white border border-slate-200 rounded-xl hover:border-brand-300 transition no-underline group">
					<svg class="w-4 h-4 text-slate-400 shrink-0 group-hover:text-brand-500 transition" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
					<div class="min-w-0">
						<div class="text-[10px] text-slate-400 uppercase tracking-wider"><?php esc_html_e('Previous', 'pst_hebat'); ?></div>
						<div class="text-xs font-medium text-slate-700 truncate group-hover:text-brand-600 transition"><?php echo esc_html($prev->post_title); ?></div>
					</div>
				</a>
				<?php endif; ?>
				<?php if ($next) : ?>
				<a href="<?php echo esc_url(get_permalink($next)); ?>" class="flex items-center gap-2.5 px-4 py-3 bg-white border border-slate-200 rounded-xl hover:border-brand-300 transition no-underline group">
					<div class="min-w-0 flex-1 text-right">
						<div class="text-[10px] text-slate-400 uppercase tracking-wider"><?php esc_html_e('Next', 'pst_hebat'); ?></div>
						<div class="text-xs font-medium text-slate-700 truncate group-hover:text-brand-600 transition"><?php echo esc_html($next->post_title); ?></div>
					</div>
					<svg class="w-4 h-4 text-slate-400 shrink-0 group-hover:text-brand-500 transition" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
				</a>
				<?php endif; ?>
			</div>
			<?php endif; ?>

			<!-- Back to category -->
			<?php if ($sub_cat) : ?>
			<a href="<?php echo esc_url(get_category_link($sub_cat)); ?>" class="flex items-center justify-center gap-2 w-full px-4 py-2.5 bg-slate-100 hover:bg-slate-200 text-slate-600 text-xs font-medium rounded-lg transition no-underline">
				<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
				<?php printf(esc_html__('Back to %s', 'pst_hebat'), esc_html($sub_cat->name)); ?>
			</a>
			<?php endif; ?>

		</div>
	</aside>

</div>

<!-- Mobile bottom bar -->
<div class="xl:hidden fixed bottom-0 left-0 right-0 z-30 bg-white border-t border-slate-200 px-4 py-2 flex items-center justify-between text-xs text-slate-500 shadow-[0_-2px_8px_rgba(0,0,0,0.05)]">
	<span class="truncate max-w-[60%]"><?php the_title(); ?></span>
	<?php if ($pdf_url) : ?>
	<a href="<?php echo esc_url($pdf_url); ?>" target="_blank" class="flex items-center gap-1.5 text-brand-600 font-semibold no-underline">
		<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"/><polyline points="17 8 12 3 7 8"/><line x1="12" y1="3" x2="12" y2="15"/></svg>
		<?php esc_html_e('Download', 'pst_hebat'); ?>
	</a>
	<?php endif; ?>
</div>

<!-- Sidebar search JS (filter sidebar list client-side) -->
<script>
(function() {
	'use strict';
	var search = document.getElementById('sidebar-search');
	var doclist = document.getElementById('sidebar-doclist');
	if (!search || !doclist) return;

	var items = doclist.querySelectorAll('.sidebar-doc');
	var total = document.getElementById('sidebar-total');

	search.addEventListener('input', function() {
		var q = search.value.toLowerCase().trim();
		var count = 0;
		items.forEach(function(el) {
			var title = (el.getAttribute('data-title') || el.textContent).toLowerCase();
			var match = !q || title.indexOf(q) !== -1;
			el.style.display = match ? '' : 'none';
			if (match) count++;
		});
		if (total) total.textContent = count;
	});

	// Fullscreen
	var fsBtn = document.getElementById('fullscreen-btn');
	if (fsBtn) {
		fsBtn.addEventListener('click', function() {
			var container = document.querySelector('.bg-slate-100.border-x');
			if (container && container.requestFullscreen) container.requestFullscreen();
		});
	}
})();
</script>

<?php endwhile; ?>

<?php get_footer(); ?>
