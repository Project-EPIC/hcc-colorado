$(document).ready(function() {

  //The clickable course information

  //TODO: Add ability to close current box
  $(".course-box-expand").hide();
  //toggle the componenet with class msg_body
  $(".course-box").click(function(){
    if ($(this).next(".course-box-expand").is(":visible")){
      $(this).next(".course-box-expand").slideToggle(400);
      $(this).removeClass('active-course')
    }
    else{
      $(".course-box-expand").hide(400);
      $(".course-box").removeClass('active-course')
      $(this).addClass('active-course')
      $(this).next(".course-box-expand").slideToggle(400);
    }

    /*$('html,body').animate({
   		scrollTop: $(this).next(".course-box-expand").offset().top -100
     });*/
  });

  //The slider at top of page
  $('#courses-slider').bxSlider({
    auto: true,
    speed: 3000,
  	captions: true,
    controls: false,
    pager: true,
  	adaptiveHeight: true,
  	responsive: true
  });
});
