$(document).ready(function () {
  window.addEventListener("message", function (event) {
    var edata = event.data;
    $("#heal").css("width", edata.health + "%");
    $("#hunger").css("width", edata.hunger + "%");
    $("#thirst").css("width", edata.thirst + "%");
    $("#armor").css("width", edata.armor + "%");

    if (edata.type === "visible") {
      $("html").fadeIn();
    } 

    if (edata.type === "invisible") {
      $("html").fadeOut();
    }
  });
});
