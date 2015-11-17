// var symptom_list = []
//  $.get('/routines/symptom_list/', function(symptoms){
//     symptom_list = symptoms
//  });


// $( document ).ready(function() {
//   smoothScroll();
//   $(".health-form").hide();
//   symptom_field();

// });

// function symptom_field(){
//   $("#field-1").show();
//   // trigger ancher tag. Page will scroll to #field-2. 
//   $("a[href=#field-2]")[0].click()

//   setAutoComplete("#routine_symptoms", symptom_list)
//   $(".ui-helper-hidden-accessible").remove();

//   $("#field-1 button").click(function(){
//     $.get('/routines/symptom_check/' + $("textarea[id=routine_symptoms").val(), illness_field)
//   });
// }

// function illness_field(possible_illnesses) {
//   $("#field-2").show();
//   $("a[href=#field-2]")[0].click()


//   $.each(possible_illnesses, function(index, value) {
//     $("ul.routine_illnesses").append('<li class="illness_list" value="' + value +'">' + value + '</li>')
//   });

// };


// function smoothScroll() {
//   $(".scroll").click(function(event){
//          event.preventDefault();
//          //calculate destination place
//          var dest=0;
//          if($(this.hash).offset().top > $(document).height()-$(window).height()){
//               dest=$(document).height()-$(window).height();
//          }else{
//               dest=$(this.hash).offset().top;
//          }
//          //go to destination
//          $('html,body').animate({scrollTop:dest}, 1000,'swing');
//      });
// }