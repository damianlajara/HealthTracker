$(function() {
  $("select#group").change(function(){
    sendFoodRequest($("#group").val())
  });
  function sendFoodRequest(group_name){
    console.log("Inside send food request!");
    list = $.get('/user_stats/foods/' + group_name, function(food_source){
      setAutoComplete("#foods", food_source)
    });
  };
  function add_food_calories(){
    console.log("Inside add food calories!");
    if($("#foods").val() != "") {
      $.get('/user_stats/calculate_calories/' + encodeURIComponent($("#foods").val()), function(returned_number){
        total = returned_number + parseInt($("#collapse-2 .total_calories p").text());
        $(".total_calories p").text(total)
        $("#calories").val(total)
        $("#foods").val("");
      });
    }
  };
  function add_custom_calories(){
    console.log("Inside add custom calories!");
    total = parseInt($("#costum_calories").val()) + parseInt($("#collapse-2 .total_calories p").text());
    debugger
    $(".total_calories p").text(total)
    $("#calories").val(total)
    $("#costum_calories").val("")
  };
  $("#calculate_custom").click(function(){
    console.log("clicked on calculate custom!");
    add_custom_calories();
  });
  $("#calculate_food").click(function(){
    console.log("clicked on calculate food!");
    add_food_calories();
  });
  function clearForm(){
  }
  function ajaxFormSubmit(form_id){
    event.preventDefault();
    var values = {};
    $.each($("#" + form_id).serializeArray(), function(i, field) {
       values[field.name] = field.value;
    });
    $.post("/user_stats", values, function(data) {
      // $("#notice").css({"background-color": "#0a0", "color": "black"})
      // $("#notice").text("Succesfully added!");
      // $("#notice").delay(1000).fadeOut("slow");
      toastr.success('Form was succesfully submitted!','Congratulations!')
    });
    document.getElementById(form_id).reset();
  };
  $("#calories_form").submit(function(event){
    console.log("submitted calories form!");
    $(".total_calories p").text(0)
    ajaxFormSubmit("calories_form")
  });
  $("#exercise_form").submit(function(event){
    console.log("submitted exercise form!");
    ajaxFormSubmit("exercise_form")
  });
  $("#sleep_form").submit(function(event){
    console.log("submitted sleep form!");
    ajaxFormSubmit("sleep_form")
  });
});
