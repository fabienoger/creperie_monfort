$(document).ready(function(){

  n = 0;
  childrens = $(".carte-slides").children();
  $(".carte-slides > li").each(function() {
    console.log(this);
    $(this).fadeIn("slow");
  });
/*  for (i = 0; i < childrens.length; i++ )
  {
    console.log(childrens[i]);
    childrens[i].fadeOut("slow");
    next(childrens[i], childrens[i + 1])
    n++;
  }
*/
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
