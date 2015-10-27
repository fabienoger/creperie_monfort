$(document).ready(function()
{
  $(".button-collapse").sideNav();

  // ##### Get all elements #####
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
    startInterval();
  }

  function previous()
  {
    stopSlide();
    if (n == 0) {n = nbChild};
    n--;
    $parterns.children[0].style.marginLeft = n * -$parterns.offsetWidth + 'px';
    startInterval();
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
    startInterval();
    $parterns.onmouseover = stopSlide;
    $parterns.onmouseout = startInterval;
    $next.onclick = next;
    $previous.onclick = previous;
  }
});
