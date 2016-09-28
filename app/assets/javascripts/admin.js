//= require jquery
//= require jquery_ujs
//= require jquery.easing.min
//= require moment
//= require bootstrap-sprockets
//= require bootstrap-datetimepicker

$('form .datetime').each(function(i, el) {
  var element = $(el);
  // console.log(element.id);
  // console.log(element.value);

  element.hide();
  element.datetimepicker({
    defaultDate: element.value,
    inline: true,
    sideBySide: true,
    format: 'YYYY-MM-DD hh:mm A' 
  }); 
});
