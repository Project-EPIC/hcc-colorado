
$(document).ready(function(){
  $('#faculty-slider').bxSlider({
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
  $('a[rel=student-fancybox-link]').fancybox({
		maxWidth	: 800,
		maxHeight	: 600,
		fitToView	: true,
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: true,
		openEffect	: 'none',
		closeEffect	: 'none'
	});
});