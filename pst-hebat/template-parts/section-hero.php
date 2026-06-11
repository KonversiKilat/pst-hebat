<?php
/**
 * Template Part — Hero Section
 * Portal K3, Lingkungan & Operasional Tambang
 *
 * @package PST_Hebat
 */
?>
<section class="relative min-h-[20vh] flex items-center pt-12 overflow-hidden text-white">
	<!-- Background image -->
	<div class="absolute inset-0" style="background:url('<?php echo esc_url(get_template_directory_uri()); ?>/assets/images/hero-mining-quarry.jpg') center/cover no-repeat;"></div>
	<!-- Dark overlays -->
	<div class="absolute inset-0 bg-gradient-to-br from-brand-950/98 via-brand-900/95 to-gray-900/95"></div>
	<div class="absolute inset-0 bg-black/40"></div>
	<!-- Glow -->
	<div class="absolute inset-0" style="background:radial-gradient(ellipse 80% 70% at 30% 30%, rgba(11,99,206,0.25), transparent 70%), radial-gradient(ellipse 60% 60% at 70% 80%, rgba(12,167,180,0.15), transparent 70%);"></div>
	<!-- Dot pattern -->
	<div class="absolute inset-0 opacity-[0.03]" style="background-image:radial-gradient(circle at 1px 1px,white 1px,transparent 0);background-size:40px 40px;"></div>
	<!-- Decorative blurs -->
	<div class="absolute top-20 right-10 w-72 h-72 rounded-full bg-brand-500/10 blur-3xl"></div>
	<div class="absolute bottom-20 left-10 w-96 h-96 rounded-full bg-cyan-500/10 blur-3xl"></div>

	<div class="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 w-full py-20 min-h-[75vh] flex items-center">
		<div class="grid lg:grid-cols-2 gap-12 items-center">
			<!-- Left: Text -->
			<div class="space-y-7 fade-in">
				<div class="inline-flex items-center gap-2 px-4 py-1.5 rounded-full glass text-white/90 text-sm font-medium">
					<span class="w-2 h-2 rounded-full bg-amber-400 badge-pulse"></span>
					<?php echo esc_html(get_theme_mod('hero_badge', 'Portal K3 & Document Library')); ?>
				</div>
				<h1 class="hero-title text-4xl sm:text-5xl lg:text-6xl font-black leading-[1.08] text-white tracking-tight">
					<?php echo wp_kses_post(get_theme_mod('hero_title', 'Portal K3, Lingkungan,<br><span class="gradient-text">dan Operasional</span><br>Tambang')); ?>
				</h1>
				<p class="text-lg sm:text-xl text-white/70 leading-relaxed max-w-xl font-medium">
					<?php echo esc_html(get_theme_mod('hero_subtitle', 'Mewujudkan pertambangan yang selamat, patuh dan berkelanjutan.')); ?>
				</p>
				<div class="flex flex-wrap gap-3 pt-1">
					<a href="#browse" class="btn-primary inline-flex items-center gap-2.5 px-6 py-3.5 bg-brand-600 text-white font-bold rounded-xl shadow-lg shadow-brand-600/25 no-underline">
						<svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><path d="M14 2v6h6"/><path d="M12 18v-6"/><path d="m9 15 3 3 3-3"/></svg>
						<?php echo esc_html(get_theme_mod('hero_cta_primary', 'Browse Documents')); ?>
						<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="m9 18 6-6-6-6"/></svg>
					</a>
					<a href="#search" class="btn-ghost inline-flex items-center gap-2.5 px-6 py-3.5 glass text-white font-semibold rounded-xl no-underline">
						<svg class="w-5 h-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.3-4.3"/></svg>
						<?php echo esc_html(get_theme_mod('hero_cta_secondary', 'Search Library')); ?>
					</a>
				</div>
				<!-- Search bar -->
				<div class="hero-search max-w-lg pt-2">
					<div class="relative">
						<svg class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-white/40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.3-4.3"/></svg>
						<input type="text" id="hero-search-input" placeholder="<?php echo esc_attr(get_theme_mod('hero_search_placeholder', 'Search 24 documents — technical reports, standards, regulations...')); ?>" class="w-full bg-white/10 backdrop-blur-sm border border-white/20 rounded-xl pl-12 pr-4 py-3.5 text-base text-white placeholder-white/40 focus:outline-none focus:border-brand-500/60 transition">
					</div>
				</div>
			</div>
			<!-- Right: empty for layout balance -->
		</div>
	</div>
</section>
