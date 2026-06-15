<?php
/**
 * Front Page — PST Hebat Portal
 * Portal K3, Lingkungan & Operasional Tambang
 *
 * @package PST_Hebat
 */

get_header();
?>

<?php get_template_part('template-parts/section-hero'); ?>

<!-- ===== 3-COLUMN DASHBOARD ===== -->
<div class="flex-1 flex max-w-screen-2xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 gap-6">

	<!-- ===== LEFT SIDEBAR ===== -->
	<aside id="sidebar-left" class="hidden lg:block w-56 shrink-0 space-y-6">
		<div>
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
				<?php
				$doc_parent = get_category_by_slug('documents');
				echo $doc_parent ? esc_html($doc_parent->name) : esc_html_e('Industry', 'pst_hebat');
				?>
			</h3>
			<div class="space-y-1" id="category-list">
				<a href="<?php echo esc_url(home_url('/')); ?>" data-cat="all" class="active-cat w-full text-left px-3 py-2 rounded-lg text-sm font-medium border border-transparent transition text-slate-700 hover:bg-slate-100 no-underline block">
					<?php esc_html_e('All Documents', 'pst_hebat'); ?>
				</a>
				<?php
				$industry_cats = pst_hebat_sorted_document_cats(array(get_cat_ID('Health, Safety, and Environment (HSE)')));
				$in_smkp = false;
				foreach ($industry_cats as $cat) :
					if ($cat->slug === 'smkp-minerba') :
						$in_smkp = true;
						// SMKP Minerba group heading
				?>
				<div class="px-3 py-1.5 text-xs font-semibold uppercase tracking-wider text-slate-400 mt-2"><?php echo esc_html($cat->name); ?></div>
				<?php else :
					$has_posts = !$in_smkp ? get_posts(array('cat' => $cat->term_id, 'posts_per_page' => 5, 'orderby' => 'title', 'order' => 'ASC', 'no_found_rows' => true)) : array();
				?>
				<a href="<?php echo esc_url(get_category_link($cat)); ?>" data-cat="<?php echo esc_attr($cat->slug); ?>" class="w-full text-left px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 border border-transparent transition no-underline block <?php echo $in_smkp ? 'pl-7' : ''; ?>">
					<?php echo esc_html($cat->name); ?>
				</a>
				<?php if ($has_posts) : ?>
					<?php foreach ($has_posts as $p) : ?>
				<a href="<?php echo esc_url(get_permalink($p->ID)); ?>" class="w-full text-left px-3 pl-7 py-1.5 rounded-lg text-xs text-slate-400 hover:text-slate-600 hover:bg-slate-50 border border-transparent transition no-underline block">
					<?php echo esc_html($p->post_title); ?>
				</a>
					<?php endforeach; ?>
				<?php endif; ?>
				<?php endif;
				endforeach; ?>
			</div>
		</div>

		<?php if (is_active_sidebar('sidebar-left')) : ?>
			<?php dynamic_sidebar('sidebar-left'); ?>
		<?php endif; ?>

		<div>
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
				<?php esc_html_e('Tags', 'pst_hebat'); ?>
			</h3>
			<div class="flex flex-wrap gap-1.5">
				<?php
				$home_tags = get_tags(array('number' => 20, 'orderby' => 'count', 'order' => 'DESC'));
				if ($home_tags) :
					foreach ($home_tags as $tag) :
				?>
					<a href="<?php echo esc_url(get_tag_link($tag->term_id)); ?>" class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 hover:text-slate-700 hover:bg-slate-200 cursor-pointer no-underline transition">
						<?php echo esc_html($tag->name); ?>
					</a>
				<?php
					endforeach;
				else :
					echo '<span class="text-xs text-slate-400">' . esc_html__('No tags yet', 'pst_hebat') . '</span>';
				endif;
				?>
			</div>
		</div>

	</aside>

	<!-- ===== MAIN CENTER ===== -->
	<main class="flex-1 min-w-0">
		<div class="flex items-center justify-end mb-4">
			<select id="sort-select" class="bg-white border border-slate-200 rounded-lg px-2 py-1.5 text-xs text-slate-500 focus:outline-none focus:ring-1 focus:ring-navy-500/40">
				<option value="newest"><?php esc_html_e('Newest', 'pst_hebat'); ?></option>
				<option value="oldest"><?php esc_html_e('Oldest', 'pst_hebat'); ?></option>
				<option value="az">A-Z</option>
			</select>
		</div>

		<!-- SHE Indices -->
		<div id="she-indices" class="grid grid-cols-3 gap-3 mb-5">
			<div class="bg-white border border-slate-200 rounded-xl p-4 shadow-sm">
				<div class="flex items-center justify-between mb-2">
					<span class="text-xs font-semibold text-slate-400 uppercase tracking-wider"><?php esc_html_e('SHE Indeks PST', 'pst_hebat'); ?></span>
					<span class="w-2 h-2 rounded-full bg-emerald-500"></span>
				</div>
				<div class="text-2xl font-black text-slate-800"><?php echo esc_html(get_theme_mod('she_pst_value', '96.4')); ?></div>
				<div class="flex items-center gap-1 text-xs text-emerald-600 font-semibold mt-1">
					<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" aria-hidden="true"><path d="m5 12 5 5L20 7"/></svg>
					<?php echo esc_html(get_theme_mod('she_pst_trend', '+2.1% dari bulan lalu')); ?>
				</div>
			</div>
			<div class="bg-white border border-slate-200 rounded-xl p-4 shadow-sm">
				<div class="flex items-center justify-between mb-2">
					<span class="text-xs font-semibold text-slate-400 uppercase tracking-wider"><?php esc_html_e('PSI', 'pst_hebat'); ?></span>
					<span class="w-2 h-2 rounded-full bg-blue-500"></span>
				</div>
				<div class="text-2xl font-black text-slate-800"><?php echo esc_html(get_theme_mod('she_psi_value', '87.2')); ?></div>
				<div class="flex items-center gap-1 text-xs text-emerald-600 font-semibold mt-1">
					<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" aria-hidden="true"><path d="m5 12 5 5L20 7"/></svg>
					<?php echo esc_html(get_theme_mod('she_psi_trend', '+5.3% bulan ini')); ?>
				</div>
			</div>
			<div class="bg-white border border-slate-200 rounded-xl p-4 shadow-sm">
				<div class="flex items-center justify-between mb-2">
					<span class="text-xs font-semibold text-slate-400 uppercase tracking-wider"><?php esc_html_e('EPI', 'pst_hebat'); ?></span>
					<span class="w-2 h-2 rounded-full bg-amber-500"></span>
				</div>
				<div class="text-2xl font-black text-slate-800"><?php echo esc_html(get_theme_mod('she_epi_value', '92.8')); ?></div>
				<div class="flex items-center gap-1 text-xs text-emerald-600 font-semibold mt-1">
					<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" aria-hidden="true"><path d="m5 12 5 5L20 7"/></svg>
					<?php echo esc_html(get_theme_mod('she_epi_trend', '+1.8% dari bulan lalu')); ?>
				</div>
			</div>
		</div>

		<!-- SHE Trend Chart -->
		<div class="bg-white border border-slate-200 rounded-xl p-4 sm:p-5 shadow-sm mb-5">
			<div class="flex items-center justify-between mb-3">
				<h3 class="text-sm font-semibold text-slate-700"><?php esc_html_e('SHE Performance Trend', 'pst_hebat'); ?></h3>
			</div>
			<?php $she_data = pst_hebat_get_she_trend_data(); ?>
			<div class="flex flex-wrap items-center gap-5 mb-3 pb-3 border-b border-slate-100">
				<div class="flex items-center gap-2">
					<span class="w-3 h-3 rounded-full" style="background:#10b981;"></span>
					<span class="text-xs font-semibold text-slate-700">PST</span>
					<span class="text-xs font-bold text-slate-900"><?php echo esc_html($she_data['pst'][5]); ?></span>
					<span class="text-xs text-emerald-600 font-semibold">&uarr; <?php echo esc_html($she_data['pst_trend']); ?></span>
				</div>
				<div class="flex items-center gap-2">
					<span class="w-3 h-3 rounded-full" style="background:#0B63CE;"></span>
					<span class="text-xs font-semibold text-slate-700">PSI</span>
					<span class="text-xs font-bold text-slate-900"><?php echo esc_html($she_data['psi'][5]); ?></span>
					<span class="text-xs text-emerald-600 font-semibold">&uarr; <?php echo esc_html($she_data['psi_trend']); ?></span>
				</div>
				<div class="flex items-center gap-2">
					<span class="w-3 h-3 rounded-full" style="background:#0CA7B4;"></span>
					<span class="text-xs font-semibold text-slate-700">EPI</span>
					<span class="text-xs font-bold text-slate-900"><?php echo esc_html($she_data['epi'][5]); ?></span>
					<span class="text-xs text-emerald-600 font-semibold">&uarr; <?php echo esc_html($she_data['epi_trend']); ?></span>
				</div>
				<span class="text-xs text-slate-400 ml-auto"><?php echo esc_html($she_data['months'][0] . ' - ' . $she_data['months'][5] . ' ' . date('Y')); ?></span>
			</div>
			<div class="relative">
				<?php pst_hebat_render_she_trend_svg($she_data); ?>
			</div>
		</div>

		<!-- Gallery -->
		<div class="bg-white border border-slate-200 rounded-xl p-4 sm:p-5 shadow-sm mb-5 overflow-hidden">
			<div class="flex items-center justify-between mb-4">
				<h3 class="text-sm font-semibold text-slate-700"><?php esc_html_e('Galeri Kegiatan', 'pst_hebat'); ?></h3>
				<a href="<?php echo esc_url(get_permalink(get_page_by_path('gallery'))); ?>" class="text-xs text-brand-600 hover:text-brand-700 font-medium no-underline"><?php esc_html_e('Lihat semua', 'pst_hebat'); ?> &rarr;</a>
			</div>
			<?php
			$gallery_images = pst_hebat_get_gallery_images(6);
			if (!empty($gallery_images)) : ?>
			<div class="grid grid-cols-2 sm:grid-cols-3 gap-3">
				<?php foreach ($gallery_images as $img) : ?>
				<div class="relative rounded-xl overflow-hidden group cursor-pointer">
					<img src="<?php echo esc_url($img['url']); ?>" alt="<?php echo esc_attr($img['caption']); ?>" class="w-full h-32 sm:h-36 object-cover group-hover:scale-105 transition-transform duration-300" loading="lazy">
					<div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent opacity-0 group-hover:opacity-100 transition-opacity">
						<span class="absolute bottom-2 left-2 text-[10px] text-white font-medium"><?php echo esc_html($img['caption']); ?></span>
					</div>
				</div>
				<?php endforeach; ?>
			</div>
			<?php else : ?>
			<div class="grid grid-cols-2 sm:grid-cols-3 gap-3">
				<?php for ($i = 1; $i <= 6; $i++) :
					$img = get_template_directory_uri() . '/assets/images/gallery/mining-ops-' . $i . '.jpg';
					$labels = array(1 => 'Operasi Tambang', 'Alat Berat', 'Inspeksi K3', 'Site Tambang', 'Operasi Pengeboran', 'Lanskap Tambang');
				?>
				<div class="relative rounded-xl overflow-hidden group cursor-pointer">
					<img src="<?php echo esc_url($img); ?>" alt="<?php echo esc_attr($labels[$i]); ?>" class="w-full h-32 sm:h-36 object-cover group-hover:scale-105 transition-transform duration-300" loading="lazy">
					<div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent opacity-0 group-hover:opacity-100 transition-opacity">
						<span class="absolute bottom-2 left-2 text-[10px] text-white font-medium"><?php echo esc_html($labels[$i]); ?></span>
					</div>
				</div>
				<?php endfor; ?>
			</div>
			<?php endif; ?>
		</div>

		<!-- Articles -->
		<?php get_template_part('template-parts/section-articles'); ?>

		<!-- Document grid -->
		<div id="doc-grid" class="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-3"></div>

		<!-- PDF Viewer -->
		<div id="pdf-viewer" class="hidden">
			<button id="close-viewer" class="flex items-center gap-1.5 text-sm text-slate-500 hover:text-slate-800 mb-3 transition">
				<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
				<?php esc_html_e('Back to documents', 'pst_hebat'); ?>
			</button>
			<div class="bg-white border border-slate-200 rounded-xl overflow-hidden shadow-sm">
				<div class="flex items-center justify-between px-4 py-2.5 bg-slate-50 border-b border-slate-200">
					<div class="flex items-center gap-2">
						<svg class="w-4 h-4 text-red-500" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/></svg>
						<span id="viewer-filename" class="text-sm font-medium text-slate-700">document.pdf</span>
					</div>
					<button id="download-btn" class="px-3 py-1 rounded-md bg-navy-500 hover:bg-navy-600 text-white text-xs font-medium transition"><?php esc_html_e('Download', 'pst_hebat'); ?></button>
				</div>
				<div class="viewer-container bg-slate-100" style="height:70vh;">
					<embed id="pdf-embed" src="" type="application/pdf" class="w-full h-full">
				</div>
			</div>
			<!-- Detail panel -->
			<div id="detail-content" class="hidden bg-white border border-slate-200 rounded-xl p-5 mt-4 shadow-sm">
				<h3 id="detail-title" class="text-lg font-bold text-slate-800 mb-2"></h3>
				<div class="flex flex-wrap items-center gap-x-4 gap-y-1 text-xs text-slate-500 mb-3">
					<span id="detail-author" class="font-medium text-slate-700"></span>
					<span id="detail-category" class="px-2 py-0.5 rounded bg-navy-50 text-navy-600 font-medium"></span>
					<span id="detail-pages"></span>
					<span id="detail-date"></span>
					<span id="detail-size"></span>
				</div>
				<p id="detail-desc" class="text-sm text-slate-600 leading-relaxed mb-3"></p>
				<div id="detail-tags" class="flex flex-wrap gap-1.5 mb-4"></div>
			</div>
		</div>
	</main>

	<!-- ===== RIGHT SIDEBAR ===== -->
	<aside id="sidebar-right" class="hidden xl:block w-72 shrink-0">
		<div class="sticky top-4 bg-white border border-slate-200 rounded-xl p-5 shadow-sm">
			<?php if (is_active_sidebar('sidebar-right')) : ?>
				<?php dynamic_sidebar('sidebar-right'); ?>
			<?php endif; ?>

			<?php
			$hse_cat = get_category_by_slug('hse');
			if ($hse_cat) :
				$hse_posts = get_posts(array('cat' => $hse_cat->term_id, 'posts_per_page' => -1, 'orderby' => 'title', 'order' => 'ASC', 'no_found_rows' => true));
				if ($hse_posts) :
			?>
			<div class="pt-4 border-t border-slate-200 mt-4">
				<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3"><?php echo esc_html($hse_cat->name); ?></h3>
				<div class="space-y-1">
					<?php foreach ($hse_posts as $p) : ?>
					<a href="<?php echo esc_url(get_permalink($p->ID)); ?>" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
						<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
						<?php echo esc_html($p->post_title); ?>
					</a>
					<?php endforeach; ?>
				</div>
			</div>
			<?php endif; ?>
			<?php endif; ?>
		</div>
	</aside>

	<!-- Mobile cat toggle -->
	<aside id="mobile-cat" class="lg:hidden fixed inset-0 z-40 hidden" aria-hidden="true">
		<div class="absolute inset-0 bg-black/40" onclick="toggleMobileCat()"></div>
		<div class="absolute left-0 top-0 bottom-0 w-64 bg-white p-6 overflow-y-auto shadow-xl">
			<div class="flex justify-between items-center mb-6">
				<h3 class="text-sm font-semibold text-slate-800"><?php esc_html_e('Categories', 'pst_hebat'); ?></h3>
				<button onclick="toggleMobileCat()" class="text-slate-400 p-1 hover:bg-slate-100 rounded-lg transition">
					<svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M18 6L6 18M6 6l12 12"/></svg>
				</button>
			</div>
			<div id="mobile-cat-list" class="space-y-1"></div>
		</div>
	</aside>
</div>

<!-- Mobile bottom bar -->
<div class="lg:hidden fixed bottom-0 left-0 right-0 z-30 bg-white border-t border-slate-200 px-4 py-2 flex items-center justify-between text-xs text-slate-500 shadow-[0_-2px_8px_rgba(0,0,0,0.05)]">
	<button onclick="toggleMobileCat()" class="flex items-center gap-1.5 py-1.5 hover:text-brand-600 transition-colors">
		<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/></svg>
		<?php esc_html_e('Categories', 'pst_hebat'); ?>
	</button>
	<span id="mobile-total"><?php esc_html_e('24 documents', 'pst_hebat'); ?></span>
</div>

<?php
get_footer();
