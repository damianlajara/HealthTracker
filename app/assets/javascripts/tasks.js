$(document).ready(function() {

    $.get("/tasks", function(tasks) {
      $('#todocount').text(tasks.length)
      $.each(tasks, function(index, task) {
        if(task.status == "done") {
          appendTask('#oldtodolist', task.name, true);
        } else {
          appendTask('#todolist', task.name, false);
        }
      });
    }, "json");

    $('#addtask').click(function() {
      alert("begin")
      $.each($('#task-form').serializeArray(), function(i, field) {
         values[field.name] = field.value;
      });
      $.post('/add-task', function() {
        debugger
      });
      $.get("/tasklist", function(tasks) {
        debugger
        $('#todocount').text(tasks.length)
        var last = tasks[tasks.length-1]
        appendTask('#todolist', last.name, false);
      }, "json");
        // appendTask('#todolist', $('#todonew').val(), false);
    });

    // $('#todonew').keypress(function(e) {
    //     if (e.which === 13) {
    //         $('.destroy').off('click');
    //         $('.toggle').off('click');
    //         appendTask('#todolist', $(this).val(), false);
    //     }
    //     todoToggle();
    //     todoRemove();
    // });
    //
    // $('#addtask').click(function() {
    //     appendTask('#todolist', $('#todonew').val(), false);
    // });

    todoToggle();
    todoRemove();
});

function appendTask(element, value, checked) {
    if (value!='') {
        var newTodo =
            "<li>" +
                "<label class='option block'>"+
                    "<input type='checkbox' class='toggle' "+(checked?'checked':'')+">"+
                    "<span class='checkbox checkbox-thin'></span>"+
                    "<label "+(checked?'data="done" class="done"':'')+">"+value+"</label>"+
                    "<a class='destroy'></a>"+
                "</label>"+
            "</li>";
        $('#todonew').val('');
        $(element).append(newTodo);
    }
}

function todoRemove() {
    $('.destroy').on('click', function(e) {
        currentElement = $(this).closest('li');
        currentElement.remove();
    });
}

function todoToggle() {
    $('.toggle').on('click', function(e) {
          var currentElementLabel = $(this).closest('li').find('label');
          if (currentElementLabel.attr('data') == 'done') {
              currentElementLabel.attr('data', '');
              currentElementLabel.removeClass('done');
          } else {
              currentElementLabel.attr('data', 'done');
              currentElementLabel.addClass('done');
          }
    });
}

$.fn.isBound = function(type, fn) {
    var data = this.data('events')[type];
    if (data === undefined || data.length === 0) {
        return false;
    }
    return (-1 !== $.inArray(fn, data));
};

// Add sortable functionality to the tasks
$(function() {
    $(".sortable").sortable({
        items: "li:not(.header)"
    });
});
