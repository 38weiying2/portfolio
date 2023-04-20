// Wrap every letter in a span
var textWrapper = document.querySelector(".head-title");
textWrapper.innerHTML = textWrapper.textContent.replace(
  /\S/g,
  "<span class='letter'>$&</span>"
);

anime.timeline({ loop: false }).add({
  targets: ".head-title .letter",
  scale: [2, 1],
  opacity: [0, 1],
  translateZ: 0,
  easing: "easeOutExpo",
  duration: 1000,
  delay: (el, i) => 75 * i,
});