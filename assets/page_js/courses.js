$(document).ready(function() {

  //The clickable course information

  //TODO: Add ability to close current box
  $(".course-box-expand").hide();
  //toggle the componenet with class msg_body
  $(".course-box").click(function(){
    $(".course-box-expand").hide();
  	$(this).toggleClass('active-course')
    $(this).next(".course-box-expand").slideToggle(400);
    /*$('html,body').animate({
   		scrollTop: $(this).next(".course-box-expand").offset().top -100
     });*/
  });

  //The slider at top of page
  $('#courses-slider').bxSlider({
    auto: true,
  	captions: true,
    controls: false,
    pager: true,
  	adaptiveHeight: true,
  	responsive: true
  });
});
