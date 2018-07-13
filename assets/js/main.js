/*
 Created on : 23 May, 2018, 1:21:37 AM
 Author     : scorpion
 */

$(document).ready(function () {
    $("#alert-msg").delay(5000).fadeOut(500);
    $('[data-toggle="tooltip"]').tooltip();

    function onScrollInit(items, trigger) {
        items.each(function () {
            var osElement = $(this),
                    osAnimationClass = osElement.attr('data-os-animation'),
                    osAnimationDelay = osElement.attr('data-os-animation-delay');

            osElement.css({
                '-webkit-animation-delay': osAnimationDelay,
                '-moz-animation-delay': osAnimationDelay,
                'animation-delay': osAnimationDelay
            });
            var osTrigger = (trigger) ? trigger : osElement;

            osTrigger.waypoint(function () {
                osElement.addClass('animated').addClass(osAnimationClass);
            }, {
                triggerOnce: true,
                offset: '90%'
            });
        });
    }
    onScrollInit($('.os-animation'));
    onScrollInit($('.staggered-animation'), $('.staggered-animation-container'));

    if (/Android|webOS|iPhone|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        $("#aside-nav").removeClass("aside-navbar").addClass("col-md-2 col-12 navbar-inverse bg-light");
        $("#user_menu").append("&nbsp;&nbsp;Menu");
    } else {
        $("#aside-nav").removeClass("col-md-2 col-12").addClass("aside-navbar");
    }

    $('body').addClass('loaded');

//    $('body').bind('cut copy paste', function (e) {
//        e.preventDefault();
//    });

    $("html").on("contextmenu", function (e) {
        e.preventDefault();
    });
});