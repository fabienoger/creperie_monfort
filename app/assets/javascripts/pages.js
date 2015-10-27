$(document).ready(function()
{
  // ##### Select topButton #####
  $topButton = document.getElementById("topButton");
  if ($topButton != null)
    $topButton.style.display = "none";

  // ##### Verify scroll position #####
  $(window).scroll(function(){
    if ($topButton != null)
    {
      if($(window).scrollTop() > $(window).height() && $topButton.style.display == "none")
        $topButton.style.display = "inline-block";
      else if($(window).scrollTop() <= 0 && $topButton.style.display == "inline-block")
        $topButton.style.display = "none";
    }
  });

  // ##### Scroll top on click #####
  $("a[href='#top']").click(function() {
    $("html, body").animate({ scrollTop: 0 }, "slow");
    return false;
  });

  $(".button-collapse").sideNav();

  // ##### Select all elements #####
  var $parterns = document.getElementById("carousel-parterns");
  var $next = document.getElementById("next");
  var $previous = document.getElementById("previous");

  // ##### Initialize variables #####

  n = 0;
  autoSlide = "";
  nbChild = $parterns.children.length;

  // ##### Moove functions #####

  function next()
  {
    stopSlide();
    if (n == (nbChild - 1)) {n = -1};
    n++;
    $parterns.children[0].style.marginLeft = n * -$parterns.offsetWidth + 'px';
//    startInterval();
  }

  function previous()
  {
    stopSlide();
    if (n == 0) {n = nbChild};
    n--;
    $parterns.children[0].style.marginLeft = n * -$parterns.offsetWidth + 'px';
//    startInterval();
  }

  // ##### Action functions #####

  function startInterval()
  {
    autoSlide = setInterval(next, 3000);
  }

  function stopSlide()
  {
    clearInterval(autoSlide);
  }

  // ##### Calling functions #####
  if ($parterns != null || $next != null || $previous != null)
  {
//    startInterval();
//    $parterns.onmouseover = stopSlide;
//    $parterns.onmouseout = startInterval;
    $next.onclick = next;
    $previous.onclick = previous;
  }
});
