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

/** Disable Gutenberg editor — use classic editor */
add_filter('use_block_editor_for_post', '__return_false', 5);
add_filter('use_block_editor_for_post_type', '__return_false', 5);
add_action('admin_init', function() {
	remove_theme_support('editor-style');
	remove_theme_support('wp-block-styles');
});

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

	/* Sidebar — Left (homepage) */
	register_sidebar(array(
		'name'          => esc_html__('Left Sidebar (Homepage)', 'pst_hebat'),
		'id'            => 'sidebar-left',
		'description'   => esc_html__('Widget area di sidebar kiri homepage. Untuk link MEA, SMKP Minerba, dll.', 'pst_hebat'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">',
		'after_title'   => '</h3>',
	));

	/* Sidebar — Right (homepage) */
	register_sidebar(array(
		'name'          => esc_html__('Right Sidebar (Homepage)', 'pst_hebat'),
		'id'            => 'sidebar-right',
		'description'   => esc_html__('Widget area di sidebar kanan homepage. Untuk Materi & Dokumen, dll.', 'pst_hebat'),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-4">',
		'after_title'   => '</h3>',
	));
}
add_action('widgets_init', 'pst_hebat_widgets_init');

/**
 * =============================================
 * CUSTOMIZER — Branding & Hero Section
 * =============================================
 */
function pst_hebat_customize_register($wp_customize) {

	/* --- Section: Navbar --- */
	$wp_customize->add_section('pst_navbar', array(
		'title'    => esc_html__('Navbar', 'pst_hebat'),
		'priority' => 29,
		'description' => esc_html__('Customize all navbar elements: logos, text, and branding.', 'pst_hebat'),
	));

	/* Left navbar — PST Logo */
	$wp_customize->add_setting('navbar_logo', array(
		'default'           => '',
		'sanitize_callback' => 'absint',
	));
	$wp_customize->add_control(new WP_Customize_Media_Control($wp_customize, 'navbar_logo', array(
		'label'       => esc_html__('Navbar Logo (Left)', 'pst_hebat'),
		'description' => esc_html__('Upload logo untuk pojok kiri navbar. Biarkan kosong untuk menggunakan SVG default PST.', 'pst_hebat'),
		'section'     => 'pst_navbar',
		'mime_type'   => 'image',
	)));

	/* Right navbar — MHU Logo */
	$wp_customize->add_setting('mhu_logo', array(
		'default'           => '',
		'sanitize_callback' => 'absint',
	));
	$wp_customize->add_control(new WP_Customize_Media_Control($wp_customize, 'mhu_logo', array(
		'label'       => esc_html__('MHU Logo (Right)', 'pst_hebat'),
		'description' => esc_html__('Upload logo untuk pojok kanan navbar. Biarkan kosong untuk menggunakan SVG default MHU.', 'pst_hebat'),
		'section'     => 'pst_navbar',
		'mime_type'   => 'image',
	)));

	$wp_customize->add_setting('navbar_initials', array(
		'default'           => 'PST',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('navbar_initials', array(
		'label'   => esc_html__('Text: Brand Initials', 'pst_hebat'),
		'section' => 'pst_navbar',
		'type'    => 'text',
	));

	$wp_customize->add_setting('navbar_tagline', array(
		'default'           => 'Hebat',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('navbar_tagline', array(
		'label'   => esc_html__('Text: Brand Tagline (under initials)', 'pst_hebat'),
		'section' => 'pst_navbar',
		'type'    => 'text',
	));

	$wp_customize->add_setting('navbar_brand_full', array(
		'default'           => 'PST / PST Hebat',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('navbar_brand_full', array(
		'label'   => esc_html__('Text: Full Brand Name', 'pst_hebat'),
		'section' => 'pst_navbar',
		'type'    => 'text',
	));

	$wp_customize->add_setting('navbar_brand_motto', array(
		'default'           => 'Peduli · Selamat · Tanggung Jawab',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('navbar_brand_motto', array(
		'label'   => esc_html__('Text: Brand Motto', 'pst_hebat'),
		'section' => 'pst_navbar',
		'type'    => 'text',
	));

	$wp_customize->add_setting('navbar_mhu_initials', array(
		'default'           => 'MHU',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('navbar_mhu_initials', array(
		'label'   => esc_html__('Text: MHU Initials (Right)', 'pst_hebat'),
		'section' => 'pst_navbar',
		'type'    => 'text',
	));

	$wp_customize->add_setting('navbar_mhu_full', array(
		'default'           => 'Mining Holding Indonesia',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('navbar_mhu_full', array(
		'label'   => esc_html__('Text: MHU Full Name (Right)', 'pst_hebat'),
		'section' => 'pst_navbar',
		'type'    => 'text',
	));

	$wp_customize->add_setting('navbar_mhu_motto', array(
		'default'           => 'Mining Holding Indonesia',
		'sanitize_callback' => 'sanitize_text_field',
	));
	$wp_customize->add_control('navbar_mhu_motto', array(
		'label'   => esc_html__('Text: MHU Motto (under initials, right)', 'pst_hebat'),
		'section' => 'pst_navbar',
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

	/* Hero background image */
	$wp_customize->add_setting('hero_bg_image', array(
		'default'           => '',
		'sanitize_callback' => 'absint',
	));
	$wp_customize->add_control(new WP_Customize_Media_Control($wp_customize, 'hero_bg_image', array(
		'label'       => esc_html__('Background Image', 'pst_hebat'),
		'description' => esc_html__('Upload gambar background hero. Ukuran ideal: 1920x600px. Biarkan kosong untuk menggunakan default.', 'pst_hebat'),
		'section'     => 'pst_hero',
		'mime_type'   => 'image',
	)));

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

	/* --- Section: SHE Performance Trend (6-month chart) --- */
	$wp_customize->add_section('pst_she_trend', array(
		'title'    => esc_html__('SHE Performance Trend', 'pst_hebat'),
		'priority' => 34,
	));

	$default_months = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun');
	$default_pst    = array('100', '101', '102', '104', '105', '107');
	$default_psi    = array('78', '80', '82', '85', '86', '88');
	$default_epi    = array('85', '86', '87', '89', '91', '92');

	for ($i = 0; $i < 6; $i++) {
		$idx = $i + 1;

		/* Month label */
		$wp_customize->add_setting('she_trend_month_' . $idx, array(
			'default'           => $default_months[$i],
			'sanitize_callback' => 'sanitize_text_field',
		));
		$wp_customize->add_control('she_trend_month_' . $idx, array(
			'label'   => sprintf(esc_html__('Month %d label', 'pst_hebat'), $idx),
			'section' => 'pst_she_trend',
			'type'    => 'text',
		));

		/* PST value */
		$wp_customize->add_setting('she_trend_pst_' . $idx, array(
			'default'           => $default_pst[$i],
			'sanitize_callback' => 'sanitize_text_field',
		));
		$wp_customize->add_control('she_trend_pst_' . $idx, array(
			'label'   => sprintf(esc_html__('PST — Month %d', 'pst_hebat'), $idx),
			'section' => 'pst_she_trend',
			'type'    => 'number',
		));

		/* PSI value */
		$wp_customize->add_setting('she_trend_psi_' . $idx, array(
			'default'           => $default_psi[$i],
			'sanitize_callback' => 'sanitize_text_field',
		));
		$wp_customize->add_control('she_trend_psi_' . $idx, array(
			'label'   => sprintf(esc_html__('PSI — Month %d', 'pst_hebat'), $idx),
			'section' => 'pst_she_trend',
			'type'    => 'number',
		));

		/* EPI value */
		$wp_customize->add_setting('she_trend_epi_' . $idx, array(
			'default'           => $default_epi[$i],
			'sanitize_callback' => 'sanitize_text_field',
		));
		$wp_customize->add_control('she_trend_epi_' . $idx, array(
			'label'   => sprintf(esc_html__('EPI — Month %d', 'pst_hebat'), $idx),
			'section' => 'pst_she_trend',
			'type'    => 'number',
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

/**
 * Force category-documents.php for all children of Documents category
 */
function pst_hebat_category_template($template) {
	if (is_category()) {
		$cat = get_queried_object();
		if ($cat && $cat->parent) {
			$parent = get_term($cat->parent, 'category');
			if ($parent && $parent->slug === 'documents') {
				$child_template = locate_template('category-documents.php');
				if ($child_template) return $child_template;
			}
		}
	}
	return $template;
}
add_filter('category_template', 'pst_hebat_category_template');

/**
 * Force single-documents-viewer.php for posts in Documents hierarchy
 */
function pst_hebat_single_template($template) {
	if (is_singular('post')) {
		$post_id = get_queried_object_id();
		$cats = wp_get_post_categories($post_id);
		foreach ($cats as $cat_id) {
			$cat = get_term($cat_id, 'category');
			while ($cat && $cat->parent) {
				$parent = get_term($cat->parent, 'category');
				if ($parent && $parent->slug === 'documents') {
					$viewer = locate_template('single-documents-viewer.php');
					if ($viewer) return $viewer;
				}
				$cat = $parent;
			}
		}
	}
	return $template;
}
add_filter('single_template', 'pst_hebat_single_template');

/**
 * =============================================
 * GALLERY — Page-based image gallery
 * Upload images via meta box on a dedicated page.
 * Homepage & gallery page display those images.
 * =============================================
 */

/**
 * Register meta box for Gallery page images
 */
function pst_hebat_add_gallery_meta_box() {
	add_meta_box(
		'pst_hebat_gallery_images',
		esc_html__('Galeri Kegiatan — Images', 'pst_hebat'),
		'pst_hebat_gallery_images_callback',
		'page',
		'normal',
		'high'
	);
}
add_action('add_meta_boxes', 'pst_hebat_add_gallery_meta_box');

function pst_hebat_gallery_images_callback($post) {
	wp_nonce_field('pst_hebat_gallery_save', 'pst_hebat_gallery_nonce');
	$image_ids = get_post_meta($post->ID, '_pst_hebat_gallery_ids', true);
	$ids = !empty($image_ids) ? explode(',', $image_ids) : array();
?>
<div class="pst-hebat-gallery-wrap">
	<input type="hidden" id="pst_hebat_gallery_ids" name="pst_hebat_gallery_ids" value="<?php echo esc_attr($image_ids); ?>">
	<div id="pst-hebat-gallery-preview" style="display:flex;flex-wrap:wrap;gap:10px;margin-bottom:12px;">
		<?php foreach ($ids as $id) : $img = wp_get_attachment_image_url($id, 'thumbnail'); if ($img) : ?>
		<div class="gallery-img" data-id="<?php echo esc_attr($id); ?>" style="position:relative;width:120px;height:120px;overflow:hidden;border-radius:8px;border:1px solid #ddd;">
			<img src="<?php echo esc_url($img); ?>" style="width:100%;height:100%;object-fit:cover;">
			<button type="button" class="remove-gallery-img" style="position:absolute;top:4px;right:4px;background:rgba(0,0,0,0.6);color:#fff;border:none;border-radius:50%;width:22px;height:22px;cursor:pointer;font-size:14px;line-height:1;">&times;</button>
		</div>
		<?php endif; endforeach; ?>
	</div>
	<button type="button" class="button button-primary" id="pst-hebat-add-gallery-images"><?php esc_html_e('Add / Manage Gallery Images', 'pst_hebat'); ?></button>
	<p class="description" style="margin-top:8px;"><?php esc_html_e('Click the button to select or upload images from Media Library. These images will appear on the homepage gallery section.', 'pst_hebat'); ?></p>
</div>
<style>
#pst-hebat-gallery-preview .gallery-img:hover .remove-gallery-img { display:block; }
#pst-hebat-gallery-preview .gallery-img .remove-gallery-img { display:none; }
</style>
<script>
(function($){
	var frame;
	$('#pst-hebat-add-gallery-images').on('click', function(e) {
		e.preventDefault();
		if (frame) { frame.open(); return; }
		frame = wp.media({
			title: '<?php echo esc_js(__('Select Gallery Images', 'pst_hebat')); ?>',
			library: { type: 'image' },
			multiple: true,
			button: { text: '<?php echo esc_js(__('Add to Gallery', 'pst_hebat')); ?>' }
		});
		frame.on('select', function() {
			var selection = frame.state().get('selection');
			var existing = $('#pst_hebat_gallery_ids').val();
			var ids = existing ? existing.split(',') : [];
			selection.each(function(attachment) {
				var id = attachment.id;
				if ($.inArray(String(id), ids) === -1) {
					ids.push(id);
					var thumb = attachment.attributes.sizes.thumbnail ? attachment.attributes.sizes.thumbnail.url : attachment.attributes.url;
					var html = '<div class="gallery-img" data-id="'+id+'" style="position:relative;width:120px;height:120px;overflow:hidden;border-radius:8px;border:1px solid #ddd;">'+
						'<img src="'+thumb+'" style="width:100%;height:100%;object-fit:cover;">'+
						'<button type="button" class="remove-gallery-img" style="position:absolute;top:4px;right:4px;background:rgba(0,0,0,0.6);color:#fff;border:none;border-radius:50%;width:22px;height:22px;cursor:pointer;font-size:14px;line-height:1;">&times;</button>'+
					'</div>';
					$('#pst-hebat-gallery-preview').append(html);
				}
			});
			$('#pst_hebat_gallery_ids').val(ids.join(','));
		});
		frame.open();
	});
	$(document).on('click', '.remove-gallery-img', function() {
		var container = $(this).closest('.gallery-img');
		var id = container.data('id');
		var ids = $('#pst_hebat_gallery_ids').val().split(',').filter(function(v) { return v != id; });
		$('#pst_hebat_gallery_ids').val(ids.join(','));
		container.remove();
	});
})(jQuery);
</script>
<?php
}

function pst_hebat_save_gallery_meta($post_id) {
	if (!isset($_POST['pst_hebat_gallery_nonce']) || !wp_verify_nonce($_POST['pst_hebat_gallery_nonce'], 'pst_hebat_gallery_save')) return;
	if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
	if (!current_user_can('edit_post', $post_id)) return;

	if (isset($_POST['pst_hebat_gallery_ids'])) {
		$ids = sanitize_text_field($_POST['pst_hebat_gallery_ids']);
		$ids = preg_replace('/[^0-9,]/', '', $ids);
		update_post_meta($post_id, '_pst_hebat_gallery_ids', $ids);
	} else {
		delete_post_meta($post_id, '_pst_hebat_gallery_ids');
	}
}
add_action('save_post', 'pst_hebat_save_gallery_meta');

/**
 * Helper: get gallery images from the designated gallery page
 */
function pst_hebat_get_gallery_images($count = 6) {
	$page = get_page_by_path('gallery');
	if (!$page) return array();

	$ids_str = get_post_meta($page->ID, '_pst_hebat_gallery_ids', true);
	if (empty($ids_str)) return array();

	$ids = explode(',', $ids_str);
	$ids = array_slice($ids, 0, $count);

	$images = array();
	foreach ($ids as $id) {
		$url = wp_get_attachment_image_url($id, 'medium');
		$full = wp_get_attachment_image_url($id, 'full');
		$alt = get_post_meta($id, '_wp_attachment_image_alt', true);
		$caption = wp_get_attachment_caption($id) ?: $alt ?: __('Gallery Image', 'pst_hebat');
		if ($url) {
			$images[] = array(
				'id'      => $id,
				'url'     => $url,
				'full'    => $full,
				'caption' => $caption,
			);
		}
	}
	return $images;
}

/**
 * =============================================
 * PDF DOCUMENT META BOX (for Documents category)
 * =============================================
 */
function pst_hebat_is_document_post($post = null) {
	if (!$post) $post = get_post();
	if (!$post) return false;
	$doc_parent = get_category_by_slug('documents');
	if (!$doc_parent) return false;
	$cats = wp_get_post_categories($post->ID);
	foreach ($cats as $cat_id) {
		$cat = get_term($cat_id, 'category');
		while ($cat) {
			if ($cat->term_id === $doc_parent->term_id) return true;
			if ($cat->parent === 0) break;
			$cat = get_term($cat->parent, 'category');
		}
	}
	return false;
}

function pst_hebat_add_pdf_meta_box() {
	global $post;
	if (!pst_hebat_is_document_post($post)) return;
	add_meta_box(
		'pst_hebat_pdf',
		esc_html__('PDF Document', 'pst_hebat'),
		'pst_hebat_pdf_meta_box_callback',
		'post',
		'side',
		'high'
	);
}
add_action('add_meta_boxes', 'pst_hebat_add_pdf_meta_box');

function pst_hebat_pdf_meta_box_callback($post) {
	wp_nonce_field('pst_hebat_pdf_save', 'pst_hebat_pdf_nonce');
	$pdf_id  = get_post_meta($post->ID, '_pst_hebat_pdf_id', true);
	$pdf_url = $pdf_id ? wp_get_attachment_url($pdf_id) : '';
	$pdf_name = '';
	$pdf_size = '';
	if ($pdf_id) {
		$pdf_name = get_the_title($pdf_id);
		$bytes = (int) get_post_meta($pdf_id, '_wp_attachment_metadata', true);
		if (!$bytes && $pdf_url) {
			$head = @wp_remote_head($pdf_url, array('timeout' => 5));
			if (!is_wp_error($head) && isset($head['headers']['content-length'])) {
				$bytes = (int) $head['headers']['content-length'];
			}
		}
		if ($bytes) {
			$pdf_size = $bytes > 1048576 ? round($bytes / 1048576, 1) . ' MB' : round($bytes / 1024) . ' KB';
		}
	}
?>
	<div class="pdf-meta-box">
		<?php if ($pdf_url) : ?>
		<div style="background:#f8fafc;border:1px solid #e2e8f0;border-radius:8px;padding:10px;margin-bottom:10px;">
			<div class="flex items-center gap-2" style="display:flex;align-items:center;gap:8px;">
				<svg width="20" height="24" viewBox="0 0 24 24" fill="none" stroke="#ef4444" stroke-width="1.8" style="shrink:0;"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
				<div style="min-width:0;">
					<div style="font-size:12px;font-weight:600;color:#1e293b;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" title="<?php echo esc_attr($pdf_name); ?>">PDF Attached</div>
					<div style="font-size:11px;color:#94a3b8;">
						<?php echo $pdf_size ? esc_html($pdf_size) : 'PDF'; ?>
					</div>
				</div>
			</div>
		</div>
		<?php endif; ?>
		<p style="margin:0 0 6px;">
			<label style="font-size:12px;font-weight:600;display:block;margin-bottom:4px;"><?php esc_html_e('PDF File', 'pst_hebat'); ?></label>
			<input type="url" id="pst_hebat_pdf_url" name="pst_hebat_pdf_url" value="<?php echo esc_url($pdf_url); ?>" style="width:100%;font-size:12px;padding:4px 6px;box-sizing:border-box;" placeholder="<?php esc_attr_e('Paste PDF URL or click Upload', 'pst_hebat'); ?>">
		</p>
		<p style="margin:0;display:flex;gap:6px;">
			<button type="button" class="button button-primary" id="pst-hebat-pdf-upload" style="margin:0;">
				<?php esc_html_e('Upload PDF', 'pst_hebat'); ?>
			</button>
			<?php if ($pdf_url) : ?>
			<a href="<?php echo esc_url($pdf_url); ?>" target="blank" class="button" style="margin:0;text-decoration:none;">
				<?php esc_html_e('Preview', 'pst_hebat'); ?>
			</a>
			<?php endif; ?>
		</p>
		<script>
		(function($){
			$('#pst-hebat-pdf-upload').on('click', function(e) {
				e.preventDefault();
				var frame = wp.media({
					title: '<?php echo esc_js(__('Upload PDF', 'pst_hebat')); ?>',
					library: { type: 'application/pdf' },
					multiple: false
				});
				frame.on('select', function() {
					var att = frame.state().get('selection').first().toJSON();
					$('#pst_hebat_pdf_url').val(att.url);
				});
				frame.open();
			});
		})(jQuery);
		</script>
	</div>
<?php
}

function pst_hebat_save_pdf_meta($post_id) {
	if (!isset($_POST['pst_hebat_pdf_nonce']) || !wp_verify_nonce($_POST['pst_hebat_pdf_nonce'], 'pst_hebat_pdf_save')) return;
	if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) return;
	if (!current_user_can('edit_post', $post_id)) return;

	if (isset($_POST['pst_hebat_pdf_url'])) {
		$url = esc_url_raw($_POST['pst_hebat_pdf_url']);
		if (!empty($url)) {
			$attachment_id = attachment_url_to_postid($url);
			update_post_meta($post_id, '_pst_hebat_pdf_id', $attachment_id);
			update_post_meta($post_id, '_pst_hebat_pdf_url', $url);
		} else {
			delete_post_meta($post_id, '_pst_hebat_pdf_id');
			delete_post_meta($post_id, '_pst_hebat_pdf_url');
		}
	}
}
add_action('save_post', 'pst_hebat_save_pdf_meta');

/**
 * =============================================
 * SHE TREND CHART HELPERS
 * =============================================
 */

/** Map a data value to SVG Y coordinate.
 *  chart range: value 120 → y=40, value 20 → y=215
 */
function pst_hebat_she_value_to_y($val) {
	$val = max(0, min(120, (float) $val));
	return round(40 + (120 - $val) * 1.75, 1);
}

/** Get trend percentage string from first & last value */
function pst_hebat_she_trend_pct($first, $last) {
	$first = (float) $first;
	$last  = (float) $last;
	if ($first == 0) return '+0.0%';
	$pct = round(($last - $first) / $first * 100, 1);
	$sign = $pct >= 0 ? '+' : '';
	return $sign . $pct . '%';
}

/** Get all 6-month trend data from Customizer mods */
function pst_hebat_get_she_trend_data() {
	$months = $pst_vals = $psi_vals = $epi_vals = array();
	for ($i = 1; $i <= 6; $i++) {
		$months[]  = get_theme_mod('she_trend_month_' . $i, '');
		$pst_vals[] = (float) get_theme_mod('she_trend_pst_' . $i, '0');
		$psi_vals[] = (float) get_theme_mod('she_trend_psi_' . $i, '0');
		$epi_vals[] = (float) get_theme_mod('she_trend_epi_' . $i, '0');
	}
	return array(
		'months'  => $months,
		'pst'     => $pst_vals,
		'psi'     => $psi_vals,
		'epi'     => $epi_vals,
		'pst_trend' => pst_hebat_she_trend_pct($pst_vals[0], $pst_vals[5]),
		'psi_trend' => pst_hebat_she_trend_pct($psi_vals[0], $psi_vals[5]),
		'epi_trend' => pst_hebat_she_trend_pct($epi_vals[0], $epi_vals[5]),
	);
}

/** Generate the SHE Trend SVG from data */
function pst_hebat_render_she_trend_svg($data) {
	$x_positions = array(90, 200, 310, 420, 530, 640);
	$chart_top = 40;
	$chart_bot = 215;
	$chart_h   = $chart_bot - $chart_top;

	/* --- build Y arrays --- */
	$pst_y = array_map('pst_hebat_she_value_to_y', $data['pst']);
	$psi_y = array_map('pst_hebat_she_value_to_y', $data['psi']);
	$epi_y = array_map('pst_hebat_she_value_to_y', $data['epi']);

	/* --- helper: smooth bezier path --- */
	function _she_path($vals, $x_pos, $ys) {
		$n = count($ys);
		$path = 'M' . $x_pos[0] . ',' . $ys[0];
		for ($i = 1; $i < $n; $i++) {
			$cp = round(($x_pos[$i] - $x_pos[$i-1]) * 0.5);
			$path .= ' Q' . ($x_pos[$i-1] + $cp) . ',' . $ys[$i-1]
			       . ' ' . $x_pos[$i] . ',' . $ys[$i];
		}
		return $path;
	}

	function _she_area($x_pos, $ys, $bot) {
		$n = count($ys);
		$path = 'M' . $x_pos[0] . ',' . $ys[0];
		for ($i = 1; $i < $n; $i++) {
			$cp = round(($x_pos[$i] - $x_pos[$i-1]) * 0.5);
			$path .= ' Q' . ($x_pos[$i-1] + $cp) . ',' . $ys[$i-1]
			       . ' ' . $x_pos[$i] . ',' . $ys[$i];
		}
		$path .= ' L' . $x_pos[$n-1] . ',' . $bot . ' L' . $x_pos[0] . ',' . $bot . 'Z';
		return $path;
	}

	$pst_line = _she_path($data['pst'], $x_positions, $pst_y);
	$psi_line = _she_path($data['psi'], $x_positions, $psi_y);
	$epi_line = _she_path($data['epi'], $x_positions, $epi_y);
	$pst_area = _she_area($x_positions, $pst_y, $chart_bot);
	$psi_area = _she_area($x_positions, $psi_y, $chart_bot);
	$epi_area = _she_area($x_positions, $epi_y, $chart_bot);

	/* --- grid lines & Y labels --- */
	$grid_vals = array(120, 100, 80, 60, 40, 20);
	$grid_svg = '';
	foreach ($grid_vals as $gv) {
		$gy = pst_hebat_she_value_to_y($gv);
		$grid_svg .= '<line x1="55" y1="' . $gy . '" x2="690" y2="' . $gy . '" stroke="#e2e8f0" stroke-width="0.5"/>';
		$grid_svg .= '<text x="47" y="' . ($gy + 4) . '" text-anchor="end" fill="#64748b" font-size="9">' . $gv . '</text>';
	}

	/* --- data circles, value labels --- */
	$series = array(
		'pst' => array('color' => '#10b981', 'y' => $pst_y, 'vals' => $data['pst']),
		'psi' => array('color' => '#0B63CE', 'y' => $psi_y, 'vals' => $data['psi']),
		'epi' => array('color' => '#0CA7B4', 'y' => $epi_y, 'vals' => $data['epi']),
	);

	$circles_svg = '';
	foreach ($series as $s) {
		$label_above = ($s['color'] === '#10b981');
		for ($i = 0; $i < 6; $i++) {
			$is_last = ($i === 5);
			$r = $is_last ? ($label_above ? 7 : 6) : ($label_above ? 5.5 : 5);
			$sw = $is_last ? 2.5 : 2;
			$fy = $label_above ? 8 : 0;
			$lx = $s['y'][$i] - 6;
			if ($is_last) {
				/* last dot: white label inside */
				$lx = $s['y'][$i];
				$anchor = 'middle';
				$fill = '#fff';
				$fs = $label_above ? 10 : 9;
			} else {
				$anchor = 'middle';
				$fill = $s['color'];
				$fs = 8;
			}
			$circles_svg .= '<circle cx="' . $x_positions[$i] . '" cy="' . $s['y'][$i] . '" r="' . $r . '" fill="' . ($is_last ? $s['color'] : $s['color']) . '" stroke="#fff" stroke-width="' . $sw . '"/>';
			$circles_svg .= '<text x="' . $x_positions[$i] . '" y="' . ($s['y'][$i] - 6) . '" text-anchor="middle" fill="' . $fill . '" font-size="' . $fs . '" font-weight="700">' . $s['vals'][$i] . '</text>';
		}
	}

	/* --- X-axis labels --- */
	$x_labels = '';
	for ($i = 0; $i < 6; $i++) {
		$x_labels .= '<text x="' . $x_positions[$i] . '" y="238" text-anchor="middle" fill="#475569" font-size="10" font-weight="600">' . esc_html($data['months'][$i]) . '</text>';
	}

	/* --- render SVG --- */
	echo '<svg class="w-full" viewBox="0 0 700 250" preserveAspectRatio="none" style="height:210px;" aria-label="' . esc_attr__('SHE Performance Trend Chart', 'pst_hebat') . '">';
	echo '<defs>';
	echo '<linearGradient id="pstGrad" x1="0" y1="0" x2="0" y2="1"><stop offset="0%" stop-color="#10b981" stop-opacity="0.25"/><stop offset="100%" stop-color="#10b981" stop-opacity="0"/></linearGradient>';
	echo '<linearGradient id="psiGrad" x1="0" y1="0" x2="0" y2="1"><stop offset="0%" stop-color="#0B63CE" stop-opacity="0.2"/><stop offset="100%" stop-color="#0B63CE" stop-opacity="0"/></linearGradient>';
	echo '<linearGradient id="epiGrad" x1="0" y1="0" x2="0" y2="1"><stop offset="0%" stop-color="#0CA7B4" stop-opacity="0.2"/><stop offset="100%" stop-color="#0CA7B4" stop-opacity="0"/></linearGradient>';
	echo '</defs>';
	echo '<rect x="55" y="5" width="635" height="215" fill="#F5F8FC" rx="4"/>';
	echo $grid_svg;

	/* Area fills */
	echo '<path d="' . $psi_area . '" fill="url(#psiGrad)"/>';
	echo '<path d="' . $epi_area . '" fill="url(#epiGrad)"/>';
	echo '<path d="' . $pst_area . '" fill="url(#pstGrad)"/>';

	/* Lines */
	echo '<path d="' . $psi_line . '" fill="none" stroke="#0B63CE" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>';
	echo '<path d="' . $epi_line . '" fill="none" stroke="#0CA7B4" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>';
	echo '<path d="' . $pst_line . '" fill="none" stroke="#10b981" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round"/>';

	/* Circles + value labels */
	echo $circles_svg;

	/* X labels */
	echo $x_labels;
	echo '</svg>';
}

/**
 * Comment callback — style comment list items
 */
function pst_hebat_comment_callback($comment, $args, $depth) {
	$tag = ('div' === $args['style']) ? 'div' : 'li';
?>
	<<?php echo $tag; ?> id="comment-<?php comment_ID(); ?>" <?php comment_class('flex gap-3 py-3 border-b border-slate-100 last:border-0'); ?>>
		<div class="shrink-0">
			<?php echo get_avatar($comment, 44, '', '', array('class' => 'rounded-full w-10 h-10')); ?>
		</div>
		<div class="flex-1 min-w-0">
			<div class="flex items-center gap-2 mb-0.5">
				<span class="text-sm font-semibold text-slate-800"><?php comment_author_link(); ?></span>
				<span class="text-xs text-slate-400">
					<a href="<?php echo esc_url(get_comment_link($comment->comment_ID)); ?>" class="text-slate-400 hover:text-brand-600 no-underline">
						<?php printf(esc_html__('%s lalu', 'pst_hebat'), human_time_diff(get_comment_time('U'), current_time('timestamp'))); ?>
					</a>
				</span>
			</div>
			<div class="text-sm text-slate-600 leading-relaxed">
				<?php comment_text(); ?>
			</div>
			<?php if ('0' === $comment->comment_approved) : ?>
				<p class="text-xs text-amber-600 mt-1"><?php esc_html_e('Komentar Anda sedang menunggu moderasi.', 'pst_hebat'); ?></p>
			<?php endif; ?>
			<div class="mt-1">
				<?php
				comment_reply_link(array_merge($args, array(
					'depth'     => $depth,
					'max_depth' => $args['max_depth'],
					'before'    => '<span class="text-xs font-medium text-brand-600 hover:text-brand-700">',
					'after'     => '</span>',
				)));
				?>
			</div>
		</div>
	<?php
}

/**
 * =============================================
 * SIDEBAR HELPERS — Render sub-page links
 * =============================================
 */
function pst_hebat_sidebar_page_group($parent_id, $title) {
	$children = get_pages(array('child_of' => $parent_id, 'sort_column' => 'menu_order, post_title'));
	if (!$children) return;
	?>
	<div class="pt-4 border-t border-slate-200">
		<h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3"><?php echo esc_html($title); ?></h3>
		<div class="space-y-1">
			<?php foreach ($children as $child) : ?>
				<a href="<?php echo esc_url(get_permalink($child->ID)); ?>" class="flex items-center gap-2.5 px-3 py-2 rounded-lg text-sm text-slate-500 hover:text-slate-700 hover:bg-slate-100 transition no-underline">
					<svg class="w-3.5 h-3.5 text-slate-400 shrink-0" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" aria-hidden="true"><path d="M14 2H6a2 2 0 00-2 2v16a2 2 0 002 2h12a2 2 0 002-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
					<?php echo esc_html(get_the_title($child->ID)); ?>
				</a>
			<?php endforeach; ?>
		</div>
	</div>
	<?php
}
