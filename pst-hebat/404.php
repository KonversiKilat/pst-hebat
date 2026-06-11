<?php
/**
 * 404 — Not Found
 *
 * @package PST_Hebat
 */

get_header();
?>

<main class="flex-1 flex items-center justify-center py-24">
	<div class="text-center max-w-md mx-auto px-4">
		<div class="text-8xl font-black text-slate-200 mb-4">404</div>
		<h1 class="text-2xl font-bold text-slate-800 mb-2"><?php esc_html_e('Halaman tidak ditemukan', 'pst_hebat'); ?></h1>
		<p class="text-slate-500 mb-8"><?php esc_html_e('Dokumen atau halaman yang Anda cari tidak tersedia. Kembali ke beranda untuk melanjutkan browsing.', 'pst_hebat'); ?></p>
		<a href="<?php echo esc_url(home_url('/')); ?>" class="inline-flex items-center gap-2 px-6 py-3 bg-brand-600 text-white font-semibold rounded-xl hover:bg-brand-700 transition no-underline">
			<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
			<?php esc_html_e('Kembali ke Beranda', 'pst_hebat'); ?>
		</a>
	</div>
</main>

<?php
get_footer();
