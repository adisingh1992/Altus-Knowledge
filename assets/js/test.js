/* 
 Created on : 23 May, 2018, 1:21:37 AM
 Author     : scorpion
 */

$(document).ready(function () {
    $("body").css("background-image", "url('../../assets/images/views/chemi.jpg')");
    $("body").css("background-size", "cover");
    $('#fsModal').modal('show');

    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
        $('#test-contain').removeClass("py-5").addClass("py-3");
        $("#course_header").removeClass("mb-2").addClass("mb-3 mt-3 text-center");
        $("#modaltable").removeClass("table").addClass("table-sm mb-3");
        $('#modal-ack').removeClass("acknowledgement-container");
        $("#review").hide();
    } else {
        $('#test-contain').removeClass("py-3").addClass("py-5");
        $("#review").show();
        $("#modaltable").removeClass("table-sm  mb-3").addClass("table");
    }

    $(".qcontainer").hide();
    $(".qcontainer:first").show();

    timer(180);

    $(".answer").on("click", function (event) {
        var qid = $(this).data("qid");
        var value = $(this).val();
        answers.put(qid, value);
        $("#r" + qid).removeClass("bg-warning-custom").addClass("bg-success-custom");
    });

    $(".reset").on("click", function (event) {
        var qid = $(this).data("qid");
        if (answers.containsKey(qid)) {
            answers.remove(qid);
            $("#r"+qid).removeClass("bg-success-custom").addClass("bg-warning-custom");
            $('input[name=answer'+qid+']').attr('checked',false);
        }
    });

    $("#prev").on("click", function (event) {
        event.preventDefault();
        var prev = parseInt($("#prev").val());
        var next = parseInt($("#next").val());
        if (prev > 1) {
            $("#qcontainer" + prev).hide();
            prev = prev - 1;
            next = next - 1;
            $("#prev").val(prev);
            $("#next").val(next);
            $("#qcontainer" + prev).show();
        }
    });

    $("#next").on("click", function (event) {
        event.preventDefault();
        var prev = parseInt($("#prev").val());
        var next = parseInt($("#next").val());
        var total = $(this).data("total");
        if (next < total+1) {
            $("#qcontainer" + prev).hide();
            next = next + 1;
            prev = prev + 1;
            $("#prev").val(prev);
            $("#next").val(next);
            $("#qcontainer" + prev).show();
        }
    });
    
    $(".review").on("click", function (event) {
        event.preventDefault();
        var qid = $(this).data("id");
        $(".qcontainer").hide();
        $("#qcontainer" + qid).show();
    });

});

function timer(diff) {
    var end = new Date((new Date).getTime() + diff * 60000).getTime();
    // Update the count down every 1 second
    var x = setInterval(function () {
        // Get todays date and time
        var now = new Date().getTime();
        // Find the distance between now an the count down date
        var distance = end - now;
        // Time calculations for days, hours, minutes and seconds
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
        // If the count down is over, write some text 
        if (distance < 0) {
            clearInterval(x);
            alert("The allotted time for this test has expired and it will be submitted with current progress!");
            $("#submit").click();
            return;
        }
//            Output the result in an element
        $("#hours").text("0" + hours);
        $("#mins").text(minutes);
        $("#secs").text(seconds);
    }, 1000);
}