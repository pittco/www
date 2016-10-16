//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {
  var $seating_chart = $("#seating-chart");
  var $seats = $seating_chart.find("td.seat-cell");
  var $empty_spaces = $seating_chart.find("td.empty-space");

  $seats.click(function() {
    $(this).toggleClass("seat-chosen");
  });

  $empty_spaces.each(function(k, element) {
  
  });
});
