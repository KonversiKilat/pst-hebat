<?php
/**
 * Comments template
 *
 * @package WPSquad
 */

if ( post_password_required() ) {
	return;
}
?>

<div id="comments" class="comments-area mt-12 pt-8 border-t">

	<?php if ( have_comments() ) : ?>

		<h2 class="comments-title text-2xl font-bold mb-6">
			<?php
			$comment_count = get_comments_number();
			if ( 1 === $comment_count ) {
				printf(
					/* translators: %s: post title */
					esc_html__( 'One thought on &ldquo;%s&rdquo;', 'pst_hebat' ),
					'<span>' . wp_kses_post( get_the_title() ) . '</span>'
				);
			} else {
				printf(
					/* translators: 1: number of comments, 2: post title */
					esc_html( _nx( '%1$s thought on &ldquo;%2$s&rdquo;', '%1$s thoughts on &ldquo;%2$s&rdquo;', $comment_count, 'comments title', 'pst_hebat' ) ),
					esc_html( number_format_i18n( $comment_count ) ),
					'<span>' . wp_kses_post( get_the_title() ) . '</span>'
				);
			}
			?>
		</h2>

		<ol class="comment-list space-y-4">
			<?php
			wp_list_comments( array(
				'style'      => 'ol',
				'short_ping' => true,
			) );
			?>
		</ol>

		<?php
		the_comments_pagination( array(
			'prev_text' => esc_html__( 'Previous', 'pst_hebat' ),
			'next_text' => esc_html__( 'Next', 'pst_hebat' ),
		) );
		?>

	<?php endif; ?>

	<?php
	comment_form( array(
		'class_submit' => 'bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700',
	) );
	?>

</div>
