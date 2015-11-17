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


function setAutoComplete(input_id, list){

  function split( val ) {
    return val.split( /,\s*/ );
  }
  function extractLast( term ) {
    return split( term ).pop();
  }

  $( input_id )
  // don't navigate away from the field on tab when selecting an item
    .bind( "keydown", function( event ) {
      if ( event.keyCode === $.ui.keyCode.TAB &&
          $( this ).autocomplete( "instance" ).menu.active ) {
        event.preventDefault();
      }
    })
    .autocomplete({
      minLength: 0,
      source: function( request, response ) {
        // delegate back to autocomplete, but extract the last term
        response( $.ui.autocomplete.filter(
          list, extractLast( request.term ) ) );
      },
      focus: function() {
        // prevent value inserted on focus
        return false;
      },
      select: function( event, ui ) {
        var terms = split( this.value );
        
        // remove the current input
        terms.pop();
        // add the selected item
        terms.push( ui.item.value );
        // add placeholder to get the comma-and-space at the end
        terms.push( "" );
        this.value = terms.join( ", " );
        return false;
      },
      messages: {
        noResults: '',
        results: function() {}
      },

    });
}
