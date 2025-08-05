$(document).on('shiny:connected', function() {
  Shiny.addCustomMessageHandler('disableid', function(arg) {
    $("#" + arg.id).prop("disabled", true);
  });
});