$(document).ready(function(){
  $('#faculty-slider').bxSlider({
    auto: true,
  	captions: true,
    controls: false,
    pager: true,
  	adaptiveHeight: true,
  	responsive: true
  });

  $('a[rel=faculty-fancy-box-link]').fancybox({
    maxWidth	: 700,
    maxHeight	: 500,
    fitToView	: true,
    width		: '70%',
    height		: '70%',
    autoSize	: false,
    closeClick	: false,
    openEffect	: 'none',
    closeEffect	: 'none'
  });

  $('a[rel=student-fancy-box-link]').fancybox({
		maxWidth	: 700,
		maxHeight	: 500,
		fitToView	: true,
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});

});
