if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
        $(document).ready(function(){

            $(".close").click(function(){
              $(".alert").removeClass("in");
            });
        });    
}
