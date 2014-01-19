$(document).ready(function(){
  $('#faculty-slider').bxSlider({
    auto: true,
  	captions: true,
    controls: false,
    pager: true,
  	adaptiveHeight: true,
  	responsive: true
  });

  //Try it with fancy box!
  $('a[rel=student-fancybox-link]').fancybox({
		maxWidth	: 800,
		maxHeight	: 600,
		fitToView	: true,
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
});
