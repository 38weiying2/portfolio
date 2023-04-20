$(window).scroll(function () {
  var scroll = $(window).scrollTop();

  if (scroll >= 100) {
    $(".header").addClass("add-shadow");
    $(".title").css("font-size", "2.2rem");
  } else {
    $(".header").removeClass("add-shadow");
    $(".title").css("font-size", "2.5rem");
  }
});