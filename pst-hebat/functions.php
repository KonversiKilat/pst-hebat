<?php
/**
 * Theme Functions — PST Hebat
 * Portal K3, Lingkungan & Operasional Tambang
 *
 * @package PST_Hebat
 */

if (!defined('ABSPATH')) exit;

define('PST_HEBAT_VERSION', '1.0.0');

/**
 * Theme setup
 */
function pst_hebat_setup() {
	load_theme_textdomain('pst_hebat', get_template_directory() . '/languages');

	add_theme_support('title-tag');
	add_theme_support('post-thumbnails');
	add_theme_support('custom-logo', array(
		'height'      => 60,
		'width'       => 200,
		'flex-height' => true,
		'flex-width'  => true,
	));
	add_theme_support('html5', array('search-form', 'comment-form', 'comment-list', 'gallery', 'caption', 'style', 'script'));
	add_theme_support('customize-selective-refresh-widgets');
	add_theme_support('responsive-embeds');
	add_theme_support('align-wide');

	register_nav_menus(array(
		'primary'   => esc_html__('Primary Menu (Navbar)', 'pst_hebat'),
		'secondary' => esc_html__('Secondary Menu (Right side)', 'pst_hebat'),
		'footer'    => esc_html__('Footer Menu', 'pst_hebat'),
	));
}
add_action('after_setup_theme', 'pst_hebat_setup');

/**
 * Enqueue assets
 */
function pst_hebat_assets() {
	wp_enqueue_style('pst-hebat-style', get_stylesheet_uri(), array(), PST_HEBAT_VERSION);

	wp_enqueue_script(
		'pst-hebat-script',
		get_template_directory_uri() . '/script.js',
		array(),
		PST_HEBAT_VERSION,
		true
	);

	wp_localize_script('pst-hebat-script', 'pstHebat', array(
		'themeUri' => get_template_directory_uri(),
		'ajaxUrl'  => admin_url('admin-ajax.php'),
	));
}
add_action('wp_enqueue_scripts', 'pst_hebat_assets');

/**
 * Widget areas
 */
function pst_hebat_widgets_init() {
	register_sidebar(array(
		'name'          => esc_html__('Footer Column 1', 'pst_hebat'),
		'id'            => 'footer-1',
		'description'   => esc_html__('Widget area di footer kolom ketiga.', 'pst_hebat'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h4 class="text-xs font-semibold uppercase tracking-wider text-white mb-3">',
		'after_title'   => '</h4>',
	));
	register_sidebar(array(
		'name'          => esc_html__('Footer Column 2', 'pst_hebat'),
		'id'            => 'footer-2',
		'description'   => esc_html__('Widget area di footer kolom keempat.', 'pst_hebat'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h4 class="text-xs font-semibold uppercase tracking-wider text-white mb-3">',
		'after_title'   => '</h4>',
	));
}
add_action('widgets_init', 'pst_hebat_widgets_init');

/**
 * =============================================
 * CUSTOMIZER — Branding & Hero Section
 * =============================================
 */
function pst_hebat_customize_register($wp_customize) {

	/* --- Section: Branding --- */
	$wp_customize->add_section('pst_branding', array(
		'title'    => esc_html__('PST Branding', 'pst_hebat'),
		'priority' => 30,
	));

	$wp_customize->add_setting('pst_initials', array(
		'default'           => 'PST',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('pst_initials', array(
		'label'   => esc_html__('Initials (navbar)', 'pst_hebat'),
		'section' => 'pst_branding',
		'type'    => 'text',
	));

	$wp_customize->add_setting('pst_tagline', array(
		'default'           => 'Hebat',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('pst_tagline', array(
		'label'   => esc_html__('Tagline (under initials)', 'pst_hebat'),
		'section' => 'pst_branding',
		'type'    => 'text',
	));

	$wp_customize->add_setting('brand_full', array(
		'default'           => 'PST / PST Hebat',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('brand_full', array(
		'label'   => esc_html__('Full brand name', 'pst_hebat'),
		'section' => 'pst_branding',
		'type'    => 'text',
	));

	$wp_customize->add_setting('brand_motto', array(
		'default'           => 'Peduli · Selamat · Tanggung Jawab',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('brand_motto', array(
		'label'   => esc_html__('Brand motto', 'pst_hebat'),
		'section' => 'pst_branding',
		'type'    => 'text',
	));

	/* --- Section: MHU --- */
	$wp_customize->add_section('pst_mhu', array(
		'title'    => esc_html__('MHU Branding', 'pst_hebat'),
		'priority' => 31,
	));

	$wp_customize->add_setting('mhu_initials', array(
		'default'           => 'MHU',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('mhu_initials', array(
		'label'   => esc_html__('MHU initials', 'pst_hebat'),
		'section' => 'pst_mhu',
		'type'    => 'text',
	));

	$wp_customize->add_setting('mhu_full', array(
		'default'           => 'Mining Holding Indonesia',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('mhu_full', array(
		'label'   => esc_html__('MHU full name', 'pst_hebat'),
		'section' => 'pst_mhu',
		'type'    => 'text',
	));

	/* --- Section: Hero --- */
	$wp_customize->add_section('pst_hero', array(
		'title'    => esc_html__('Hero Section', 'pst_hebat'),
		'priority' => 32,
	));

	$wp_customize->add_setting('hero_badge', array(
		'default'           => 'Portal K3 & Document Library',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('hero_badge', array(
		'label'   => esc_html__('Badge text', 'pst_hebat'),
		'section' => 'pst_hero',
		'type'    => 'text',
	));

	$wp_customize->add_setting('hero_title', array(
		'default'           => 'Portal K3, Lingkungan,<br><span class="gradient-text">dan Operasional</span><br>Tambang',
		'sanitize_callback' => 'wp_kses_post',
	));
	$wp_customize->add_control('hero_title', array(
		'label'       => esc_html__('Hero title (HTML allowed)', 'pst_hebat'),
		'section'     => 'pst_hero',
		'type'        => 'textarea',
	));

	$wp_customize->add_setting('hero_subtitle', array(
		'default'           => 'Mewujudkan pertambangan yang selamat, patuh dan berkelanjutan.',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('hero_subtitle', array(
		'label'   => esc_html__('Hero subtitle', 'pst_hebat'),
		'section' => 'pst_hero',
		'type'    => 'textarea',
	));

	$wp_customize->add_setting('hero_cta_primary', array(
		'default'           => 'Browse Documents',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('hero_cta_primary', array(
		'label'   => esc_html__('Primary CTA text', 'pst_hebat'),
		'section' => 'pst_hero',
		'type'    => 'text',
	));

	$wp_customize->add_setting('hero_cta_secondary', array(
		'default'           => 'Search Library',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('hero_cta_secondary', array(
		'label'   => esc_html__('Secondary CTA text', 'pst_hebat'),
		'section' => 'pst_hero',
		'type'    => 'text',
	));

	$wp_customize->add_setting('hero_search_placeholder', array(
		'default'           => 'Search 24 documents — technical reports, standards, regulations...',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('hero_search_placeholder', array(
		'label'   => esc_html__('Search placeholder text', 'pst_hebat'),
		'section' => 'pst_hero',
		'type'    => 'text',
	));

	/* --- Section: SHE Indices --- */
	$wp_customize->add_section('pst_she', array(
		'title'    => esc_html__('SHE Indices', 'pst_hebat'),
		'priority' => 33,
	));

	$she_fields = array(
		'she_pst'  => array('label' => 'PST',  'default_value' => '96.4', 'default_trend' => '+2.1% dari bulan lalu'),
		'she_psi'  => array('label' => 'PSI',  'default_value' => '87.2', 'default_trend' => '+5.3% bulan ini'),
		'she_epi'  => array('label' => 'EPI',  'default_value' => '92.8', 'default_trend' => '+1.8% dari bulan lalu'),
	);

	foreach ($she_fields as $key => $field) {
		$wp_customize->add_setting($key . '_value', array(
			'default'           => $field['default_value'],
			'sanitize_callback' => 'sanitize_text_field',
		));
		$wp_customize->add_control($key . '_value', array(
			'label'   => sprintf(esc_html__('%s value', 'pst_hebat'), $field['label']),
			'section' => 'pst_she',
			'type'    => 'text',
		));
		$wp_customize->add_setting($key . '_trend', array(
			'default'           => $field['default_trend'],
			'sanitize_callback' => 'sanitize_text_field',
		));
		$wp_customize->add_control($key . '_trend', array(
			'label'   => sprintf(esc_html__('%s trend text', 'pst_hebat'), $field['label']),
			'section' => 'pst_she',
			'type'    => 'text',
		));
	}

	/* --- Section: Footer --- */
	$wp_customize->add_section('pst_footer', array(
		'title'    => esc_html__('Footer', 'pst_hebat'),
		'priority' => 34,
	));

	$wp_customize->add_setting('footer_description', array(
		'default'           => 'Mining document library — technical reports, standards, regulations, and safety guidelines for the mining and energy industry.',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('footer_description', array(
		'label'   => esc_html__('Footer description', 'pst_hebat'),
		'section' => 'pst_footer',
		'type'    => 'textarea',
	));
}
add_action('customize_register', 'pst_hebat_customize_register');

/**
 * =============================================
 * NAV WALKER — Add nav-link classes to menu items
 * =============================================
 */
class PST_Hebat_Nav_Walker extends Walker_Nav_Menu {
	public function start_el(&$output, $item, $depth = 0, $args = array(), $id = 0) {
		$indent = ($depth) ? str_repeat("\t", $depth) : '';
		$classes = empty($item->classes) ? array() : (array) $item->classes;
		$class_names = join(' ', apply_filters('nav_menu_css_class', array_filter($classes), $item, $args, $depth));
		$class_names = $class_names ? ' class="' . esc_attr($class_names) . '"' : '';

		$output .= $indent . '<li' . $class_names . '>';

		$atts = array();
		$atts['title']  = !empty($item->attr_title) ? $item->attr_title : '';
		$atts['target'] = !empty($item->target) ? $item->target : '';
		$atts['rel']    = !empty($item->xfn) ? $item->xfn : '';
		$atts['href']   = !empty($item->url) ? $item->url : '';

		$atts = apply_filters('nav_menu_link_attributes', $atts, $item, $args, $depth);

		$attributes = '';
		foreach ($atts as $attr => $value) {
			if (!empty($value)) {
				$value = ('href' === $attr) ? esc_url($value) : esc_attr($value);
				$attributes .= ' ' . $attr . '="' . $value . '"';
			}
		}

		$title = apply_filters('the_title', $item->title, $item->ID);
		$title = apply_filters('nav_menu_item_title', $title, $item, $args, $depth);

		$item_output = $args->before;
		$item_output .= '<a' . $attributes . ' class="nav-link px-3 py-2 text-sm font-medium text-gray-600 hover:text-brand-600 rounded-lg hover:bg-brand-50/50 no-underline transition">';
		$item_output .= $args->link_before . $title . $args->link_after;
		$item_output .= '</a>';
		$item_output .= $args->after;

		$output .= apply_filters('walker_nav_menu_start_el', $item_output, $item, $depth, $args);
	}
}

/**
 * Add walker to primary menu
 */
function pst_hebat_nav_menu_args($args) {
	if ('primary' === $args['theme_location']) {
		if (!isset($args['walker']) || !$args['walker']) {
			$args['walker'] = new PST_Hebat_Nav_Walker();
		}
	}
	return $args;
}
add_filter('wp_nav_menu_args', 'pst_hebat_nav_menu_args');
