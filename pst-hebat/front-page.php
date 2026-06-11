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
	<aside class="hidden lg:block w-56 shrink-0 space-y-6">
		<div>
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
				<?php esc_html_e('Industry', 'pst_hebat'); ?>
			</h3>
			<div class="space-y-1" id="category-list">
				<button data-cat="all" class="active-cat w-full text-left px-3 py-2 rounded-lg text-sm font-medium border border-transparent transition text-slate-700 hover:bg-slate-100">
					<?php esc_html_e('All Documents', 'pst_hebat'); ?>
				</button>
				<button data-cat="mining" class="w-full text-left px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 border border-transparent transition">
					<?php esc_html_e('Mining', 'pst_hebat'); ?>
				</button>
				<button data-cat="oil-gas" class="w-full text-left px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 border border-transparent transition">
					<?php esc_html_e('Oil & Gas', 'pst_hebat'); ?>
				</button>
				<button data-cat="safety" class="w-full text-left px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 border border-transparent transition">
					<?php esc_html_e('Safety & HSE', 'pst_hebat'); ?>
				</button>
				<button data-cat="regulations" class="w-full text-left px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 border border-transparent transition">
					<?php esc_html_e('Regulations', 'pst_hebat'); ?>
				</button>
				<button data-cat="standards" class="w-full text-left px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 border border-transparent transition">
					<?php esc_html_e('Standards', 'pst_hebat'); ?>
				</button>
			</div>
		</div>

		<div>
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
				<?php esc_html_e('Document Type', 'pst_hebat'); ?>
			</h3>
			<div class="space-y-1">
				<label class="flex items-center gap-2 px-3 py-1.5 text-sm text-slate-500 hover:text-slate-700 cursor-pointer">
					<input type="checkbox" checked class="rounded border-slate-300 text-navy-500 focus:ring-navy-500/40 w-3.5 h-3.5"> Technical Report
				</label>
				<label class="flex items-center gap-2 px-3 py-1.5 text-sm text-slate-500 hover:text-slate-700 cursor-pointer">
					<input type="checkbox" checked class="rounded border-slate-300 text-navy-500 focus:ring-navy-500/40 w-3.5 h-3.5"> Standard
				</label>
				<label class="flex items-center gap-2 px-3 py-1.5 text-sm text-slate-500 hover:text-slate-700 cursor-pointer">
					<input type="checkbox" checked class="rounded border-slate-300 text-navy-500 focus:ring-navy-500/40 w-3.5 h-3.5"> Regulation
				</label>
				<label class="flex items-center gap-2 px-3 py-1.5 text-sm text-slate-500 hover:text-slate-700 cursor-pointer">
					<input type="checkbox" checked class="rounded border-slate-300 text-navy-500 focus:ring-navy-500/40 w-3.5 h-3.5"> Guideline
				</label>
				<label class="flex items-center gap-2 px-3 py-1.5 text-sm text-slate-500 hover:text-slate-700 cursor-pointer">
					<input type="checkbox" checked class="rounded border-slate-300 text-navy-500 focus:ring-navy-500/40 w-3.5 h-3.5"> Report / Analysis
				</label>
			</div>
		</div>

		<div>
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
				<?php esc_html_e('Tags', 'pst_hebat'); ?>
			</h3>
			<div class="flex flex-wrap gap-1.5">
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">exploration</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">drilling</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">production</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">refining</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">geology</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">offshore</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">HSE</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">compliance</span>
				<span class="tag px-2 py-1 rounded text-xs bg-slate-100 text-slate-500 cursor-pointer">geotechnical</span>
			</div>
		</div>

		<div class="pt-4 border-t border-slate-200">
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
				<?php esc_html_e('MEA', 'pst_hebat'); ?>
			</h3>
			<div class="space-y-1">
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Administrasi Lingkungan
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Pengelolaan &amp; Pemantauan Lingkungan
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Manajemen Energi
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Evaluasi Pengelolaan Lingkungan
				</a>
			</div>
		</div>

		<div class="pt-4 border-t border-slate-200">
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">
				<?php esc_html_e('SMKP MINERBA', 'pst_hebat'); ?>
			</h3>
			<div class="space-y-1">
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Kebijakan
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Perencanaan
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Organisasi dan personil
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Implementasi
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Evaluasi &amp; FU
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Dokumentasi
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Tinjauan Manajemen
				</a>
			</div>
		</div>
	</aside>

	<!-- ===== MAIN CENTER ===== -->
	<main class="flex-1 min-w-0">
		<div class="flex items-center justify-between mb-4">
			<div class="flex items-center gap-2 text-sm">
				<span id="view-title" class="font-semibold text-slate-800"><?php esc_html_e('All Documents', 'pst_hebat'); ?></span>
				<span id="result-count" class="text-slate-400 text-xs font-medium">(24)</span>
			</div>
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
			<div class="flex flex-wrap items-center gap-5 mb-3 pb-3 border-b border-slate-100">
				<div class="flex items-center gap-2">
					<span class="w-3 h-3 rounded-full" style="background:#10b981;"></span>
					<span class="text-xs font-semibold text-slate-700">PST</span>
					<span class="text-xs font-bold text-slate-900">107</span>
					<span class="text-xs text-emerald-600 font-semibold">&uarr; +7.0%</span>
				</div>
				<div class="flex items-center gap-2">
					<span class="w-3 h-3 rounded-full" style="background:#0B63CE;"></span>
					<span class="text-xs font-semibold text-slate-700">PSI</span>
					<span class="text-xs font-bold text-slate-900">88</span>
					<span class="text-xs text-emerald-600 font-semibold">&uarr; +12.8%</span>
				</div>
				<div class="flex items-center gap-2">
					<span class="w-3 h-3 rounded-full" style="background:#0CA7B4;"></span>
					<span class="text-xs font-semibold text-slate-700">EPI</span>
					<span class="text-xs font-bold text-slate-900">92</span>
					<span class="text-xs text-emerald-600 font-semibold">&uarr; +8.2%</span>
				</div>
				<span class="text-xs text-slate-400 ml-auto"><?php esc_html_e('Jan - Jun 2026', 'pst_hebat'); ?></span>
			</div>
			<div class="relative">
				<svg class="w-full" viewBox="0 0 700 250" preserveAspectRatio="none" style="height:210px;" aria-label="<?php esc_attr_e('SHE Performance Trend Chart', 'pst_hebat'); ?>">
					<defs>
						<linearGradient id="pstGrad" x1="0" y1="0" x2="0" y2="1"><stop offset="0%" stop-color="#10b981" stop-opacity="0.25"/><stop offset="100%" stop-color="#10b981" stop-opacity="0"/></linearGradient>
						<linearGradient id="psiGrad" x1="0" y1="0" x2="0" y2="1"><stop offset="0%" stop-color="#0B63CE" stop-opacity="0.2"/><stop offset="100%" stop-color="#0B63CE" stop-opacity="0"/></linearGradient>
						<linearGradient id="epiGrad" x1="0" y1="0" x2="0" y2="1"><stop offset="0%" stop-color="#0CA7B4" stop-opacity="0.2"/><stop offset="100%" stop-color="#0CA7B4" stop-opacity="0"/></linearGradient>
					</defs>
					<rect x="55" y="5" width="635" height="215" fill="#F5F8FC" rx="4"/>
					<line x1="55" y1="40" x2="690" y2="40" stroke="#e2e8f0" stroke-width="0.5"/>
					<line x1="55" y1="75" x2="690" y2="75" stroke="#e2e8f0" stroke-width="0.5"/>
					<line x1="55" y1="110" x2="690" y2="110" stroke="#e2e8f0" stroke-width="0.5"/>
					<line x1="55" y1="145" x2="690" y2="145" stroke="#e2e8f0" stroke-width="0.5"/>
					<line x1="55" y1="180" x2="690" y2="180" stroke="#e2e8f0" stroke-width="0.5"/>
					<line x1="55" y1="215" x2="690" y2="215" stroke="#cbd5e1" stroke-width="0.5"/>
					<text x="47" y="44" text-anchor="end" fill="#64748b" font-size="9">120</text>
					<text x="47" y="79" text-anchor="end" fill="#64748b" font-size="9">100</text>
					<text x="47" y="114" text-anchor="end" fill="#64748b" font-size="9">80</text>
					<text x="47" y="149" text-anchor="end" fill="#64748b" font-size="9">60</text>
					<text x="47" y="184" text-anchor="end" fill="#64748b" font-size="9">40</text>
					<text x="47" y="219" text-anchor="end" fill="#64748b" font-size="9">20</text>
					<!-- PSI -->
					<path d="M90,88 Q145,86 200,84 Q255,81 310,79 Q365,75 420,72 Q475,70 530,68 Q585,66 640,64 L640,220 L90,220Z" fill="url(#psiGrad)"/>
					<path d="M90,88 Q145,86 200,84 Q255,81 310,79 Q365,75 420,72 Q475,70 530,68 Q585,66 640,64" fill="none" stroke="#0B63CE" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
					<circle cx="90" cy="88" r="5" fill="#0B63CE" stroke="#fff" stroke-width="2"/>
					<circle cx="200" cy="84" r="5" fill="#0B63CE" stroke="#fff" stroke-width="2"/>
					<circle cx="310" cy="79" r="5" fill="#0B63CE" stroke="#fff" stroke-width="2"/>
					<circle cx="420" cy="72" r="5" fill="#0B63CE" stroke="#fff" stroke-width="2"/>
					<circle cx="530" cy="68" r="5" fill="#0B63CE" stroke="#fff" stroke-width="2"/>
					<circle cx="640" cy="64" r="6" fill="#0B63CE" stroke="#fff" stroke-width="2.5"/>
					<text x="90" y="82" text-anchor="middle" fill="#0B63CE" font-size="8" font-weight="700">78</text>
					<text x="200" y="78" text-anchor="middle" fill="#0B63CE" font-size="8" font-weight="700">80</text>
					<text x="310" y="73" text-anchor="middle" fill="#0B63CE" font-size="8" font-weight="700">82</text>
					<text x="420" y="66" text-anchor="middle" fill="#0B63CE" font-size="8" font-weight="700">85</text>
					<text x="530" y="62" text-anchor="middle" fill="#0B63CE" font-size="8" font-weight="700">86</text>
					<text x="640" y="58" text-anchor="middle" fill="#fff" font-size="9" font-weight="800">88</text>
					<!-- EPI -->
					<path d="M90,72 Q145,71 200,70 Q255,68 310,67 Q365,64 420,62 Q475,60 530,58 Q585,56 640,55 L640,220 L90,220Z" fill="url(#epiGrad)"/>
					<path d="M90,72 Q145,71 200,70 Q255,68 310,67 Q365,64 420,62 Q475,60 530,58 Q585,56 640,55" fill="none" stroke="#0CA7B4" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
					<circle cx="90" cy="72" r="5" fill="#0CA7B4" stroke="#fff" stroke-width="2"/>
					<circle cx="200" cy="70" r="5" fill="#0CA7B4" stroke="#fff" stroke-width="2"/>
					<circle cx="310" cy="67" r="5" fill="#0CA7B4" stroke="#fff" stroke-width="2"/>
					<circle cx="420" cy="62" r="5" fill="#0CA7B4" stroke="#fff" stroke-width="2"/>
					<circle cx="530" cy="58" r="5" fill="#0CA7B4" stroke="#fff" stroke-width="2"/>
					<circle cx="640" cy="55" r="6" fill="#0CA7B4" stroke="#fff" stroke-width="2.5"/>
					<text x="90" y="66" text-anchor="middle" fill="#0CA7B4" font-size="8" font-weight="700">85</text>
					<text x="200" y="64" text-anchor="middle" fill="#0CA7B4" font-size="8" font-weight="700">86</text>
					<text x="310" y="61" text-anchor="middle" fill="#0CA7B4" font-size="8" font-weight="700">87</text>
					<text x="420" y="56" text-anchor="middle" fill="#0CA7B4" font-size="8" font-weight="700">89</text>
					<text x="530" y="52" text-anchor="middle" fill="#0CA7B4" font-size="8" font-weight="700">91</text>
					<text x="640" y="49" text-anchor="middle" fill="#fff" font-size="9" font-weight="800">92</text>
					<!-- PST -->
					<path d="M90,48 Q145,47 200,46 Q255,44 310,43 Q365,41 420,39 Q475,38 530,36 Q585,34 640,32 L640,220 L90,220Z" fill="url(#pstGrad)"/>
					<path d="M90,48 Q145,47 200,46 Q255,44 310,43 Q365,41 420,39 Q475,38 530,36 Q585,34 640,32" fill="none" stroke="#10b981" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round"/>
					<circle cx="90" cy="48" r="5.5" fill="#10b981" stroke="#fff" stroke-width="2"/>
					<circle cx="200" cy="46" r="5.5" fill="#10b981" stroke="#fff" stroke-width="2"/>
					<circle cx="310" cy="43" r="5.5" fill="#10b981" stroke="#fff" stroke-width="2"/>
					<circle cx="420" cy="39" r="5.5" fill="#10b981" stroke="#fff" stroke-width="2"/>
					<circle cx="530" cy="36" r="5.5" fill="#10b981" stroke="#fff" stroke-width="2"/>
					<circle cx="640" cy="32" r="7" fill="#10b981" stroke="#fff" stroke-width="2.5"/>
					<text x="90" y="42" text-anchor="middle" fill="#10b981" font-size="8" font-weight="700">100</text>
					<text x="200" y="40" text-anchor="middle" fill="#10b981" font-size="8" font-weight="700">101</text>
					<text x="310" y="37" text-anchor="middle" fill="#10b981" font-size="8" font-weight="700">102</text>
					<text x="420" y="33" text-anchor="middle" fill="#10b981" font-size="8" font-weight="700">104</text>
					<text x="530" y="30" text-anchor="middle" fill="#10b981" font-size="8" font-weight="700">105</text>
					<text x="640" y="24" text-anchor="middle" fill="#fff" font-size="10" font-weight="800">107</text>
					<!-- X-axis -->
					<text x="90" y="238" text-anchor="middle" fill="#475569" font-size="10" font-weight="600">Jan</text>
					<text x="200" y="238" text-anchor="middle" fill="#475569" font-size="10" font-weight="600">Feb</text>
					<text x="310" y="238" text-anchor="middle" fill="#475569" font-size="10" font-weight="600">Mar</text>
					<text x="420" y="238" text-anchor="middle" fill="#475569" font-size="10" font-weight="600">Apr</text>
					<text x="530" y="238" text-anchor="middle" fill="#475569" font-size="10" font-weight="600">May</text>
					<text x="640" y="238" text-anchor="middle" fill="#475569" font-size="10" font-weight="600">Jun</text>
				</svg>
			</div>
		</div>

		<!-- Gallery -->
		<div class="bg-white border border-slate-200 rounded-xl p-4 sm:p-5 shadow-sm mb-5 overflow-hidden">
			<div class="flex items-center justify-between mb-4">
				<h3 class="text-sm font-semibold text-slate-700"><?php esc_html_e('Galeri Kegiatan', 'pst_hebat'); ?></h3>
				<a href="#" class="text-xs text-brand-600 hover:text-brand-700 font-medium no-underline"><?php esc_html_e('Lihat semua', 'pst_hebat'); ?> &rarr;</a>
			</div>
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
	<aside class="hidden xl:block w-72 shrink-0">
		<div class="sticky top-4 bg-white border border-slate-200 rounded-xl p-5 shadow-sm">
			<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-4">
				<?php esc_html_e('Materi & Dokumen', 'pst_hebat'); ?>
			</h3>
			<nav class="space-y-0.5">
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi general induksi
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi LOTO
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi KPLH P1
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi KPLH P2
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi KPLH P3
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi investigasi
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi ZAM
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi HSE Indeks
				</a>
				<hr class="my-2 border-slate-100">
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					Materi LB3
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					IBPR
				</a>
				<a href="#" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-600 hover:text-brand-600 hover:bg-brand-50 transition no-underline">
					<svg class="w-4 h-4 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					IADL
				</a>
			</nav>
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
