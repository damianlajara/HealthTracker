function resizeWrapper() {
    var sidebarHeight = $('#sidebar-wrapper').height();
    var containerHeight = $('#container-wrapper').height();
    if (sidebarHeight > containerHeight) {
        $('#container-wrapper').css("min-height", sidebarHeight+"px");
    } else if ((sidebarHeight < containerHeight)) {
        $('#sidebar-wrapper').css("min-height", containerHeight+"px");
    }
}

function SmoothlyMenu() {
    if (!$('#wrapper').hasClass('mini-sidebar') || $('#wrapper').hasClass('body-small')) {
        $('#side-nav').hide();
        $('.sidebar-nav-logo').hide();
        $('.sidebar-nav-profile').hide();
        setTimeout(function () {$('#side-nav').fadeIn(500);}, 100);
        setTimeout(function () {$('.sidebar-nav-logo').fadeIn(500);}, 100);
        setTimeout(function () {$('.sidebar-nav-profile').fadeIn(500);}, 100);
    } else {
        $('#side-nav').removeAttr('style');
    }
}

$( document ).ready(function() {
    
    // Sidebar menu
    $("#side-nav").metisMenu();

    // Menu minimalizer
    $('.sidebar-minimalizer').click(function () {
        $("#wrapper").toggleClass("mini-sidebar");
        SmoothlyMenu();
    });

    // Minimalize menu when resolution lower than 768px
    $(function() {
        $(window).bind("load resize", function() {
            if ($(this).width() < 768) {
                $('#wrapper').addClass('mini-sidebar')
            } else {
                $('#wrapper').removeClass('mini-sidebar')
            }
        });
    });
    
    /* *************** */
    /*    Scroll up    */
    /* *************** */
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.scrollup').fadeIn();
        } else {
            $('.scrollup').fadeOut();
        }
    });
    $('.scrollup').click(function () {
        $("html, body").animate({scrollTop: 0}, 600);
        return false;
    });
    
    /* *********************** */
    /*   Change tabs hovering  */
    /* *********************** */
    $(document).on('mouseenter', '.nav-tabs > li > a[data-toggle="tab-hover"]', function () {
        $(this).tab('show');
    });
    
    /* *********************************** */
    /*   Show/hide user profile settings   */
    /* *********************************** */
    $('.sidebar-nav-profile').click(function(){
        $('.side-nav-profile-settings').slideToggle("fast");
        if ($('#user-profile-settings-toggler').hasClass('fa-caret-down')) {
            $('#user-profile-settings-toggler').removeClass('fa-caret-down');
            $('#user-profile-settings-toggler').addClass('fa-caret-up');
        } else {
            $('#user-profile-settings-toggler').addClass('fa-caret-down');
            $('#user-profile-settings-toggler').removeClass('fa-caret-up');
        }
    });
    
    /* *********************** */
    /*  Tooltips and popovers  */
    /* *********************** */
    $(function () {
        $('[data-toggle="tooltip"]').tooltip();
        $('[data-toggle="popover"]').popover();
    });
    
    /* ********************** */
    /*   Toggle full screen   */
    /* ********************** */
    $('#fullscreen-toggler').click(function(){
        var elem = document.body; // Make the body go full screen.
        var isInFullScreen = (document.fullScreenElement && document.fullScreenElement !== null) ||  (document.mozFullScreen || document.webkitIsFullScreen);

        if (isInFullScreen) {
            cancelFullScreen(document);
        } else {
            requestFullScreen(elem);
        }
        return false;
    });
    
    function cancelFullScreen(el) {
        var requestMethod = el.cancelFullScreen||el.webkitCancelFullScreen||el.mozCancelFullScreen||el.exitFullscreen;
        if (requestMethod) { // cancel full screen.
            requestMethod.call(el);
        } else if (typeof window.ActiveXObject !== "undefined") { // Older IE.
            var wscript = new ActiveXObject("WScript.Shell");
            if (wscript !== null) {
                wscript.SendKeys("{F11}");
            }
        }
    };
    
    function requestFullScreen(el) {
        // Supports most browsers and their versions.
        var requestMethod = el.requestFullScreen || el.webkitRequestFullScreen || el.mozRequestFullScreen || el.msRequestFullscreen;

        if (requestMethod) { // Native full screen.
            requestMethod.call(el);
        } else if (typeof window.ActiveXObject !== "undefined") {
            var wscript = new ActiveXObject("WScript.Shell");
            if (wscript !== null) {
                wscript.SendKeys("{F11}");
            }
        }
        return false
    };

    /* ******************* */ 
    /*   Switches control  */
    /* ******************* */
    $(document).ready(function() {
        $('.switch-label:not(.switch-disabled)').click(function(){
            $(this).toggleClass('checked');
        });
    });
    
    /* *************************** */
    /*   Circle checkbox control   */
    /* *************************** */
    $(document).ready(function() {
        $('.circle-checkbox').click(function(){
            $(this).toggleClass('checked');
        });
    });
    
    /* ******************************************* */
    /*   Adjust wrapper size to the sidebar menu   */
    /* ******************************************* */
    $(document).ready(function() {
        resizeWrapper();
    });
    
    $(window).bind("load resize scroll", function () {
        if (!$("body").hasClass('body-small')) {
            resizeWrapper();
        }
    });
})



