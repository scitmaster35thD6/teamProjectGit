/**
 * Data table update when selecter has changed
 */
window.onload = function() {
	
	$("#border-with-select2").on(
			'select2:select',
			function() {
				location.replace('exhibitionList?selectedCountry='
						+ $("#border-with-select2").find(':selected').val());
			});
}