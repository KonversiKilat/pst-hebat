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
			<div class="grid sm:grid-cols-2 gap-8">
				<!-- Brand -->
				<div class="lg:col-span-1">
					<div class="flex items-center gap-4 mb-3">
						<img src="<?php echo get_template_directory_uri(); ?>/assets/logo-pst.png" alt="PST Hebat" class="h-10 w-auto">
						<img src="<?php echo get_template_directory_uri(); ?>/assets/pst-2.png" alt="PST" class="h-10 w-auto">
					</div>
					<p class="text-sm text-slate-400 leading-relaxed max-w-xs">
						<?php echo esc_html(get_theme_mod('footer_description', 'Mining document library — technical reports, standards, regulations, and safety guidelines for the mining and energy industry.')); ?>
					</p>

				</div>

				<!-- Categories (child of Documents) -->
				<div>
					<h4 class="text-xs font-semibold uppercase tracking-wider text-white mb-3">
						<?php esc_html_e('Categories', 'pst_hebat'); ?>
					</h4>
					<div class="flex flex-wrap gap-x-5 gap-y-1.5 text-sm">
						<?php
						$doc_cat = get_category_by_slug('documents');
						if ($doc_cat) :
							$subcats = get_categories(array('parent' => $doc_cat->term_id, 'hide_empty' => false));
							foreach ($subcats as $cat) :
						?>
						<a href="<?php echo esc_url(get_category_link($cat)); ?>" class="text-slate-400 hover:text-white transition no-underline"><?php echo esc_html($cat->name); ?></a>
						<?php endforeach; endif; ?>
					</div>
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
					<a href="<?php echo esc_url(get_permalink(get_page_by_path('terms'))); ?>" class="hover:text-white transition no-underline">Terms</a>
					<a href="<?php echo esc_url(get_permalink(get_page_by_path('privacy-policy'))); ?>" class="hover:text-white transition no-underline">Privacy</a>
					<a href="<?php echo esc_url(get_permalink(get_page_by_path('contact'))); ?>" class="hover:text-white transition no-underline">Contact</a>
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
