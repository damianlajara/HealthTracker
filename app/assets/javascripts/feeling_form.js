$( document ).ready(function() {

  $(".health-form").hide();
  radio_field();
 
});

function radio_field() {
  $("#field-1").show();

  $("#field-1 button").click(function(){
    if($("input[type=radio]:checked").val() === "true"){
      $("#field-1").hide();
      symptom_field();
    }
    else if($("input[type=radio]:checked").val() === undefined) {
      
    }
    else {
      window.location="/routines/dashboard"
    }
  });
};

function symptom_field(){
  $("#field-2").show();

  $("#field-2 button").click(function(){
    $("#field-2").hide();
    
  $.get('/routines/symptom_check/' + $("textarea[id=routine_symptoms").val(), illness_field)
  });
}

function illness_field(symptoms) {
  debugger
};



