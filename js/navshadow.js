$(window).scroll(function () {
    var scroll = $(window).scrollTop();

    if (scroll >= 100) {
      $(".mynav").addClass("add-shadow");
      $(".head").addClass("add-background");
      $(".head-title").css("font-size", "2.8rem");
      $(".head-image").css("height", "3rem");
    } else {
      $(".mynav").removeClass("add-shadow");
      $(".head").removeClass("add-background");
      $(".head-title").css("font-size", "3.5rem");
      $(".head-image").css("height", "4rem");
    }
  });