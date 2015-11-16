


$("div.pending-event").click(function(){
    var type = $(this).attr("id");
    $("a#modal-trigger").click();
    $("#modal-appt-type").text(type)
});

$("#modal-close").click(function(event){
    event.preventDefault();
    reason = $("#modal-appt-type").text();
    appt_location = $("#modal-form #appointment_location").val();
    doctor = $("#modal-form #appointment_doctor").val();
    $("#checkup-form #appointment_reasons").val(reason);
    $("#checkup-form #appointment_appt_type").val(reason);
    $("#checkup-form #appointment_doctor").val(doctor);
    $("#checkup-form #appointment_location").val(appt_location);
    checkupType = $("#modal-appt-type").text();
    checkup = document.getElementById(checkupType);
    $(checkup).addClass("draggable");
    $('#pending-events div.draggable').each(function() {
        $(this).data('event', {
            title: $(this).text().trim(),
            stick: true
        });
        $(this).draggable({
            zIndex: 99999999,
            revertDuration: 0,
            revert: true
        });
    });

});



$(document).ready(function() {

    $("#appt-form").submit(function(event){
        event.preventDefault();
        var values = {};

        $.each($('#appt-form').serializeArray(), function(i, field) {
           values[field.name] = field.value;
        });
        $.post("/new-appointment", values, function(data) {
            $('#calendar').fullCalendar("refetchEvents");
        });
    });

    var today = new Date();
    var todayD = today.getDate();
    var todayM = today.getMonth();
    var todayY = today.getFullYear();

    
    $('#calendar').fullCalendar({
        header: {
            left:   "today prev, next",
            center: "title",
            right:  "month, agendaWeek, agendaDay"
        },
        minTime: "08:00:00",
        editable: true,
        selectable: true,
        selectHelper:true,

        select: function(start, end, event) {

            var title = prompt('Event Title:');
            var eventData;
            if (title) {
                eventData = {
                    title: title,
                    start: start,
                    end: end,
                };

                $('#calendar').fullCalendar('renderEvent', eventData, true);
                $('#calendar-today').fullCalendar('renderEvent', eventData, true);
            }
            $('#calendar').fullCalendar('unselect');
            $('#calendar-today').fullCalendar('unselect');
        },
        droppable: true,
        drop: function() {
            $(this).remove();
            var nEvents = $('#pending-events div.pending-event').length;
            if (nEvents<=0) {
                nEvents = "No";
                $('#pending-events-container').remove();
            }
            $('#pending-counter').html(nEvents);
        },
        eventReceive: function(event){
            var weekdays = new Array(7);
            weekdays[0]=  "Sun";
            weekdays[1] = "Mon";
            weekdays[2] = "Tue";
            weekdays[3] = "Wed";
            weekdays[4] = "Thur";
            weekdays[5] = "Fri";
            weekdays[6] = "Sat";

            var months = new Array(12);
            months[1]=  "Jan";
            months[2] = "Feb";
            months[3] = "Mar";
            months[4] = "Apr";
            months[5] = "May";
            months[6] = "Jun";
            months[7] = "Jul";
            months[8] = "Aug";
            months[9] = "Sep";
            months[10] = "Oct";
            months[11] = "Nov";
            months[12] = "Dec";


            var eventtitle = event.title
            var eventdate = event._start._d;
            var monthdate = eventdate.getDate() + 1;
            var weekday = weekdays[eventdate.getDay()];
            var year = 2015
            var month = months[eventdate.getMonth() + 1];

            event.cal_date = month + ' ' + monthdate + ' ' + year + ' 23:22:00 GMT-0500 (EST)';

            // Nov 14 2015 23:22:00 GMT-0500 (EST)
            $("#checkup-form #appointment_cal_date").val(event.cal_date);

            // $("#checkup-form").submit();   
            debugger
            var values = {};
            $.each($('#checkup-form').serializeArray(), function(i, field) {
               values[field.name] = field.value;
            });
            $.post("/new-appointment", values, function(data) {
                // $('#calendar').fullCalendar("refetchEvents");

            });      
        },

        eventSources: [{
                url: '/responseblake',
                backgroundColor: 'yellow',   // an option!
                textColor: 'white' // an option!
            }],
    });

    $('#calendar-today').fullCalendar({
        header: {
            left:   false,
            center: false,
            right:  false
        },
        defaultView: 'basicDay',
        events: [
            {
                title: 'Long Event',
                start: new Date(todayY, todayM, todayD),
                end: new Date(todayY, todayM, todayD+2),
                allDay: true
            },
            {
                title: 'Meeting',
                start: new Date(todayY, todayM, todayD, 10, 30, 00),
                end: new Date(todayY, todayM, todayD, 11, 30, 00)
            },
            {
                title: 'Product Meeting',
                start: new Date(todayY, todayM, todayD, 15, 30, 00),
                end: new Date(todayY, todayM, todayD, 17, 30, 00)
            }
        ]
    });
    $('#calendar-today .fc-toolbar').remove();

});