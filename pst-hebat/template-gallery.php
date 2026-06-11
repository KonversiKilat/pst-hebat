<?php
/**
 * Template Name: Gallery Page
 * Description: Full gallery page displaying images from the gallery meta box.
 *
 * @package PST_Hebat
 */

get_header();
?>

<main class="flex-1">
	<div class="max-w-screen-2xl mx-auto px-4 sm:px-6 lg:px-8 py-8">

		<?php while (have_posts()) : the_post(); ?>

		<!-- Page header -->
		<div class="mb-8">
			<h1 class="text-3xl md:text-4xl font-black text-gray-900"><?php the_title(); ?></h1>
			<?php if (has_excerpt()) : ?>
			<p class="mt-2 text-base text-gray-500"><?php echo esc_html(get_the_excerpt()); ?></p>
			<?php endif; ?>
		</div>

		<?php
		$all_images = pst_hebat_get_gallery_images(100); // get all images
		if (!empty($all_images)) :
		?>

		<!-- Image count -->
		<p class="text-sm text-gray-400 mb-4"><?php echo count($all_images); ?> <?php esc_html_e('photos', 'pst_hebat'); ?></p>

		<!-- Gallery grid -->
		<div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3 md:gap-4">
			<?php foreach ($all_images as $img) : ?>
			<a href="<?php echo esc_url($img['full']); ?>" class="group relative block rounded-xl overflow-hidden bg-slate-100 aspect-square no-underline" target="_blank" rel="noopener">
				<img src="<?php echo esc_url($img['url']); ?>"
					 alt="<?php echo esc_attr($img['caption']); ?>"
					 class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
					 loading="lazy">
				<div class="absolute inset-0 bg-gradient-to-t from-black/40 to-transparent opacity-0 group-hover:opacity-100 transition-opacity flex items-end p-3">
					<span class="text-xs text-white font-medium"><?php echo esc_html($img['caption']); ?></span>
				</div>
			</a>
			<?php endforeach; ?>
		</div>

		<?php else : ?>

		<!-- Empty state -->
		<div class="text-center py-20">
			<svg class="w-16 h-16 mx-auto text-gray-300 mb-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" aria-hidden="true">
				<rect x="3" y="3" width="18" height="18" rx="2" ry="2"/>
				<circle cx="8.5" cy="8.5" r="1.5"/>
				<polyline points="21 15 16 10 5 21"/>
			</svg>
			<h3 class="text-lg font-semibold text-gray-500 mb-1"><?php esc_html_e('Belum ada gambar', 'pst_hebat'); ?></h3>
			<p class="text-sm text-gray-400"><?php esc_html_e('Gallery images akan muncul setelah admin mengunggah gambar di halaman ini.', 'pst_hebat'); ?></p>
		</div>

		<?php endif; ?>

		<?php endwhile; ?>

	</div>
</main>

<?php
get_footer();
