$(document).ready(function () {
    $('#boxBtn2').click(function () {
        $('#hiddenBox2').fadeToggle(100);
    })
    
    $('.heartcon').click(function () {
    	if ($('.heartcon').hasClass('on')) {
    		$(this).removeClass('on');
    	} else {
    		$(this).addClass('on');
    	}
    })
});
