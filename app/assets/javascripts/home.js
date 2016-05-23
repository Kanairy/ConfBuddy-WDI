$(document).ready(function() {

$( "#all" ).on("click", function() {
  console.log("All");
  $(".eventstream").css('background-color', '#c5cae9');
  $('#all').css('background-color', 'silver');
  $(".hackers").show(1000);
  $(".hustlers").show(1000);
  $(".hipsters").show(1000);

});



$( "#eventstream1" ).on("click", function() {
console.log("Hacker clicked");
$(".eventstream").css('background-color', '#c5cae9');
$('#eventstream1').css('background-color', 'silver');
$('.events').hide();
$(".hackers").show(1000);
});



$( "#eventstream2" ).on("click", function() {
  console.log("Hustler clicked");
  $(".eventstream").css('background-color', '#c5cae9');
  $('#eventstream2').css('background-color', 'silver');
  $('.events').hide();
  $(".hustlers").show(1000);
});


$( "#eventstream3" ).on("click", function() {
  console.log("Hipster clicked");
  $(".eventstream").css('background-color', '#c5cae9');
  $('#eventstream3').css('background-color', 'silver');
  $('.events').hide();
  $(".hipsters").show(1000);
});


  console.log("Modals!");
  $(".events").on("click", openModal);
  console.log("Clicked");
  $("#close-modal").on("click", closeModal);
});

function openModal() {
  console.log("You clicked the open button!");
  $("#modal").fadeIn(1000);
};

function closeModal() {
  console.log("You clicked the close button!");
  $("#modal").toggle();
};
