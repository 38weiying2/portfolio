$(window).scroll(function () {
  var scroll = $(window).scrollTop();

  if (scroll >= 100) {
    $(".mynav").addClass("add-shadow");
    $(".header").addClass("add-background");
  } else {
    $(".mynav").removeClass("add-shadow");
    $(".header").removeClass("add-background");
  }
});