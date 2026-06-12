<?php
/**
 * Header — PST Hebat
 * Portal K3, Lingkungan & Operasional Tambang
 *
 * @package PST_Hebat
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?> class="scroll-smooth">
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<?php wp_head(); ?>
	<script src="https://cdn.tailwindcss.com"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
	<script>
		tailwind.config = {
			theme: {
				extend: {
					fontFamily: { sans: ['Inter', 'sans-serif'] },
					colors: {
						mog: { 50:'#f0f4f8',100:'#d9e2ec',200:'#bcc8dc',300:'#94a6c4',400:'#6a83ab',500:'#4a6185',600:'#1a2332',700:'#141c28',800:'#0e141e',900:'#080b12' },
						brand: { 50:'#eef7ff',100:'#d9edff',200:'#bbdfff',300:'#8ccbff',400:'#55adff',500:'#2e8cff',600:'#0B63CE',700:'#0a4d9e',800:'#0e407a',900:'#113764' },
						navy: { 400:'#4f7bc1',500:'#2a5db0',600:'#1a3d7c' },
						amber: { 400:'#fbbf24',500:'#f59e0b' },
					}
				}
			}
		}
	</script>
	<style>
		body { font-family: 'Inter', sans-serif; }
		::-webkit-scrollbar{width:6px;height:6px}
		::-webkit-scrollbar-track{background:#e2e8f0}
		::-webkit-scrollbar-thumb{background:#94a3b8;border-radius:3px}
		::-webkit-scrollbar-thumb:hover{background:#64748b}
		.doc-card{transition:all .2s ease;cursor:pointer}
		.doc-card:hover{transform:translateY(-2px);box-shadow:0 8px 24px rgba(0,0,0,0.08);border-color:#2a5db0}
		.active-cat{background:rgba(42,93,176,0.1);color:#2a5db0;border-color:#2a5db0!important}
		.viewer-container embed{width:100%;height:100%}
		.tag{transition:all .15s ease}
		.tag:hover{background:rgba(42,93,176,0.12);color:#2a5db0}
		.hero-search input:focus{box-shadow:0 0 0 3px rgba(42,93,176,0.25)}
		.nav-link{transition:color .2s}
		#primary-menu li,.menu-item{list-style:none}
		#sidebar-left .widget{margin:0;padding-top:12px}
		#sidebar-left .widget a{display:inline-flex;align-items:center;gap:8px;padding-top:6px;padding-bottom:6px}
		#sidebar-left .widget a::before{content:'';display:inline-block;width:14px;height:14px;min-width:14px;background:#94a3b8;mask-image:url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="black" stroke-width="2"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>');mask-size:contain;mask-repeat:no-repeat;-webkit-mask-image:url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="black" stroke-width="2"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>');-webkit-mask-size:contain;-webkit-mask-repeat:no-repeat;vertical-align:middle;flex-shrink:0}
		#sidebar-right .widget{margin:0;padding:0}
		#sidebar-right .widget a{display:inline-flex;align-items:center;gap:8px;padding-top:6px;padding-bottom:6px}
		#sidebar-right .widget a::before{content:'';display:inline-block;width:14px;height:14px;min-width:14px;background:#94a3b8;mask-image:url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="black" stroke-width="2"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>');mask-size:contain;mask-repeat:no-repeat;-webkit-mask-image:url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="black" stroke-width="2"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>');-webkit-mask-size:contain;-webkit-mask-repeat:no-repeat;vertical-align:middle;flex-shrink:0}
		.glass{background:rgba(255,255,255,0.08);backdrop-filter:blur(12px);-webkit-backdrop-filter:blur(12px);border:1px solid rgba(255,255,255,0.12)}
		.gradient-text{background:linear-gradient(135deg,#0B63CE,#0CA7B4);-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text}
		.btn-primary{transition:all .25s cubic-bezier(0.16,1,0.3,1)}
		.btn-primary:hover{transform:translateY(-2px);box-shadow:0 12px 28px -8px rgba(11,99,206,0.4)}
		.btn-ghost{transition:all .25s cubic-bezier(0.16,1,0.3,1)}
		.btn-ghost:hover{background:rgba(255,255,255,0.15);transform:translateY(-2px)}
		.badge-pulse{animation:pulse 2s infinite}
		@keyframes pulse{0%,100%{opacity:1}50%{opacity:0.6}}
		.fade-in{animation:fadeUp .6s cubic-bezier(0.16,1,0.3,1) both}
		@keyframes fadeUp{from{opacity:0;transform:translateY(24px)}to{opacity:1;transform:translateY(0)}}
		.delay-1{animation-delay:.1s}
		.delay-2{animation-delay:.2s}
		.delay-3{animation-delay:.3s}
		@media(max-width:768px){.hero-title{font-size:2rem!important}}
		@media(prefers-reduced-motion:reduce){*,*::before,*::after{animation-duration:0.01ms!important;transition-duration:0.01ms!important}}

		/* Archive pagination */
		.pagination{display:flex;justify-content:center;margin-top:2rem}
		.pagination ul{display:flex;align-items:center;gap:6px;list-style:none;margin:0;padding:0}
		.pagination .page-numbers{display:inline-flex;align-items:center;justify-content:center;min-width:36px;height:36px;padding:0 10px;font-size:14px;font-weight:500;color:#475569;background:#fff;border:1px solid #e2e8f0;border-radius:8px;text-decoration:none;transition:all .2s}
		.pagination .page-numbers:hover{background:#f1f5f9;border-color:#cbd5e1;color:#1e293b}
		.pagination .page-numbers.current{background:#2a5db0;border-color:#2a5db0;color:#fff}
		.pagination .page-numbers.prev,.pagination .page-numbers.next{font-size:13px}
		.pagination .page-numbers.dots{color:#94a3b8;border-color:transparent;cursor:default}
		.pagination .page-numbers.dots:hover{background:transparent}

		/* Comment form */
		.comment-list .children{margin-left:48px;padding-left:0;list-style:none}
		.comment-list .children .children{margin-left:32px}
		#cancel-comment-reply-link{font-size:12px;color:#64748b;text-decoration:none}
		#cancel-comment-reply-link:hover{color:#0B63CE}
		.comment-notes,.logged-in-as{font-size:13px;color:#94a3b8;margin-bottom:12px}
		.comment-notes a,.logged-in-as a{color:#0B63CE;text-decoration:none}
		.comment-notes a:hover,.logged-in-as a:hover{text-decoration:underline}
		.form-allowed-tags{display:none}
		small{font-size:12px}
	</style>
</head>
<body <?php body_class('antialiased min-h-screen flex flex-col bg-slate-50 text-slate-800'); ?>>
<?php wp_body_open(); ?>

<!-- ===== STICKY NAVBAR ===== -->
<header class="sticky top-0 left-0 right-0 z-50 bg-white border-b border-gray-200 shadow-sm">
	<div class="max-w-screen-2xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex items-center justify-between h-16 md:h-20">
			<!-- Left: PST Logo + Brand -->
			<div class="flex items-center gap-3 md:gap-5">
				<a href="<?php echo esc_url(home_url('/')); ?>" class="flex items-center gap-2.5 no-underline group">
					<?php $theme_uri = get_template_directory_uri(); ?>
					<img src="<?php echo esc_url($theme_uri); ?>/assets/logo-pst.png" alt="PST Logo" class="h-9 md:h-10 object-contain">
					<img src="<?php echo esc_url($theme_uri); ?>/assets/pst-2.png" alt="PST Logo 2" class="h-9 md:h-10 object-contain">
					<div class="leading-tight">
						<div class="text-xl md:text-2xl font-black tracking-tight text-gray-900 group-hover:text-brand-600 transition-colors">
							<?php echo esc_html(get_theme_mod('navbar_initials', 'PST')); ?>
						</div>
						<div class="text-[9px] md:text-[10px] font-bold tracking-[0.3em] text-gray-500 -mt-0.5 uppercase">
							<?php echo esc_html(get_theme_mod('navbar_tagline', 'Hebat')); ?>
						</div>
					</div>
				</a>
				<div class="hidden sm:block h-8 w-px bg-gray-200"></div>
				<div class="hidden sm:block">
					<div class="text-sm md:text-base font-bold text-brand-600">
						<?php echo esc_html(get_theme_mod('navbar_brand_full', 'PST / PST Hebat')); ?>
					</div>
					<div class="text-[11px] md:text-xs font-medium text-gray-500 tracking-tight">
						<?php echo esc_html(get_theme_mod('navbar_brand_motto', 'Peduli · Selamat · Tanggung Jawab')); ?>
					</div>
				</div>
			</div>

			<!-- Center: Nav -->
			<nav class="hidden lg:flex items-center gap-1" aria-label="<?php esc_attr_e('Primary Menu', 'pst_hebat'); ?>">
				<?php
				wp_nav_menu(array(
					'theme_location' => 'primary',
					'menu_class'     => 'flex items-center gap-1',
					'container'      => false,
					'fallback_cb'    => false,
					'depth'          => 1,
					'link_before'    => '',
					'link_after'     => '',
					'items_wrap'     => '%3$s',
				));
				?>
			</nav>

			<!-- Right: MHU -->
			<div class="flex items-center gap-2 md:gap-3">
				<?php if (has_nav_menu('secondary')) : ?>
				<?php
				wp_nav_menu(array(
					'theme_location' => 'secondary',
					'menu_class'     => 'hidden md:flex items-center',
					'container'      => false,
					'fallback_cb'    => false,
					'depth'          => 1,
					'items_wrap'     => '%3$s',
				));
				?>
				<?php else : ?>
				<a href="#" class="hidden md:flex items-center gap-3 px-4 py-2 hover:bg-gray-50 rounded-xl transition-colors no-underline">
					<img src="<?php echo esc_url(get_template_directory_uri()); ?>/assets/mhu-logo-sm.png" alt="MHU Logo" class="h-9 object-contain">
					<div class="leading-none">
						<div class="text-xl font-extrabold tracking-tight text-[#1f2228]"><?php echo esc_html(get_theme_mod('navbar_mhu_initials', 'MHU')); ?></div>
						<div class="text-[10px] font-bold text-[#374151] -mt-0.5"><?php echo esc_html(get_theme_mod('navbar_mhu_full', 'Mining Holding Indonesia')); ?></div>
					</div>
				</a>
				<?php endif; ?>
				<button class="lg:hidden p-2 rounded-xl hover:bg-gray-100 transition-colors" id="menuBtn" aria-label="<?php esc_attr_e('Toggle menu', 'pst_hebat'); ?>">
					<svg class="w-6 h-6 text-gray-700" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M4 6h16M4 12h16M4 18h16"/></svg>
				</button>
			</div>
		</div>
	</div>
</header>

<!-- Mobile nav overlay -->
<div id="mobileMenu" class="fixed inset-0 z-40 hidden" aria-hidden="true">
	<div class="absolute inset-0 bg-black/30" id="menuOverlay"></div>
	<div class="absolute top-0 right-0 w-72 h-full bg-white shadow-2xl p-6 pt-24 overflow-y-auto">
		<nav class="flex flex-col gap-4">
			<?php
			wp_nav_menu(array(
				'theme_location' => 'primary',
				'menu_class'     => 'flex flex-col gap-4',
				'container'      => false,
				'fallback_cb'    => false,
				'depth'          => 1,
				'items_wrap'     => '%3$s',
			));
			?>
			<hr class="my-2 border-gray-100">
			<div class="flex items-center gap-3 px-4 py-2.5">
				<?php if ($mhu_logo_id) :
					echo wp_get_attachment_image($mhu_logo_id, array(36, 36), false, array('class' => 'h-7 shrink-0 object-contain', 'aria-hidden' => 'true'));
				else : ?>
				<svg class="w-7 h-7 shrink-0" viewBox="0 0 58 52" fill="none" aria-hidden="true">
					<path d="M26.7 4.5L3 47.5h18.2L35.5 20.9 26.7 4.5z" fill="#0067B1"/>
					<path d="M39.2 9.6L23.8 47.5h18.7L55 47.2 39.2 9.6z" fill="#003E7E"/>
					<path d="M36.2 30.5l-7.8 17h13.9l10.8-.2-16.9-16.8z" fill="#10A4C4"/>
					<path d="M25.6 30.8H10.9l-9 16.7h18.7l5-16.7z" fill="#0B79BD"/>
				</svg>
				<?php endif; ?>
				<div>
					<div class="font-extrabold text-gray-800"><?php echo esc_html(get_theme_mod('navbar_mhu_initials', 'MHU')); ?></div>
					<div class="text-xs text-gray-500 -mt-0.5"><?php echo esc_html(get_theme_mod('navbar_mhu_full', 'Mining Holding Indonesia')); ?></div>
				</div>
			</div>
		</nav>
	</div>
</div>
