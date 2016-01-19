$(document).ready(function(){

  $(document).ready(function(){
    $('.slider').slider({
      height: 500,
    });
  });
  n = 0;
  childrens = $(".carte-slides").children();
  $(".carte-slides > li").each(function() {
    console.log(this);
    $(this).fadeOut("fast");
  });
  for (i = 0; i < childrens.length; i++ )
  {
    console.log(childrens[i]);
    next(childrens[i], childrens[i + 1])
  }

  // ##### Next slide #####
  function next(slide, nSlide) {
    nSlide.fadeIn();
    slide.fadeOut();
  }

  // ##### Previous slide #####
  function previous() {

  }

  // ##### Clear Interval #####
  function clearInterval() {

  }

  // ##### Start Interval #####
  function startInterval() {

  }
});
