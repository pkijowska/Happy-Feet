$(document).ready(() => {

$(".envelope").on("click", function() {
  $("div").removeClass('hidden-modal');
});

$(".close_x").on("click", function() {
  $(".modal-style").addClass('hidden-modal');
});
$('a[data-toggle="tooltip"]').tooltip();


  });
