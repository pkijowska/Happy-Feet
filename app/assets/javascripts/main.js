$(document).ready(() => {

$(".envelope").on("click", function() {
  $("div").removeClass('hidden-modal');
});

$(".cross").on("click", function() {
  $(".modal-style").addClass('hidden-modal');
});


  });
