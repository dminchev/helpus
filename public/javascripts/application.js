function fixContent()
{
  var height = $(".content").height();
  
  if (height % 340 != 0) {
    var a = height/340;
    var newheight = Math.ceil(a)*340;
    $(".content").height( newheight + "px");
    var pageWidth = $(window).width();
    var pageHeight = $("body").height()+10;
    var popupPositionLeft = (pageWidth-960)/2;
    $(".white_content").attr("style", "left: " + popupPositionLeft + "px;");
    $("#fade.black_overlay").height(pageHeight);
    //$(".left_panel_content").height( newheight-96 + "px");
  }
}

function fixCover()
{
  $("#cover-image").height("0px");
  var height = $(window).height();
  $("#cover-image").height(height-20 + "px");
}

function setGalleryArrows()
{
  var prevPageHref = $(".previous_page").attr("href");
  var nextPageHref = $(".next_page").attr("href");
  
  $(".arrow-left").attr("href", prevPageHref);
  $(".arrow-right").attr("href", nextPageHref);
  $(".pagination").attr("style", "display:none;");
}

function roll(img_name, img_src)
{
  document[img_name].src = img_src;
}

$(document).ready(function () {
	$("ul.menu_body li:even").addClass("alt");
  $('img.menu_head').click(function () {
	  $('ul.menu_body').slideToggle('medium');
  });
});
    

var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-21035414-1']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();


