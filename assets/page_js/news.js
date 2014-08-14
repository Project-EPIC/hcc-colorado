$(window).scroll(function() {
  var pos = $(this).scrollTop();

  //Stick the main scroller to the top if we pass it.
  if (pos > 155){
    $(".navbar-inner").css({"position": "fixed", "top": 0, "z-index":10 })
  }else if(pos < 155){
    $(".navbar-inner").css({"position": "absolute", "top": 155})
  }
});