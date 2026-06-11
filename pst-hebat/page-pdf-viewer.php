<?php
/**
 * Template Name: PDF Document Viewer
 * Standalone PDF viewer page with sidebar document list
 *
 * @package PST_Hebat
 */

get_header();
?>

<div class="flex-1 flex max-w-screen-2xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-6 gap-6">

	<!-- Left Sidebar: Document List -->
	<aside class="hidden lg:block w-64 shrink-0">
		<div class="sticky top-20 space-y-4">
			<div class="flex items-center justify-between">
				<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400">
					<?php esc_html_e('Documents', 'pst_hebat'); ?>
				</h3>
				<span id="sidebar-total" class="text-xs text-slate-400">24</span>
			</div>
			<div class="relative">
				<svg class="absolute left-3 top-1/2 -translate-y-1/2 w-3.5 h-3.5 text-slate-400" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" aria-hidden="true"><circle cx="11" cy="11" r="8"/><path d="m21 21-4.3-4.3"/></svg>
				<input type="text" id="sidebar-search" placeholder="<?php esc_attr_e('Filter documents...', 'pst_hebat'); ?>" class="w-full bg-slate-100 border border-slate-200 rounded-lg pl-9 pr-3 py-2 text-xs text-slate-700 placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-brand-500/40 focus:border-brand-500/60 transition">
			</div>
			<div id="sidebar-doclist" class="space-y-1 max-h-[calc(100vh-220px)] overflow-y-auto pr-1"></div>
		</div>
	</aside>

	<!-- Main: PDF Viewer -->
	<main class="flex-1 min-w-0">
		<div class="bg-white border border-slate-200 rounded-t-xl px-4 py-3 flex items-center justify-between">
			<div class="flex items-center gap-3 min-w-0">
				<svg class="w-5 h-5 text-red-500 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
				<span id="viewer-title" class="text-sm font-semibold text-slate-700 truncate"><?php esc_html_e('Select a document to view', 'pst_hebat'); ?></span>
			</div>
			<div class="flex items-center gap-2 shrink-0">
				<button id="pv-download-btn" class="px-3 py-1.5 rounded-lg bg-brand-600 hover:bg-brand-700 text-white text-xs font-medium transition flex items-center gap-1.5">
					<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M21 15v4a2 2 0 01-2 2H5a2 2 0 01-2-2v-4"/><polyline points="17 8 12 3 7 8"/><line x1="12" y1="3" x2="12" y2="15"/></svg>
					<?php esc_html_e('Download', 'pst_hebat'); ?>
				</button>
				<button id="fullscreen-btn" class="p-1.5 rounded-lg hover:bg-slate-100 text-slate-400 transition" aria-label="<?php esc_attr_e('Fullscreen', 'pst_hebat'); ?>">
					<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M8 3H5a2 2 0 00-2 2v3m18 0V5a2 2 0 00-2-2h-3m0 18h3a2 2 0 002-2v-3M3 16v3a2 2 0 002 2h3"/></svg>
				</button>
			</div>
		</div>
		<div class="bg-slate-100 border-x border-b border-slate-200 rounded-b-xl overflow-hidden" style="height:calc(100vh - 200px);">
			<embed id="pv-pdf-embed" src="" type="application/pdf" class="w-full h-full" style="display:none;">
			<div id="no-selection-viewer" class="flex items-center justify-center h-full text-center">
				<div>
					<svg class="w-16 h-16 text-slate-300 mx-auto mb-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					<h3 class="text-base font-semibold text-slate-400"><?php esc_html_e('Select a document', 'pst_hebat'); ?></h3>
					<p class="text-sm text-slate-300 mt-1"><?php esc_html_e('Choose from the list on the left to view PDF', 'pst_hebat'); ?></p>
				</div>
			</div>
		</div>
		<!-- Metadata bar -->
		<div id="doc-metadata" class="hidden bg-white border border-slate-200 rounded-xl p-3 mt-3 flex items-center gap-4 text-xs text-slate-500">
			<span id="meta-author" class="truncate"></span>
			<span class="w-px h-4 bg-slate-200"></span>
			<span id="meta-pages"></span>
			<span class="w-px h-4 bg-slate-200"></span>
			<span id="meta-date"></span>
			<span class="w-px h-4 bg-slate-200"></span>
			<span id="meta-size"></span>
			<span class="w-px h-4 bg-slate-200"></span>
			<span id="meta-category" class="font-medium text-brand-600"></span>
		</div>
	</main>
</div>

<script>
(function() {
	'use strict';

	var docs = <?php
		// Inline the documents data for the PDF viewer page
		echo json_encode(array(
			array('id'=>1,'title'=>'Coal Mining Safety Guidelines 2025','author'=>'Ministry of Energy & Mineral Resources','pages'=>48,'date'=>'2025-03-15','size'=>'2.4 MB','cat'=>'safety','pdf'=>'assets/sample.pdf'),
			array('id'=>2,'title'=>'Offshore Drilling Technical Standards','author'=>'IADC','pages'=>124,'date'=>'2024-11-20','size'=>'5.8 MB','cat'=>'oil-gas','pdf'=>'assets/sample.pdf'),
			array('id'=>3,'title'=>'Indonesia Mining Law No.3/2020','author'=>'Government of Indonesia','pages'=>256,'date'=>'2024-06-10','size'=>'3.2 MB','cat'=>'regulations','pdf'=>'assets/sample.pdf'),
			array('id'=>4,'title'=>'Geological Survey Report: Kalimantan Basin','author'=>'Badan Geologi','pages'=>186,'date'=>'2024-09-05','size'=>'12.1 MB','cat'=>'mining','pdf'=>'assets/sample.pdf'),
			array('id'=>5,'title'=>'Oil Refinery Process Safety Management','author'=>'API','pages'=>92,'date'=>'2025-01-28','size'=>'4.6 MB','cat'=>'safety','pdf'=>'assets/sample.pdf'),
			array('id'=>6,'title'=>'SNI Geotechnical Investigation','author'=>'BSN Indonesia','pages'=>74,'date'=>'2024-04-01','size'=>'1.8 MB','cat'=>'standards','pdf'=>'assets/sample.pdf'),
			array('id'=>7,'title'=>'Production Sharing Contract Guide','author'=>'SKK Migas','pages'=>156,'date'=>'2024-07-15','size'=>'3.9 MB','cat'=>'oil-gas','pdf'=>'assets/sample.pdf'),
			array('id'=>8,'title'=>'Mining Reclamation & Closure Plan','author'=>'Ministry of Energy','pages'=>68,'date'=>'2024-12-10','size'=>'2.1 MB','cat'=>'regulations','pdf'=>'assets/sample.pdf'),
			array('id'=>9,'title'=>'Seismic Data Processing Handbook','author'=>'SEG','pages'=>210,'date'=>'2025-02-01','size'=>'8.2 MB','cat'=>'oil-gas','pdf'=>'assets/sample.pdf'),
			array('id'=>10,'title'=>'Mining Equipment Maintenance','author'=>'ISO/TC 82','pages'=>88,'date'=>'2024-08-22','size'=>'3.4 MB','cat'=>'standards','pdf'=>'assets/sample.pdf'),
			array('id'=>11,'title'=>'H2S Safety in Oil & Gas','author'=>'IOGP','pages'=>56,'date'=>'2025-01-10','size'=>'1.6 MB','cat'=>'safety','pdf'=>'assets/sample.pdf'),
			array('id'=>12,'title'=>'Coal Bed Methane Exploration','author'=>'PT. Geo Energi','pages'=>134,'date'=>'2024-10-05','size'=>'6.7 MB','cat'=>'mining','pdf'=>'assets/sample.pdf'),
			array('id'=>13,'title'=>'Fire Protection Offshore Platforms','author'=>'NFPA / API','pages'=>42,'date'=>'2024-05-18','size'=>'1.2 MB','cat'=>'safety','pdf'=>'assets/sample.pdf'),
			array('id'=>14,'title'=>'Mineral Resource Estimation Guide','author'=>'JORC Committee','pages'=>98,'date'=>'2024-11-30','size'=>'4.3 MB','cat'=>'mining','pdf'=>'assets/sample.pdf'),
			array('id'=>15,'title'=>'LNG Plant Design Standards','author'=>'Gas Technology Institute','pages'=>178,'date'=>'2025-03-01','size'=>'7.5 MB','cat'=>'oil-gas','pdf'=>'assets/sample.pdf'),
			array('id'=>16,'title'=>'EIA for Mining Operations','author'=>'KLHK RI','pages'=>312,'date'=>'2024-03-20','size'=>'9.8 MB','cat'=>'regulations','pdf'=>'assets/sample.pdf'),
			array('id'=>17,'title'=>'Drilling Fluid Engineering','author'=>'Baker Hughes / SPE','pages'=>244,'date'=>'2024-09-12','size'=>'11.2 MB','cat'=>'oil-gas','pdf'=>'assets/sample.pdf'),
			array('id'=>18,'title'=>'ISO 14001 for Mining','author'=>'ISO / BSN','pages'=>36,'date'=>'2024-06-01','size'=>'0.9 MB','cat'=>'standards','pdf'=>'assets/sample.pdf'),
			array('id'=>19,'title'=>'Well Intervention Guidelines','author'=>'IADC / API','pages'=>86,'date'=>'2025-02-15','size'=>'3.1 MB','cat'=>'oil-gas','pdf'=>'assets/sample.pdf'),
			array('id'=>20,'title'=>'Mining Explosives Safety','author'=>'Ministry of Energy','pages'=>64,'date'=>'2024-12-01','size'=>'2.8 MB','cat'=>'safety','pdf'=>'assets/sample.pdf'),
			array('id'=>21,'title'=>'P&ID Standards','author'=>'ISO / ANSI / ISA','pages'=>52,'date'=>'2024-07-08','size'=>'1.5 MB','cat'=>'standards','pdf'=>'assets/sample.pdf'),
			array('id'=>22,'title'=>'Nickel Mining Technology','author'=>'PT. Vale Indonesia','pages'=>98,'date'=>'2025-01-20','size'=>'4.1 MB','cat'=>'mining','pdf'=>'assets/sample.pdf'),
			array('id'=>23,'title'=>'Flare & Vent Systems Design','author'=>'API Standard 521','pages'=>76,'date'=>'2024-10-30','size'=>'2.2 MB','cat'=>'oil-gas','pdf'=>'assets/sample.pdf'),
			array('id'=>24,'title'=>'Ground Vibration & Airblast','author'=>'ISEE','pages'=>44,'date'=>'2024-04-15','size'=>'1.3 MB','cat'=>'mining','pdf'=>'assets/sample.pdf')
		));
	?>;

	var activeDoc = null;
	var themeUri = '<?php echo esc_js(get_template_directory_uri()); ?>';

	function renderSidebar(list) {
		var el = document.getElementById('sidebar-doclist');
		document.getElementById('sidebar-total').textContent = list.length;
		el.innerHTML = list.map(function(d) {
			return '<div class="sidebar-doc flex items-center gap-2.5 px-3 py-2 rounded-lg cursor-pointer text-sm transition ' +
				(activeDoc && activeDoc.id === d.id ? 'bg-brand-50 text-brand-700 font-semibold' : 'text-slate-600 hover:bg-slate-100') +
				'" data-id="' + d.id + '">' +
				'<svg class="w-4 h-4 text-red-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>' +
				'<span class="truncate">' + d.title + '</span></div>';
		}).join('');
		el.querySelectorAll('.sidebar-doc').forEach(function(el) {
			el.addEventListener('click', function() {
				var doc = docs.find(function(d) { return d.id === parseInt(el.dataset.id); });
				if (doc) openDoc(doc);
			});
		});
	}

	function openDoc(doc) {
		activeDoc = doc;
		document.getElementById('no-selection-viewer').style.display = 'none';
		var embed = document.getElementById('pv-pdf-embed');
		embed.style.display = 'block';
		embed.src = (doc.pdf.indexOf('http') === 0 ? '' : themeUri + '/') + doc.pdf;
		document.getElementById('viewer-title').textContent = doc.title;
		var meta = document.getElementById('doc-metadata');
		meta.classList.remove('hidden');
		document.getElementById('meta-author').textContent = doc.author;
		document.getElementById('meta-pages').textContent = doc.pages + ' pages';
		document.getElementById('meta-date').textContent = new Date(doc.date).toLocaleDateString('en-GB', { year:'numeric', month:'short', day:'numeric' });
		document.getElementById('meta-size').textContent = doc.size;
		document.getElementById('meta-category').textContent = doc.cat === 'oil-gas' ? 'Oil & Gas' : doc.cat.charAt(0).toUpperCase() + doc.cat.slice(1);
		renderSidebar(filterDocs());
		document.getElementById('pv-download-btn').onclick = function() { window.open(embed.src, '_blank'); };
	}

	function filterDocs() {
		var q = (document.getElementById('sidebar-search').value || '').toLowerCase();
		var filtered = docs.filter(function(d) {
			return d.title.toLowerCase().includes(q) || d.author.toLowerCase().includes(q);
		});
		if (activeDoc && !filtered.find(function(d) { return d.id === activeDoc.id; })) {
			activeDoc = null;
			document.getElementById('no-selection-viewer').style.display = '';
			document.getElementById('pv-pdf-embed').style.display = 'none';
			document.getElementById('pv-pdf-embed').src = '';
			document.getElementById('viewer-title').textContent = 'Select a document to view';
			document.getElementById('doc-metadata').classList.add('hidden');
		}
		return filtered;
	}

	document.getElementById('sidebar-search').addEventListener('input', function() {
		renderSidebar(filterDocs());
	});

	document.getElementById('fullscreen-btn').addEventListener('click', function() {
		var el = document.querySelector('.bg-slate-100');
		if (el && el.requestFullscreen) el.requestFullscreen();
	});

	renderSidebar(docs);
})();
</script>

<?php
get_footer();
