<?php
/**
 * Search form template
 *
 * @package WPSquad
 */
?>

<form role="search" method="get" action="<?php echo esc_url( home_url( '/' ) ); ?>" class="search-form flex gap-2">
	<label class="screen-reader-text" for="search-field"><?php esc_html_e( 'Search', 'pst_hebat' ); ?></label>
	<input
		type="search"
		id="search-field"
		name="s"
		placeholder="<?php esc_attr_e( 'Search...', 'pst_hebat' ); ?>"
		value="<?php echo esc_attr( get_search_query() ); ?>"
		class="flex-grow border rounded px-4 py-2"
	>
	<button type="submit" class="bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700">
		<?php esc_html_e( 'Search', 'pst_hebat' ); ?>
	</button>
</form>
