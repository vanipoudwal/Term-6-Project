jQuery(document).ready(function($){
	jQuery('a[href="#"]').on('click', function(e){
		e.preventDefault();
		$(this).toggleClass("btn-success");
	});
});