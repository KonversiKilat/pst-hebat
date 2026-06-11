<?php
/**
 * Template Part — Hero Section
 * Portal K3, Lingkungan & Operasional Tambang
 *
 * @package PST_Hebat
 */
?>
<section class="relative h-[300px] max-h-[300px] flex items-center pt-4 overflow-hidden text-white">
	<!-- Background image -->
	<div class="absolute inset-0" style="background:url('<?php echo esc_url(get_template_directory_uri()); ?>/assets/images/hero-mining-quarry.jpg') center/cover no-repeat;"></div>
	<!-- Dark overlays -->
	<div class="absolute inset-0 bg-gradient-to-br from-brand-950/98 via-brand-900/95 to-gray-900/95"></div>
	<div class="absolute inset-0 bg-black/40"></div>
	<!-- Glow -->
	<div class="absolute inset-0" style="background:radial-gradient(ellipse 80% 70% at 30% 30%, rgba(11,99,206,0.25), transparent 70%), radial-gradient(ellipse 60% 60% at 70% 80%, rgba(12,167,180,0.15), transparent 70%);"></div>
	<!-- Dot pattern -->
	<div class="absolute inset-0 opacity-[0.03]" style="background-image:radial-gradient(circle at 1px 1px,white 1px,transparent 0);background-size:40px 40px;"></div>

	<div class="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 w-full py-1 flex items-start">
		<div class="flex flex-col gap-1.5 w-full fade-in">
			<!-- Badge -->
			<div class="inline-flex items-center gap-2 px-3 py-1 rounded-full glass text-white/90 text-xs font-medium w-fit">
				<span class="w-1.5 h-1.5 rounded-full bg-amber-400 badge-pulse"></span>
				<?php echo esc_html(get_theme_mod('hero_badge', 'Portal K3 & Document Library')); ?>
			</div>
			<!-- Title -->
			<h1 class="hero-title text-xl sm:text-2xl lg:text-3xl font-black leading-snug text-white tracking-tight">
				<?php echo wp_kses_post(get_theme_mod('hero_title', 'Portal K3, Lingkungan,<br><span class="gradient-text">dan Operasional</span><br>Tambang')); ?>
			</h1>
			<!-- Buttons + Search row -->
			<div class="flex flex-wrap items-center gap-2 pt-1">
				<a href="#browse" class="btn-primary inline-flex items-center gap-1.5 px-4 py-1.5 bg-brand-600 text-white font-semibold rounded-lg shadow-lg shadow-brand-600/25 text-xs no-underline whitespace-nowrap">
					<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><path d="M14 2v6h6"/><path d="M12 18v-6"/><path d="m9 15 3 3 3-3"/></svg>
					<?php echo esc_html(get_theme_mod('hero_cta_primary', 'Browse Documents')); ?>
				</a>

				<div class="hero-search relative flex-1 min-w-[160px] max-w-xs">
					<svg class="absolute left-2.5 top-1/2 -translate-y-1/2 w-3.5 h-3.5 text-white/40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.3-4.3"/></svg>
					<input type="text" id="hero-search-input" placeholder="<?php echo esc_attr(get_theme_mod('hero_search_placeholder', 'Search documents...')); ?>" class="w-full bg-white/10 backdrop-blur-sm border border-white/20 rounded-lg pl-8 pr-3 py-1.5 text-xs text-white placeholder-white/40 focus:outline-none focus:border-brand-500/60 transition">
				</div>
			</div>
		</div>
	</div>
</section>
