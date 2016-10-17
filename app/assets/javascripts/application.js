//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {
  var $seating_chart = $("#seating-chart");
  var $seats = $seating_chart.find("td.seat-cell");
  var $empty_spaces = $seating_chart.find("td.empty-space");
  var $button = $("button#choose-seat");

  $seats.click(function() {
    var $seat = $(this);

    $seat.attr("data-seat-status", "chosen");
    $seat.toggleClass("seat-chosen");
  });

  $button.click(function() {
    var $seats = $seating_chart.find("td[data-seat-status='chosen']");
    var seat_ids = $seats.map(function() {
      return $(this).data("seat-id");
    }).get();

    $.post("/my/seats", {seat_ids: seat_ids}).done(function(data) {
      alert("Done...");
      // $(".result").html(data);
    });
  });



  $empty_spaces.each(function(k, element) {
  
  });
});
