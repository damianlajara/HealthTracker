//TODO Remove inline maps to the functions here

// function getSleepFrom(user_stats) {
//   $.map(user_stats, function(stat) {
//     return stat.sleep;
//   });
// }
//
// function getCaloriesFrom(user_stats) {
//   $.map(user_stats, function(stat) {
//     return stat.calories;
//   });
// }
//
// function getExerciseFrom(user_stats) {
//   $.map(user_stats, function(stat) {
//     return stat.exercise;
//   });
// }
//
// function getDateFrom(user_stats, days) {
//   $.map(user_stats, function(stat) {
//     return days[new Date(stat.created_at).getDay()];
//   });
// }

$(document).ready(function() {

  var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
  var months = ["January","February","March","April","May","June","July","August","September","October","November","December"];

  $.get("dashboard/user_stats", function(user_stats) {

    var feeling =
      $.map(user_stats, function(stat) {
        return stat.feeling;
      });

    var sleep =
      $.map(user_stats, function(stat) {
        return stat.sleep;
      });

    var calories =
      $.map(user_stats, function(stat) {
        return stat.calories;
      });

    var exercise =
      $.map(user_stats, function(stat) {
        return stat.exercise;
      });

    var date =
      $.map(user_stats, function(stat) {
        var date = new Date(stat.created_at)
        // debugger
        // return days[date.getDay()] + " " + date.getDay() + "/" + date.getMonth() + " (" + stat.feeling + ")";
        // return days[date.getDay()] + " " + date.getDay() + "/" + date.getMonth();
        return stat.feeling
      });

    Chart.defaults.global = {
      // Boolean - Whether to animate the chart
      animation: true,
      // Number - Number of animation steps
      animationSteps: 60,
      // String - Animation easing effect
      animationEasing: "easeOutQuart",
      // Boolean - If we should show the scale at all
      showScale: true,
      // Boolean - If we want to override with a hard coded scale
      scaleOverride: false,
      // Number - The number of steps in a hard coded scale
      scaleSteps: null,
      // Number - The value jump in the hard coded scale
      scaleStepWidth: null,
      // Number - The scale starting value
      scaleStartValue: 0,
      // String - Colour of the scale line
      scaleLineColor: "rgba(0,0,0,0.1)",
      // Number - Pixel width of the scale line
      scaleLineWidth: 1,
      // Boolean - Whether to show labels on the scale
      scaleShowLabels: true,
      // Interpolated JS string - can access value
      scaleLabel: "<%=value%>",
      // Boolean - Whether the scale should stick to integers, not floats even if drawing space is there
      scaleIntegersOnly: true,
      // Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
      scaleBeginAtZero: false,
      // String - Scale label font declaration for the scale label
      scaleFontFamily: "'Raleway', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
      // Number - Scale label font size in pixels
      scaleFontSize: 12,
      // String - Scale label font weight style
      scaleFontStyle: "normal",
      // String - Scale label font colour
      scaleFontColor: "#666",
      // Boolean - whether or not the chart should be responsive and resize when the browser does.
      responsive: true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio: false,
      // Boolean - Determines whether to draw tooltips on the canvas or not
      showTooltips: true,
      // Function - Determines whether to execute the customTooltips function instead of drawing the built in tooltips (See [Advanced - External Tooltips](#advanced-usage-custom-tooltips))
      customTooltips: false,
      // Array - Array of string names to attach tooltip events
      tooltipEvents: ["mousemove", "touchstart", "touchmove"],
      // String - Tooltip background colour
      tooltipFillColor: "rgba(0,0,0,0.7)",
      // String - Tooltip label font declaration for the scale label
      tooltipFontFamily: "'Raleray', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
      // Number - Tooltip label font size in pixels
      tooltipFontSize: 14,
      // String - Tooltip font weight style
      tooltipFontStyle: "normal",
      // String - Tooltip label font colour
      tooltipFontColor: "#fff",
      // String - Tooltip title font declaration for the scale label
      tooltipTitleFontFamily: "'Raleway', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
      // Number - Tooltip title font size in pixels
      tooltipTitleFontSize: 14,
      // String - Tooltip title font weight style
      tooltipTitleFontStyle: "normal",
      // String - Tooltip title font colour
      tooltipTitleFontColor: "#fff",
      // Number - pixel width of padding around tooltip text
      tooltipYPadding: 12,
      // Number - pixel width of padding around tooltip text
      tooltipXPadding: 20,
      // Number - Size of the caret on the tooltip
      tooltipCaretSize: 8,
      // Number - Pixel radius of the tooltip border
      tooltipCornerRadius: 4,
      // Number - Pixel offset from point x to tooltip edge
      tooltipXOffset: 10,
      // String - Template string for single tooltips
      tooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %>",
      // String - Template string for multiple tooltips
      multiTooltipTemplate: "<%=value%>",
      // Function - Will fire on animation progression.
      onAnimationProgress: function() {},
      // Function - Will fire on animation completion.
      onAnimationComplete: function() {}
    }

    var calorieData = {
      label: "Calories",
      fillColor: "rgba(74, 121, 147, 0.2)",
      strokeColor: "rgba(220,220,220,1)",
      pointColor: "rgba(220,220,220,1)",
      pointStrokeColor: "#fff",
      pointHighlightFill: "#fff",
      pointHighlightStroke: "rgba(220,220,220,1)",
      // data: getCaloriesFrom(user_stats)
      data: calories
    }

    var sleepData = {
      label: "Sleep",
      fillColor: "rgba(74, 121, 147, 0.6)",
      strokeColor: "rgba(151,187,205,1)",
      pointColor: "rgba(151,187,205,1)",
      pointStrokeColor: "#fff",
      pointHighlightFill: "#fff",
      pointHighlightStroke: "rgba(151,187,205,1)",
      // data: getSleepFrom(user_stats)
      data: sleep
    }

    var exerciseData = {
      label: "Exercise",
      fillColor: "rgba(100, 147, 80, 0.9)",
      strokeColor: "rgba(121,147,105,1)",
      pointColor: "rgba(121,147,105,1)",
      pointStrokeColor: "#fff",
      pointHighlightFill: "#fff",
      pointHighlightStroke: "rgba(121,147,105,1)",
      // data: getExerciseFrom(user_stats)
      data: exercise
    }
    var barGraphData = {
      // labels: getDateFrom(user_stats, days),
      labels: date,
      datasets: [calorieData, sleepData, exerciseData]
    };

    var options = {};
    var barGraphContext = document.getElementById("healthChart").getContext("2d");
    var chartjsBarChart = new Chart(barGraphContext).Bar(barGraphData, options);

    $("#calories-mini-chart").sparkline(calories, {
      type: 'line',
      lineColor: 'rgba(74, 121, 147, 0.9)',
      fillColor: 'rgba(74, 121, 147, 0.2)',
      width: '100%',
      height: '48',
      chartRangeMin: 0,
      tooltipChartTitle: 'Calories',
      tooltipSuffix: ' kcal'
    });

    $("#sleep-mini-chart").sparkline(sleep, {
      type: 'line',
      lineColor: 'rgba(74, 121, 147, 0.9)',
      fillColor: 'rgba(74, 121, 147, 0.6)',
      width: '100%',
      height: '48',
      chartRangeMin: 0,
      tooltipChartTitle: 'Sleep',
      tooltipSuffix: ' mins'
    });

    $("#exercise-mini-chart").sparkline(exercise, {
      type: 'line',
      lineColor: 'rgba(74, 121, 147, 0.9)',
      fillColor: 'rgba(100, 147, 80, 0.9)',
      width: '100%',
      height: '48',
      chartRangeMin: 0,
      tooltipChartTitle: 'Exercise',
      tooltipSuffix: ' mins'
    });

    var calorieGraphData = {
      labels: date,
      datasets: [calorieData]
    };

    var sleepGraphData = {
      labels: date,
      datasets: [sleepData]
    };

    var exerciseGraphData = {
      labels: date,
      datasets: [exerciseData]
    };

    var lineGraphOptions = {
      ///Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines : true,
      //String - Colour of the grid lines
      scaleGridLineColor : "rgba(0,0,0,.05)",
      //Number - Width of the grid lines
      scaleGridLineWidth : 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines: true,
      //Boolean - Whether the line is curved between points
      bezierCurve : true,
      //Number - Tension of the bezier curve between points
      bezierCurveTension : 0.4,
      //Boolean - Whether to show a dot for each point
      pointDot : true,
      //Number - Radius of each point dot in pixels
      pointDotRadius : 4,
      //Number - Pixel width of point dot stroke
      pointDotStrokeWidth : 1,
      //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
      pointHitDetectionRadius : 20,
      //Boolean - Whether to show a stroke for datasets
      datasetStroke : true,
      //Number - Pixel width of dataset stroke
      datasetStrokeWidth : 2,
      //Boolean - Whether to fill the dataset with a colour
      datasetFill : true,
    };

    var calorieGraphContext = document.getElementById("calories-full-chart").getContext("2d");
    var calorieChart = new Chart(calorieGraphContext).Line(calorieGraphData, lineGraphOptions);

    var sleepGraphContext = document.getElementById("sleep-full-chart").getContext("2d");
    var sleepChart = new Chart(sleepGraphContext).Line(sleepGraphData, lineGraphOptions);

    var exerciseGraphContext = document.getElementById("exercise-full-chart").getContext("2d");
    var exerciseChart = new Chart(exerciseGraphContext).Line(exerciseGraphData, lineGraphOptions);

  });
});
