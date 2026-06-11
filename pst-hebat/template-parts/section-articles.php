<?php
/**
 * Template Part — Articles Section (dynamic from WP)
 *
 * @package PST_Hebat
 */

$artikel_query = new WP_Query(array(
	'category_name' => 'artikel',
	'posts_per_page' => 3,
));

$artikel_total = wp_count_posts('post');
$artikel_cat = get_category_by_slug('artikel');
$artikel_count = $artikel_cat ? $artikel_cat->count : 0;
?>
<div class="bg-white border border-slate-200 rounded-xl p-4 sm:p-5 shadow-sm mb-5">
	<div class="flex items-center justify-between mb-4">
		<h3 class="text-sm font-semibold text-slate-700"><?php esc_html_e('Artikel & Informasi', 'pst_hebat'); ?></h3>
		<a href="<?php echo esc_url(get_category_link($artikel_cat)); ?>" class="text-xs text-brand-600 hover:text-brand-700 font-medium no-underline"><?php esc_html_e('Lihat semua', 'pst_hebat'); ?> &rarr;</a>
	</div>
	<div class="space-y-4" id="articles-list">

		<?php if ($artikel_query->have_posts()) : while ($artikel_query->have_posts()) : $artikel_query->the_post(); ?>
		<article class="group">
			<a href="<?php the_permalink(); ?>" class="no-underline">
			<div class="flex gap-3 sm:gap-4">
				<div class="w-20 h-20 sm:w-24 sm:h-20 rounded-lg overflow-hidden shrink-0 bg-slate-100">
					<?php if (has_post_thumbnail()) : ?>
						<?php the_post_thumbnail('thumbnail', array('class' => 'w-full h-full object-cover group-hover:scale-105 transition-transform duration-300')); ?>
					<?php else : ?>
						<img src="<?php echo esc_url(get_template_directory_uri()); ?>/assets/images/gallery/mining-ops-1.jpg" alt="" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300" loading="lazy">
					<?php endif; ?>
				</div>
				<div class="min-w-0 flex-1">
					<h4 class="text-sm font-semibold text-slate-800 group-hover:text-brand-600 transition-colors leading-snug"><?php the_title(); ?></h4>
					<p class="text-xs text-slate-500 mt-1 leading-relaxed line-clamp-2"><?php echo esc_html(wp_trim_words(get_the_excerpt() ?: get_the_content(), 25)); ?></p>
					<div class="flex items-center gap-2 mt-2 text-[10px] text-slate-400">
						<span class="text-brand-600 font-medium"><?php echo esc_html(ceil(mb_strlen(strip_tags(get_the_content())) / 1000) . ' menit baca'); ?></span>
						<span>&middot;</span>
						<span><?php echo get_the_date('j M Y'); ?></span>
					</div>
				</div>
			</div>
			</a>
		</article>
		<?php endwhile; wp_reset_postdata(); endif; ?>

	</div>
	<!-- Pagination -->
	<?php if ($artikel_count > 3) : ?>
	<div class="flex items-center justify-between mt-5 pt-4 border-t border-slate-100">
		<span class="text-xs text-slate-400"><?php printf(esc_html__('Menampilkan 1-3 dari %s artikel', 'pst_hebat'), $artikel_count); ?></span>
		<div class="flex items-center gap-1">
			<a href="<?php echo esc_url(get_category_link($artikel_cat)); ?>" class="text-xs text-brand-600 hover:text-brand-700 font-medium no-underline"><?php esc_html_e('Lihat semua', 'pst_hebat'); ?> &rarr;</a>
		</div>
	</div>
	<?php endif; ?>
</div>
