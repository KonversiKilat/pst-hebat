<?php
/**
 * Comments template — PST Hebat
 * Styled with Tailwind CSS
 *
 * @package PST_Hebat
 */

if (post_password_required()) {
	return;
}
?>

<div id="comments" class="comments-area mt-8 pt-6 border-t border-slate-200">

	<?php if (have_comments()) : ?>
		<h2 class="text-base font-semibold text-slate-800 mb-4">
			<?php
			$comment_count = get_comments_number();
			printf(
				esc_html(_nx('%s Komentar', '%s Komentar', $comment_count, 'comments title', 'pst_hebat')),
				esc_html(number_format_i18n($comment_count))
			);
			?>
		</h2>

		<ol class="comment-list space-y-4 mb-8">
			<?php
			wp_list_comments(array(
				'style'       => 'ol',
				'short_ping'  => true,
				'avatar_size' => 48,
				'callback'    => 'pst_hebat_comment_callback',
			));
			?>
		</ol>

		<?php
		the_comments_pagination(array(
			'prev_text' => '&larr; ' . esc_html__('Sebelumnya', 'pst_hebat'),
			'next_text' => esc_html__('Selanjutnya', 'pst_hebat') . ' &rarr;',
		));
		?>
	<?php endif; ?>

	<?php if (!comments_open() && get_comments_number() && post_type_supports(get_post_type(), 'comments')) : ?>
		<p class="text-sm text-slate-500"><?php esc_html_e('Komentar ditutup.', 'pst_hebat'); ?></p>
	<?php endif; ?>

	<?php
	$commenter = wp_get_current_commenter();
	$req = get_option('require_name_email');
	$aria_req = ($req ? " required" : '');

	comment_form(array(
		'title_reply_before' => '<h3 id="reply-title" class="text-base font-semibold text-slate-800 mb-3">',
		'title_reply_after'  => '</h3>',
		'cancel_reply_before' => ' <small class="ml-2">',
		'cancel_reply_after'  => '</small>',
		'class_submit'       => 'px-5 py-2 bg-brand-600 hover:bg-brand-700 text-white text-sm font-semibold rounded-lg transition cursor-pointer border-0',
		'label_submit'       => esc_html__('Kirim Komentar', 'pst_hebat'),
		'comment_field'      => '<p class="comment-form-comment mb-3">' .
			'<label for="comment" class="block text-sm font-medium text-slate-700 mb-1">' . esc_html__('Komentar', 'pst_hebat') . ' <span class="text-red-500">*</span></label>' .
			'<textarea id="comment" name="comment" cols="45" rows="4" class="w-full border border-slate-300 rounded-lg px-3 py-2 text-sm text-slate-700 placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-brand-500/40 focus:border-brand-500/60 transition" required></textarea></p>',
		'fields'             => array(
			'author' => '<p class="comment-form-author mb-3">' .
				'<label for="author" class="block text-sm font-medium text-slate-700 mb-1">' . esc_html__('Nama', 'pst_hebat') . ($req ? ' <span class="text-red-500">*</span>' : '') . '</label>' .
				'<input id="author" name="author" type="text" value="' . esc_attr($commenter['comment_author']) . '" size="30" class="w-full border border-slate-300 rounded-lg px-3 py-2 text-sm text-slate-700 placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-brand-500/40 focus:border-brand-500/60 transition"' . $aria_req . '></p>',
			'email'  => '<p class="comment-form-email mb-3">' .
				'<label for="email" class="block text-sm font-medium text-slate-700 mb-1">' . esc_html__('Email', 'pst_hebat') . ($req ? ' <span class="text-red-500">*</span>' : '') . '</label>' .
				'<input id="email" name="email" type="email" value="' . esc_attr($commenter['comment_author_email']) . '" size="30" class="w-full border border-slate-300 rounded-lg px-3 py-2 text-sm text-slate-700 placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-brand-500/40 focus:border-brand-500/60 transition"' . $aria_req . '></p>',
			'url'    => '<p class="comment-form-url mb-3">' .
				'<label for="url" class="block text-sm font-medium text-slate-700 mb-1">' . esc_html__('Website', 'pst_hebat') . '</label>' .
				'<input id="url" name="url" type="url" value="' . esc_attr($commenter['comment_author_url']) . '" size="30" class="w-full border border-slate-300 rounded-lg px-3 py-2 text-sm text-slate-700 placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-brand-500/40 focus:border-brand-500/60 transition"></p>',
		),
	));
	?>
</div>
