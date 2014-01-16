$(document).ready(function(){
  $('#courses-slider').bxSlider({
    auto: true,
  	captions: true,
    controls: false,
    pager: true,
  	adaptiveHeight: true,
  	responsive: true
  });

  //Note, it has to be in this!
  /*$('.student-box').click(function() {
  	$(this).children('div').fadeIn();
  });

  $('.student-box-expand').click(function(){ return false; });
  $(document).one("click", function() { $('.student-box-expand').fadeOut(); });

	*/
  //Try it with fancy box!
  $('a[rel=underg-courses]').fancybox({
		maxWidth	: 600,
		maxHeight	: 400,
		fitToView	: true,
		width		  : '50%',
		height		: '50%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});

  $('a[rel=grad-courses]').fancybox({
    maxWidth  : 600,
    maxHeight : 400,
    fitToView : true,
    width     : '50%',
    height    : '50%',
    autoSize  : false,
    closeClick  : false,
    openEffect  : 'none',
    closeEffect : 'none'
  });
});
