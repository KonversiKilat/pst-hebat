/**
 * PST Hebat — Document Library JavaScript
 * Portal K3, Lingkungan & Operasional Tambang
 *
 * @package PST_Hebat
 */

(function() {
	'use strict';

	// =============================================
	// DOCUMENTS DATA
	// =============================================
	var documents = [
		{ id:1, title:'Coal Mining Safety Guidelines 2025', author:'Ministry of Energy & Mineral Resources', pages:48, date:'2025-03-15', size:'2.4 MB', cat:'safety', type:'Guideline', desc:'Comprehensive safety guidelines for coal mining operations including hazard identification, risk assessment, and emergency response procedures.', tags:['safety','coal','mining','HSE'], pdf:'assets/sample.pdf' },
		{ id:2, title:'Offshore Drilling Technical Standards', author:'IADC', pages:124, date:'2024-11-20', size:'5.8 MB', cat:'oil-gas', type:'Standard', desc:'Technical standards and best practices for offshore drilling operations including equipment specifications, well control, and environmental protection.', tags:['drilling','offshore','standards','oil-gas'], pdf:'assets/sample.pdf' },
		{ id:3, title:'Indonesia Mining Law No.3/2020', author:'Government of Indonesia', pages:256, date:'2024-06-10', size:'3.2 MB', cat:'regulations', type:'Regulation', desc:'Full text of Law No. 3 of 2020 concerning amendments to Mining Law, covering licensing, production, and reclamation obligations.', tags:['regulation','law','mining','compliance'], pdf:'assets/sample.pdf' },
		{ id:4, title:'Geological Survey Report: Kalimantan Basin', author:'Badan Geologi', pages:186, date:'2024-09-05', size:'12.1 MB', cat:'mining', type:'Technical Report', desc:'Detailed geological survey report of the Kalimantan sedimentary basin including stratigraphy, structural geology, and resource potential analysis.', tags:['geology','exploration','kalimantan','survey'], pdf:'assets/sample.pdf' },
		{ id:5, title:'Oil Refinery Process Safety Management', author:'American Petroleum Institute', pages:92, date:'2025-01-28', size:'4.6 MB', cat:'safety', type:'Guideline', desc:'Process safety management framework for oil refineries covering PHA, MOC, PSSR, mechanical integrity, and incident investigation.', tags:['refining','safety','HSE','process'], pdf:'assets/sample.pdf' },
		{ id:6, title:'SNI Geotechnical Investigation for Mining', author:'BSN Indonesia', pages:74, date:'2024-04-01', size:'1.8 MB', cat:'standards', type:'Standard', desc:'National standard for geotechnical investigation methods in mining operations including soil mechanics, rock mechanics, and slope stability.', tags:['geotechnical','standards','SNI','mining'], pdf:'assets/sample.pdf' },
		{ id:7, title:'Production Sharing Contract Guide', author:'SKK Migas', pages:156, date:'2024-07-15', size:'3.9 MB', cat:'oil-gas', type:'Guideline', desc:'Complete guide to Production Sharing Contracts in Indonesia including fiscal terms, cost recovery, and reporting requirements.', tags:['PSC','oil-gas','regulation','contract'], pdf:'assets/sample.pdf' },
		{ id:8, title:'Mining Reclamation & Closure Plan', author:'Ministry of Energy & Mineral Resources', pages:68, date:'2024-12-10', size:'2.1 MB', cat:'regulations', type:'Regulation', desc:'Regulatory framework for post-mining reclamation and closure planning including environmental monitoring, revegetation, and community development.', tags:['reclamation','environment','mining','compliance'], pdf:'assets/sample.pdf' },
		{ id:9, title:'Seismic Data Processing Handbook', author:'Society of Exploration Geophysicists', pages:210, date:'2025-02-01', size:'8.2 MB', cat:'oil-gas', type:'Technical Report', desc:'Comprehensive handbook on seismic data acquisition, processing, and interpretation for hydrocarbon exploration.', tags:['seismic','exploration','geophysics','oil-gas'], pdf:'assets/sample.pdf' },
		{ id:10, title:'Mining Equipment Maintenance Standards', author:'ISO/TC 82 Mining', pages:88, date:'2024-08-22', size:'3.4 MB', cat:'standards', type:'Standard', desc:'International standards for mining equipment maintenance including predictive maintenance, lubrication, wear analysis, and safety inspections.', tags:['equipment','maintenance','standards','mining'], pdf:'assets/sample.pdf' },
		{ id:11, title:'H2S Safety in Oil & Gas Operations', author:'IOGP', pages:56, date:'2025-01-10', size:'1.6 MB', cat:'safety', type:'Guideline', desc:'Safety guidelines for operations involving hydrogen sulfide (H2S) including detection, PPE, emergency response, and training requirements.', tags:['H2S','safety','oil-gas','HSE'], pdf:'assets/sample.pdf' },
		{ id:12, title:'Coal Bed Methane Exploration Report', author:'PT. Geo Energi Nusantara', pages:134, date:'2024-10-05', size:'6.7 MB', cat:'mining', type:'Technical Report', desc:'Technical report on CBM exploration in South Sumatra basin including resource estimation, reservoir characteristics, and production testing.', tags:['CBM','exploration','coal','sumatra'], pdf:'assets/sample.pdf' },
		{ id:13, title:'Fire Protection for Offshore Platforms', author:'NFPA / API RP 14G', pages:42, date:'2024-05-18', size:'1.2 MB', cat:'safety', type:'Standard', desc:'Fire protection design standards for offshore oil and gas platforms including passive fire protection, detection systems, and suppression.', tags:['fire','offshore','safety','standards'], pdf:'assets/sample.pdf' },
		{ id:14, title:'Mineral Resource Estimation Guide', author:'JORC Committee', pages:98, date:'2024-11-30', size:'4.3 MB', cat:'mining', type:'Guideline', desc:'JORC Code compliant mineral resource estimation guidelines covering sampling, data analysis, classification, and reporting.', tags:['JORC','resources','estimation','mining'], pdf:'assets/sample.pdf' },
		{ id:15, title:'LNG Plant Design & Engineering Standards', author:'Gas Technology Institute', pages:178, date:'2025-03-01', size:'7.5 MB', cat:'oil-gas', type:'Standard', desc:'Engineering standards for LNG plant design including liquefaction processes, storage, containment, and safety systems.', tags:['LNG','engineering','standards','gas'], pdf:'assets/sample.pdf' },
		{ id:16, title:'Environmental Impact Assessment for Mining', author:'KLHK RI', pages:312, date:'2024-03-20', size:'9.8 MB', cat:'regulations', type:'Regulation', desc:'Complete EIA regulatory framework for mining operations including AMDAL, UKL-UPL, environmental monitoring, and community engagement.', tags:['EIA','environment','regulation','mining'], pdf:'assets/sample.pdf' },
		{ id:17, title:'Drilling Fluid Engineering Handbook', author:'Baker Hughes / SPE', pages:244, date:'2024-09-12', size:'11.2 MB', cat:'oil-gas', type:'Technical Report', desc:'Comprehensive handbook on drilling fluid technology including mud properties, hydraulics, solids control, and formation damage prevention.', tags:['drilling','fluid','engineering','oil-gas'], pdf:'assets/sample.pdf' },
		{ id:18, title:'ISO 14001: Environmental Management for Mining', author:'ISO / BSN', pages:36, date:'2024-06-01', size:'0.9 MB', cat:'standards', type:'Standard', desc:'Environmental management system requirements and implementation guide for mining operations aligned with ISO 14001:2015.', tags:['ISO','environment','management','standards'], pdf:'assets/sample.pdf' },
		{ id:19, title:'Well Intervention & Workover Guidelines', author:'IADC / API', pages:86, date:'2025-02-15', size:'3.1 MB', cat:'oil-gas', type:'Guideline', desc:'Technical guidelines for well intervention and workover operations including coiled tubing, wireline, snubbing, and stimulation.', tags:['well','intervention','workover','oil-gas'], pdf:'assets/sample.pdf' },
		{ id:20, title:'Mining Explosives Safety & Handling', author:'Ministry of Energy & Mineral Resources', pages:64, date:'2024-12-01', size:'2.8 MB', cat:'safety', type:'Regulation', desc:'Safety regulations for the storage, handling, and use of explosives in mining operations including blast design and transportation.', tags:['explosives','safety','blasting','mining'], pdf:'assets/sample.pdf' },
		{ id:21, title:'Piping & Instrumentation Diagram Standards', author:'ISO / ANSI / ISA', pages:52, date:'2024-07-08', size:'1.5 MB', cat:'standards', type:'Standard', desc:'P&ID development standards for oil & gas facilities including symbology, designation, and documentation requirements.', tags:['P&ID','piping','engineering','standards'], pdf:'assets/sample.pdf' },
		{ id:22, title:'Nickel Mining & Processing Technology', author:'PT. Vale Indonesia / INCO', pages:98, date:'2025-01-20', size:'4.1 MB', cat:'mining', type:'Technical Report', desc:'Technical report on nickel laterite mining and processing technologies including HPAL, RKEF, and ferronickel production.', tags:['nickel','processing','technology','mining'], pdf:'assets/sample.pdf' },
		{ id:23, title:'Flare & Vent Systems Design Standard', author:'API Standard 521', pages:76, date:'2024-10-30', size:'2.2 MB', cat:'oil-gas', type:'Standard', desc:'Design standards for pressure relief, flare, and vent systems in oil and gas facilities including flare sizing and radiation analysis.', tags:['flare','design','safety','standards'], pdf:'assets/sample.pdf' },
		{ id:24, title:'Ground Vibration & Airblast Monitoring', author:'ISEE', pages:44, date:'2024-04-15', size:'1.3 MB', cat:'mining', type:'Guideline', desc:'Monitoring guidelines for ground vibration and airblast from blasting operations including instrumentation, analysis, and regulatory compliance.', tags:['blasting','vibration','monitoring','mining'], pdf:'assets/sample.pdf' }
	];

	// =============================================
	// STATE
	// =============================================
	var activeCat = 'all';
	var activeDoc = null;
	var filteredDocs = documents.slice();
	var pdfBaseUrl = (typeof pstHebat !== 'undefined') ? pstHebat.themeUri : '';

	// =============================================
	// DOM REFS
	// =============================================
	var $ = function(id) { return document.getElementById(id); };
	var grid = $('doc-grid');
	var viewer = $('pdf-viewer');
	var closeViewer = $('close-viewer');
	var pdfEmbed = $('pdf-embed');
	var viewerFilename = $('viewer-filename');
	var downloadBtn = $('download-btn');
	var resultCount = $('result-count');
	var viewTitle = $('view-title');
	var mobileTotal = $('mobile-total');

	// Detail refs
	var detailContent = $('detail-content');
	var detailTitle = $('detail-title');
	var detailAuthor = $('detail-author');
	var detailCategory = $('detail-category');
	var detailPages = $('detail-pages');
	var detailDate = $('detail-date');
	var detailSize = $('detail-size');
	var detailDesc = $('detail-desc');
	var detailTags = $('detail-tags');

	// =============================================
	// HELPERS
	// =============================================
	function catLabel(cat) {
		return cat === 'oil-gas' ? 'Oil & Gas' : cat.charAt(0).toUpperCase() + cat.slice(1);
	}

	function formatDate(d) {
		return new Date(d).toLocaleDateString('en-GB', { year:'numeric', month:'short', day:'numeric' });
	}

	// =============================================
	// RENDER GRID
	// =============================================
	function renderGrid(docs) {
		var count = docs.length;
		resultCount.textContent = '(' + count + ')';
		if (mobileTotal) mobileTotal.textContent = count + ' documents';
		var statsTotal = $('stats-total');
		if (statsTotal) statsTotal.textContent = count;
		var footerCount = $('footer-doc-count');
		if (footerCount) footerCount.textContent = count + ' documents';

		if (!count) {
			grid.innerHTML = '<div class="col-span-full text-center py-16"><svg class="w-12 h-12 text-slate-300 mx-auto mb-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg><p class="text-slate-400 text-sm">No documents found</p></div>';
			return;
		}

		grid.innerHTML = docs.map(function(d) {
			return '<div class="doc-card bg-white border border-slate-200 rounded-xl p-4 shadow-sm" data-id="' + d.id + '">' +
				'<div class="flex items-start gap-3">' +
					'<div class="w-9 h-11 rounded-lg bg-gradient-to-b from-red-50 to-red-100 border border-red-200 flex items-center justify-center shrink-0">' +
						'<svg class="w-4.5 h-4.5 text-red-500" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>' +
					'</div>' +
					'<div class="min-w-0">' +
						'<h4 class="text-sm font-semibold text-slate-800 leading-snug line-clamp-2">' + escHtml(d.title) + '</h4>' +
						'<p class="text-xs text-slate-500 mt-0.5 truncate">' + escHtml(d.author) + '</p>' +
						'<div class="flex items-center gap-2 mt-1.5 text-xs text-slate-400">' +
							'<span class="bg-navy-50 text-navy-600 px-1.5 py-0.5 rounded text-[10px] font-medium">' + catLabel(d.cat) + '</span>' +
							'<span>' + d.pages + 'p</span>' +
							'<span>' + d.date + '</span>' +
						'</div>' +
					'</div>' +
				'</div>' +
			'</div>';
		}).join('');

		grid.querySelectorAll('.doc-card').forEach(function(el) {
			el.addEventListener('click', function() {
				var doc = documents.find(function(d) { return d.id === parseInt(el.dataset.id); });
				if (doc) openDoc(doc);
			});
		});
	}

	function escHtml(str) {
		var div = document.createElement('div');
		div.appendChild(document.createTextNode(str));
		return div.innerHTML;
	}

	// =============================================
	// OPEN / CLOSE DOC
	// =============================================
	function openDoc(doc) {
		activeDoc = doc;
		grid.classList.add('hidden');
		viewer.classList.remove('hidden');
		viewTitle.textContent = doc.title;
		viewerFilename.textContent = doc.title + '.pdf';

		var pdfSrc = doc.pdf;
		if (pdfBaseUrl && pdfSrc.indexOf('http') !== 0) {
			pdfSrc = pdfBaseUrl + '/' + pdfSrc;
		}
		pdfEmbed.src = pdfSrc;

		// Detail panel
		detailContent.classList.remove('hidden');
		detailTitle.textContent = doc.title;
		detailAuthor.textContent = doc.author;
		detailCategory.textContent = catLabel(doc.cat);
		detailPages.textContent = doc.pages + ' pages';
		detailDate.textContent = formatDate(doc.date);
		detailSize.textContent = doc.size;
		detailDesc.textContent = doc.desc;
		detailTags.innerHTML = doc.tags.map(function(t) {
			return '<span class="px-2 py-0.5 rounded text-[10px] bg-slate-100 text-slate-500 font-medium">' + escHtml(t) + '</span>';
		}).join('');

		downloadBtn.onclick = function() { window.open(pdfSrc, '_blank'); };
		document.querySelector('main').scrollIntoView({ behavior:'smooth', block:'start' });
	}

	function closeDocHandler() {
		activeDoc = null;
		grid.classList.remove('hidden');
		viewer.classList.add('hidden');
		detailContent.classList.add('hidden');
		pdfEmbed.src = '';
		viewTitle.textContent = activeCat === 'all' ? 'All Documents' : catLabel(activeCat);
	}

	// =============================================
	// FILTERING
	// =============================================
	function filterDocs() {
		var q = ($('hero-search-input') || {}).value || '';
		q = q.toLowerCase().trim();

		filteredDocs = documents.filter(function(d) {
			var mc = activeCat === 'all' || d.cat === activeCat;
			var ms = !q ||
				d.title.toLowerCase().includes(q) ||
				d.author.toLowerCase().includes(q) ||
				d.desc.toLowerCase().includes(q) ||
				d.tags.some(function(t) { return t.includes(q); });
			return mc && ms;
		});

		// Sort
		var sortVal = ($('sort-select') || {}).value;
		if (sortVal === 'az') {
			filteredDocs.sort(function(a, b) { return a.title.localeCompare(b.title); });
		} else if (sortVal === 'oldest') {
			filteredDocs.sort(function(a, b) { return new Date(a.date) - new Date(b.date); });
		} else {
			filteredDocs.sort(function(a, b) { return new Date(b.date) - new Date(a.date); });
		}

		if (activeDoc && !filteredDocs.find(function(d) { return d.id === activeDoc.id; })) {
			closeDocHandler();
		}
		renderGrid(filteredDocs);
	}

	// =============================================
	// INIT
	// =============================================
	function init() {
		renderGrid(documents);

		// Category buttons
		document.querySelectorAll('[data-cat]').forEach(function(btn) {
			btn.addEventListener('click', function() {
				var cat = btn.dataset.cat;
				document.querySelectorAll('[data-cat]').forEach(function(b) { b.classList.remove('active-cat'); });
				document.querySelectorAll('[data-cat="' + cat + '"]').forEach(function(b) { b.classList.add('active-cat'); });
				activeCat = cat;
				viewTitle.textContent = cat === 'all' ? 'All Documents' : catLabel(cat);
				if (activeDoc) closeDocHandler();
				filterDocs();
				var mobileCat = $('mobile-cat');
				if (mobileCat) mobileCat.classList.add('hidden');
			});
		});

		// Search
		var searchInput = $('hero-search-input');
		if (searchInput) {
			var st;
			searchInput.addEventListener('input', function() {
				clearTimeout(st);
				st = setTimeout(filterDocs, 200);
			});
		}

		// Sort
		var sortSelect = $('sort-select');
		if (sortSelect) {
			sortSelect.addEventListener('change', filterDocs);
		}

		// Close viewer
		if (closeViewer) closeViewer.addEventListener('click', closeDocHandler);

		// Tags as search triggers
		document.querySelectorAll('.tag').forEach(function(t) {
			t.addEventListener('click', function() {
				if (searchInput) {
					searchInput.value = t.textContent.trim();
					filterDocs();
				}
			});
		});

		// Mobile cat toggle
		window.toggleMobileCat = function() {
			var el = $('mobile-cat');
			if (el) el.classList.toggle('hidden');
		};

		// Clone category list for mobile
		var mobileList = $('mobile-cat-list');
		if (mobileList) {
			document.querySelectorAll('#category-list button[data-cat]').forEach(function(b) {
				mobileList.appendChild(b.cloneNode(true));
			});
		}
	}

	// Run on DOM ready
	if (document.readyState === 'loading') {
		document.addEventListener('DOMContentLoaded', init);
	} else {
		init();
	}
})();
