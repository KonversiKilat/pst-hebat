<?php
/**
 * Footer — PST Hebat
 *
 * @package PST_Hebat
 */
?>

	<!-- ===== FOOTER ===== -->
	<footer class="bg-slate-900 text-slate-300 border-t border-slate-800">
		<div class="max-w-screen-2xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
			<div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-8">
				<!-- Brand -->
				<div class="lg:col-span-1">
					<div class="flex items-center gap-2.5 mb-3">
						<svg class="w-8 h-8" viewBox="0 0 58 52" fill="none" aria-hidden="true">
							<path d="M26.7 4.5L3 47.5h18.2L35.5 20.9 26.7 4.5z" fill="#0067B1"/>
							<path d="M39.2 9.6L23.8 47.5h18.7L55 47.2 39.2 9.6z" fill="#003E7E"/>
							<path d="M36.2 30.5l-7.8 17h13.9l10.8-.2-16.9-16.8z" fill="#10A4C4"/>
							<path d="M25.6 30.8H10.9l-9 16.7h18.7l5-16.7z" fill="#0B79BD"/>
						</svg>
						<a href="<?php echo esc_url(home_url('/')); ?>" class="font-bold text-base text-white no-underline hover:text-amber-400 transition-colors">
							<?php echo esc_html(get_theme_mod('pst_initials', 'PST')); ?><span class="text-amber-400"> <?php echo esc_html(get_theme_mod('pst_tagline', 'Hebat')); ?></span>
						</a>
						<span class="text-slate-500 text-sm ml-1">/ <?php echo esc_html(get_theme_mod('mhu_initials', 'MHU')); ?></span>
					</div>
					<p class="text-sm text-slate-400 leading-relaxed max-w-xs">
						<?php echo esc_html(get_theme_mod('footer_description', 'Mining document library — technical reports, standards, regulations, and safety guidelines for the mining and energy industry.')); ?>
					</p>
					<div class="flex items-center gap-4 mt-4">
						<span class="flex items-center gap-1.5 text-xs text-slate-500">
							<span class="w-2 h-2 rounded-full bg-emerald-500"></span>
							<?php esc_html_e('Updated weekly', 'pst_hebat'); ?>
						</span>
						<span class="flex items-center gap-1.5 text-xs text-slate-500">
							<span class="w-2 h-2 rounded-full bg-navy-500"></span>
							<span id="footer-doc-count"><?php esc_html_e('24 documents', 'pst_hebat'); ?></span>
						</span>
					</div>
				</div>

				<!-- Categories -->
				<div>
					<h4 class="text-xs font-semibold uppercase tracking-wider text-white mb-3">
						<?php esc_html_e('Categories', 'pst_hebat'); ?>
					</h4>
					<ul class="space-y-2 text-sm">
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Mining</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Oil &amp; Gas</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Safety &amp; HSE</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Regulations</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Standards</a></li>
					</ul>
				</div>

				<!-- Document Types -->
				<div>
					<h4 class="text-xs font-semibold uppercase tracking-wider text-white mb-3">
						<?php esc_html_e('Document Types', 'pst_hebat'); ?>
					</h4>
					<?php if (is_active_sidebar('footer-1')) : ?>
						<?php dynamic_sidebar('footer-1'); ?>
					<?php else : ?>
					<ul class="space-y-2 text-sm">
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Technical Reports</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Standards &amp; Codes</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Regulations &amp; Laws</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Safety Guidelines</a></li>
						<li><a href="#" class="text-slate-400 hover:text-white transition no-underline">Industry Handbooks</a></li>
					</ul>
					<?php endif; ?>
				</div>

				<!-- Stats & Info -->
				<div>
					<h4 class="text-xs font-semibold uppercase tracking-wider text-white mb-3">
						<?php esc_html_e('Library Stats', 'pst_hebat'); ?>
					</h4>
					<?php if (is_active_sidebar('footer-2')) : ?>
						<?php dynamic_sidebar('footer-2'); ?>
					<?php else : ?>
					<div class="space-y-3">
						<div class="flex items-center justify-between text-sm">
							<span class="text-slate-400"><?php esc_html_e('Total Documents', 'pst_hebat'); ?></span>
							<span class="font-semibold text-white" id="stats-total">24</span>
						</div>
						<div class="flex items-center justify-between text-sm">
							<span class="text-slate-400"><?php esc_html_e('Categories', 'pst_hebat'); ?></span>
							<span class="font-semibold text-white">5</span>
						</div>
						<div class="flex items-center justify-between text-sm">
							<span class="text-slate-400"><?php esc_html_e('Last Updated', 'pst_hebat'); ?></span>
							<span class="font-semibold text-white">Jun 2026</span>
						</div>
						<div class="flex items-center justify-between text-sm">
							<span class="text-slate-400"><?php esc_html_e('Format', 'pst_hebat'); ?></span>
							<span class="font-semibold text-white">PDF</span>
						</div>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</div>

		<!-- Bottom bar -->
		<div class="border-t border-slate-800">
			<div class="max-w-screen-2xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex flex-col sm:flex-row justify-between items-center gap-2">
				<p class="text-xs text-slate-500">
					&copy; <?php echo esc_html(date('Y')); ?> <?php bloginfo('name'); ?>. All rights reserved.
				</p>
				<?php if (has_nav_menu('footer')) : ?>
					<?php
					wp_nav_menu(array(
						'theme_location' => 'footer',
						'menu_class'     => 'flex items-center gap-4 text-xs text-slate-500',
						'container'      => false,
						'fallback_cb'    => false,
						'depth'          => 1,
						'items_wrap'     => '%3$s',
					));
					?>
				<?php else : ?>
				<div class="flex items-center gap-4 text-xs text-slate-500">
					<a href="#" class="hover:text-white transition no-underline">Terms</a>
					<a href="#" class="hover:text-white transition no-underline">Privacy</a>
					<a href="#" class="hover:text-white transition no-underline">Contact</a>
				</div>
				<?php endif; ?>
			</div>
		</div>
	</footer>

	<?php wp_footer(); ?>

	<!-- Mobile menu toggle -->
	<script>
	document.addEventListener('DOMContentLoaded', function() {
		var btn = document.getElementById('menuBtn');
		var menu = document.getElementById('mobileMenu');
		var overlay = document.getElementById('menuOverlay');
		if (btn && menu) {
			btn.addEventListener('click', function() { menu.classList.toggle('hidden'); });
			if (overlay) overlay.addEventListener('click', function() { menu.classList.add('hidden'); });
		}
	});
	</script>
</body>
</html>
