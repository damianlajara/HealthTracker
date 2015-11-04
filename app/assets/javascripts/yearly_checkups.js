$(function() {
  $(".checkup .panel").hide();
  $(".checkup").click(function(event) {
    console.log("clicked on event:", event);
    $(this).children(".panel:first").toggle();
    // $(".checkup#" + event.currentTarget.id + " .info").toggle();
  });
});
