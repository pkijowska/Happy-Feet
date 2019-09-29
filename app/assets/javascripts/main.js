$(document).ready(() => {

$(".envelope").on("click", function() {
  $("div").removeClass('hidden-modal');
});

$("span").on("click", function() {
  $(".modal-style").addClass('hidden-modal');
});


  });
