document.addEventListener("turbolinks:load", () => {
  function event_type() {
    return window.ontouchstart ? "touchstart" : "click";
  }
  function hamburger() {
    document.querySelector(".line__a").classList.toggle("line_1");
    document.querySelector(".line__b").classList.toggle("line_2");
    document.querySelector(".line__c").classList.toggle("line_3");
    document.querySelector(".nav").classList.toggle("in");
    document.querySelector(".container").classList.toggle("open");
    document.querySelector(".container").classList.toggle("close");
  }
  document
    .querySelector(".hamburger")
    .addEventListener(event_type(), function () {
      hamburger();
    });
});
