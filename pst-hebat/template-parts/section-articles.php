<?php
/**
 * Template Part — Articles Section
 *
 * @package PST_Hebat
 */
?>
<div class="bg-white border border-slate-200 rounded-xl p-4 sm:p-5 shadow-sm mb-5">
	<div class="flex items-center justify-between mb-4">
		<h3 class="text-sm font-semibold text-slate-700"><?php esc_html_e('Artikel & Informasi', 'pst_hebat'); ?></h3>
		<a href="#" class="text-xs text-brand-600 hover:text-brand-700 font-medium no-underline"><?php esc_html_e('Lihat semua', 'pst_hebat'); ?> &rarr;</a>
	</div>
	<div class="space-y-4" id="articles-list">
		<article class="group cursor-pointer">
			<div class="flex gap-3 sm:gap-4">
				<div class="w-20 h-20 sm:w-24 sm:h-20 rounded-lg overflow-hidden shrink-0 bg-slate-100">
					<img src="<?php echo esc_url(get_template_directory_uri()); ?>/assets/images/gallery/mining-ops-1.jpg" alt="SMKP Minerba" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" loading="lazy">
				</div>
				<div class="min-w-0 flex-1">
					<h4 class="text-sm font-semibold text-slate-800 group-hover:text-brand-600 transition-colors leading-snug"><?php esc_html_e('Pentingnya Penerapan SMKP Minerba di Sektor Pertambangan', 'pst_hebat'); ?></h4>
					<p class="text-xs text-slate-500 mt-1 leading-relaxed line-clamp-2"><?php esc_html_e('Sistem Manajemen Keselamatan Pertambangan (SMKP) Minerba menjadi tulang punggung budaya K3 di perusahaan tambang. Artikel ini mengulas 7 elemen utama SMKP.', 'pst_hebat'); ?></p>
					<div class="flex items-center gap-2 mt-2 text-[10px] text-slate-400">
						<span class="text-brand-600 font-medium"><?php esc_html_e('5 menit baca', 'pst_hebat'); ?></span>
						<span>&middot;</span>
						<span>12 Jun 2026</span>
					</div>
				</div>
			</div>
		</article>
		<article class="group cursor-pointer">
			<div class="flex gap-3 sm:gap-4">
				<div class="w-20 h-20 sm:w-24 sm:h-20 rounded-lg overflow-hidden shrink-0 bg-slate-100">
					<img src="<?php echo esc_url(get_template_directory_uri()); ?>/assets/images/gallery/mining-ops-2.jpg" alt="SHE Indeks" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" loading="lazy">
				</div>
				<div class="min-w-0 flex-1">
					<h4 class="text-sm font-semibold text-slate-800 group-hover:text-brand-600 transition-colors leading-snug"><?php esc_html_e('Indikator Kinerja SHE: PST, PSI, dan EPI dalam Operasional Tambang', 'pst_hebat'); ?></h4>
					<p class="text-xs text-slate-500 mt-1 leading-relaxed line-clamp-2"><?php esc_html_e('SHE Indeks PST, PSI, dan EPI adalah indikator utama dalam mengukur efektivitas sistem K3, lingkungan, dan energi di operasional tambang.', 'pst_hebat'); ?></p>
					<div class="flex items-center gap-2 mt-2 text-[10px] text-slate-400">
						<span class="text-brand-600 font-medium"><?php esc_html_e('4 menit baca', 'pst_hebat'); ?></span>
						<span>&middot;</span>
						<span>8 Jun 2026</span>
					</div>
				</div>
			</div>
		</article>
		<article class="group cursor-pointer">
			<div class="flex gap-3 sm:gap-4">
				<div class="w-20 h-20 sm:w-24 sm:h-20 rounded-lg overflow-hidden shrink-0 bg-slate-100">
					<img src="<?php echo esc_url(get_template_directory_uri()); ?>/assets/images/gallery/mining-ops-5.jpg" alt="Investigasi" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" loading="lazy">
				</div>
				<div class="min-w-0 flex-1">
					<h4 class="text-sm font-semibold text-slate-800 group-hover:text-brand-600 transition-colors leading-snug"><?php esc_html_e('Langkah-Langkah Investigasi Kecelakaan Tambang yang Efektif', 'pst_hebat'); ?></h4>
					<p class="text-xs text-slate-500 mt-1 leading-relaxed line-clamp-2"><?php esc_html_e('Investigasi kecelakaan yang tepat dan menyeluruh adalah kunci pencegahan insiden serupa. Pelajari metodologi investigasi sesuai standar K3 tambang.', 'pst_hebat'); ?></p>
					<div class="flex items-center gap-2 mt-2 text-[10px] text-slate-400">
						<span class="text-brand-600 font-medium"><?php esc_html_e('6 menit baca', 'pst_hebat'); ?></span>
						<span>&middot;</span>
						<span>1 Jun 2026</span>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- Pagination -->
	<div class="flex items-center justify-between mt-5 pt-4 border-t border-slate-100">
		<span class="text-xs text-slate-400"><?php esc_html_e('Menampilkan 1-3 dari 12 artikel', 'pst_hebat'); ?></span>
		<div class="flex items-center gap-1">
			<button class="w-7 h-7 rounded-md bg-brand-50 text-brand-600 text-xs font-semibold flex items-center justify-center">1</button>
			<button class="w-7 h-7 rounded-md text-slate-500 hover:bg-slate-100 text-xs font-medium flex items-center justify-center">2</button>
			<button class="w-7 h-7 rounded-md text-slate-500 hover:bg-slate-100 text-xs font-medium flex items-center justify-center">3</button>
			<button class="w-7 h-7 rounded-md text-slate-500 hover:bg-slate-100 text-xs font-medium flex items-center justify-center">4</button>
			<span class="text-slate-300 text-xs px-1">...</span>
			<button class="w-7 h-7 rounded-md text-slate-500 hover:bg-slate-100 text-xs font-medium flex items-center justify-center">&rarr;</button>
		</div>
	</div>
</div>
