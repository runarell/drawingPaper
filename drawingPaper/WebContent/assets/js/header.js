//window.onload = () => 
$(document).ready(function (){
    $('.style_UserButtonWrapper').on("click", function () {
        if ($(".SNB_Wrapper").is(":hidden")) {
            $(".SNB_Wrapper").css("display", "flex");
            $(".style_HeaderContentLayout").attr('class', 'style_HeaderContentLayout_fXoiVM');
        }
        else if ($(".SNB_Wrapper").is(":visible")) {
            $(".SNB_Wrapper").css("display", "none");
            $(".style_HeaderContentLayout_fXoiVM").attr('class', 'style_HeaderContentLayout');
        }
    });
    
    $('.style_CategoryWrapper_ca').on("mouseenter", function (e) { 
        $(".style_CategoryWrapper_ca").attr('class', 'style_ExtendedCategorySection_KjkNT');
        $(".style_CategoryContainer")                      
        .slideDown(500);    
        
    }); 
   
    $('.style_CategoryContainer').on("mouseleave", function (e) {
        $(".style_ExtendedCategorySection_KjkNT").attr('class', 'style_CategoryWrapper_ca');
        $(".style_CategoryContainer")                      
        .slideUp(500);    
        
    });
    
    $('html').click(function(e) {
        $(".style_ExtendedCategorySection_KjkNT").attr('class', 'style_CategoryWrapper_ca');
        $(".style_CategoryContainer")                      
        .slideUp(500);
    });
});
