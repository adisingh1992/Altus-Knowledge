<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
        <div class="container-fluid mb-2 mt-2">
            <div class="row py-5" id="test-contain">
                <div class="col-md-10 mx-auto">
                    <div class="acknowledgement-container os-animation" data-os-animation="fadeIn" data-os-animation-delay="0.2s" id="stack">
                        <div class="border bg-white h-100">
                            <div class="container-fluid">
                                <div class="row mx-2">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4 py-1 mt-0 bg-light border" style="border-top:none !important;border-bottom-right-radius:5px;border-bottom-left-radius:5px;">
                                        <div class="row text-center">
                                            <div class="col-6 p-1"><strong class="text-danger">Time Remaining</strong></div>
                                            <div class="col-6 text-center p-1" id="countdown">
                                                <span id="hours" class="digits"></span>
                                                <strong> : </strong>
                                                <span id="mins" class="digits"></span>
                                                <strong> : </strong>
                                                <span id="secs" class="digits"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid">
                                <div class="row mb-2" id="course_header">
                                    <div class="col-md-12">
                                        <span class="h5"><?php echo "Batch :: " . $data["user"]["course"] . " (" . $data["user"]["duration"] . " Year)"; ?></span>
                                    </div>
                                </div>
                            </div>
                            <div class="container-fluid mb-4">
                                <div class="row mx-2">
                                    <div class="col-md-9">
                                        <div class="card">
                                        <?php $qcount = 1; ?>
                                        <?php foreach ($data["questions"] as $q): ?>
                                        <?php $image = asset_url("images")."questions/".$data["course"]."/". $data["c_id"] . "/".$q["q_id"].".JPG"; ?>
                                            <div class="qcontainer" id='<?php echo "qcontainer".$q["q_id"]; ?>'>
                                                <div class="card-header d-inline px-0 py-0">
                                                    <span>
                                                        <div class="text-white p-2 pull-left" style="width:55px;border-top-left-radius:3px;border-right:1px solid #ddd;background: #141E30;background: -webkit-linear-gradient(to right, #243B55, #141E30);background: linear-gradient(to right, #243B55, #141E30);"><strong>Q.<?php echo $qcount++; ?></strong></div>
                                                        <div class="pull-left subject-name p-2 text-white"><?php echo $q["category"]; ?></div>
                                                    </span>
                                                </div>
                                                <div class="card-body text-left" style="background-image: url('<?php echo asset_url("images") . "views/question-cover.png"; ?>');">
                                                    <div class="card-image text-center">
                                                        <img src="<?php echo $image; ?>" alt="questions" class="img-fluid mt-4">
                                                    </div>
                                                    <div class="alert alert-warning mt-3 p-2 pt-4 pb-4 text-center">
                                                        <div class="row">
                                                            <div class="col-6 border-right border-info">
                                                                <label class="radio">
                                                                    <?php echo form_input(array("type" => "radio", "value" => "a", "name" => "answer".$q["q_id"], "class" => "answer", "data-qid" => $q["q_id"])); ?>
                                                                    <code class="font-weight-bold text-muted">Option A</code>
                                                                </label><br>
                                                                <label class="radio">
                                                                    <?php echo form_input(array("type" => "radio", "value" => "c", "name" => "answer".$q["q_id"], "class" => "answer", "data-qid" => $q["q_id"])); ?>
                                                                    <code class="font-weight-bold text-muted">Option C</code>
                                                                </label>
                                                            </div>
                                                            <div class="col-6 border-left border-info">
                                                                <label class="radio">
                                                                    <?php echo form_input(array("type" => "radio", "value" => "b", "name" => "answer".$q["q_id"], "class" => "answer", "data-qid" => $q["q_id"])); ?>
                                                                    <code class="font-weight-bold text-muted">Option B</code>
                                                                </label><br>
                                                                <label class="radio">
                                                                    <?php echo form_input(array("type" => "radio", "value" => "d", "name" => "answer".$q["q_id"], "class" => "answer", "data-qid" => $q["q_id"])); ?>
                                                                    <code class="font-weight-bold text-muted">Option D</code>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="text-center"><button class="reset btn btn-outline-warning btn-sm" data-qid="<?php echo $q["q_id"]; ?>">Clear <i class="fa fa-refresh"></i></button></div>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>
                                            <div class="card-footer text-muted">
                                                <div class="pull-left">
                                                    <button onClick="topFunction()" value="<?php echo $data["questions"][0]["q_id"]; ?>" id="prev" class="btn btn-outline-info btn-sm"><i class="fa fa-angle-double-left"></i> Previous</button></a>&nbsp;&nbsp;
                                                    <button onClick="topFunction()" value="<?php echo $data["questions"][0]["q_id"] + 1; ?>" id="next" class="btn btn-outline-info btn-sm" data-total="<?php if($data["course"] === "JEE"){ echo $data["questions"][0]["q_id"] + 90; } else if($data["course"] === "NEET"){ echo $data["questions"][0]["q_id"] + 180; } ?>">Next <i class="fa fa-angle-double-right"></i></button>
                                                </div>
                                                <div class="pull-right">
                                                    <button value="submit" id="submit" class="btn btn-outline-danger btn-sm">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="card" id="review" style="cursor: pointer;" onClick="topFunction()">
                                            <div class="card-header text-center">Questions Status</div>
                                            <div class="card-body">
                                                <div class="p-0">
                                                    <div class="row">
                                                        <?php $count = 1;?>
                                                        <?php foreach ($data["questions"] as $q): ?>
                                                        <div class="col-2 m-1 mb-2">
                                                            <div style="width: 45px;"><span id="r<?php echo $q['q_id']; ?>" data-id="<?php echo $q['q_id']; ?>" class="p-1 px-2 bg-warning-custom text-white review"><?php echo $count++; ?></span></div>
                                                        </div>
                                                        <?php endforeach; ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer text-muted text-center">
                                                <div class="row">
                                                    <div class="col-8"><small>Correct Answer</small></div>
                                                    <div class="col-4 text-success"><small>+&nbsp;&nbsp;4</small></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-8"><small>Incorrect Answer</small></div>
                                                    <div class="col-4 text-danger"><small>-&nbsp;&nbsp;1</small></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-8"><small>Unattempted</small></div>
                                                    <div class="col-4 text-info"><small>&#8723;&nbsp;0</small></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Modal Start-->
            <div id="fsModal" class="modal animated bounceIn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row py-5">
                                    <div class="col-md-10 mx-auto">
                                        <div class="acknowledgement-container os-animation" data-os-animation="fadeIn" data-os-animation-delay="0.2s" id="modal-ack">
                                            <div class="border bg-white">
                                                <div class="text-center mt-4"><h2 class="custom-border">Test Details</h2></div>
                                                <div class="row">
                                                    <div class="col-md-12 mb-4 text-center">
                                                        <button style="width: 200px;" class="btn btn-outline-danger" data-dismiss="modal">Enter Test</button>
                                                    </div>
                                                </div>
                                                <table class="col-md-10 table table-striped table-hover table-bordered" id="modaltable">
                                                    <thead>
                                                        <tr class="text-center">
                                                            <th>Batch</th>
                                                            <th>Subjects</th>
                                                            <th>Test Duration</th>
                                                            <th>Total Marks</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="text-center">
                                                            <td><?php echo $data["course"]; ?></td>
                                                            <?php if($data["course"] === "JEE"): ?>
                                                            <td>Physics, Chemistry & Maths</td>
                                                            <?php elseif($data["course"] === "NEET"): ?>
                                                            <td>Physics, Chemistry & Biology</td>
                                                            <?php endif; ?>
                                                            <td>180 Min.</td>
                                                            <td><?php if($data["course"] === "JEE"){ echo "360"; } else{ echo "720"; } ?></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div class="row">
                                                    <div class="col-md-12 os-animation" data-os-animation="fadeInDown" data-os-animation-delay="0.5s">
                                                        <div class="text-center"><h2 class="custom-border">General Instructions</h2></div>
                                                        <p class="text-danger text-left pl-4">Please read the following instructions very carefully :</p>
                                                        <ol class="list-group text-left ack">
                                                            <li class="list-group-item">You have 180 minutes to complete the test.</li>
                                                            <li class="list-group-item">The test contains a total of <?php if($data["course"] === "JEE"){ echo "90"; } else{ echo "180"; } ?> questions.</li>
                                                            <li class="list-group-item">There is only one correct answer to each question. Click on the most appropriate option to mark it as your answer.</li>
                                                            <li class="list-group-item">You will be awarded 4 marks for each correct answer.</li>
                                                            <li class="list-group-item">Each incorrect answer will attract a penalty of 1 mark.</li>
                                                            <li class="list-group-item">You can use rough sheets while taking the test. Do not use calculators, log tables, dictionaries, or any other printed/online reference material during the test.</li>
                                                            <li class="list-group-item">Do not click the button “Submit” before completing the test. A test once submitted cannot be resumed.</li>
                                                        </ol>
                                                    </div>
                                                </div>
                                                <div class="row card-footer mx-0 px-0">
                                                    <div class="col-md-12">
                                                        <span class="text-info text-center"><small>&nbsp;&nbsp; I have read and understood the instructions. I agree that in case of not adhering to the exam instructions, I will be disqualified from giving the exam.<small></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!--Modal End-->
        <script type="text/javascript" src="<?php echo asset_url("js"); ?>hashtable.js"></script>
        <script>
            $(document).ready(function () {
                var answers = new Hashtable();

                $("#submit").on("click", function (event) {
                    event.preventDefault();
                    $('body').removeClass('loaded');
                    var user_answers = (answers.entries());
                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url().'process/submit'; ?>",
                        data: {answers: user_answers, '<?php echo $this->security->get_csrf_token_name(); ?>': '<?php echo $this->security->get_csrf_hash(); ?>'},
                        success: function (data) {
                            $('body').addClass('loaded');
                            window.location.replace(data);
                        }
                    });
                });

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
                        $(".qcontainer").hide();
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
                        $(".qcontainer").hide();
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
                    $("#prev").val(qid);
                    $("#next").val(qid+1);
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
            
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
            
                        
            $(document).keydown(function(e) {
                if (e.keyCode == 27){
                    e.preventDefault();
                    return false;
                }
            });
        </script>