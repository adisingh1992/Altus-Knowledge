<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
        <div class="container-fluid">
            <div class="row">	
                <div class="col-md-12 px-0">
                    <div class="card h-100 justify-content-center card-image" style="background-image: url('<?php echo asset_url("images") . "views/" ?>homeback2.png');background-size:cover;height:92vh !important;background-position:center;border-radius:0px !important;">
                        <!-- Content -->
                        <div class="text-white text-center align-items-center px-5 justify-content-center align-self-center">
                            <div>
                                <h5 class="text-danger"><i class="fa fa-graduation-cap"></i> Altus Knowledge</h5>
                                <h3 class="card-title pt-2" style="font-family:georgia;"><strong>Give A Final Touch To Your Preparations</strong></h3>
                                <p class="os-animation" data-os-animation="fadeInUp" data-os-animation-delay="0.2s">We provide chapter-wise tests for each subject, Find your strong & weak areas in the syllabus and practice on our real-time examination environment with microlevel performance analysis.</p>
                                <button id="goto" class="btn btn-danger os-animation" data-os-animation="fadeInUp" data-os-animation-delay="0.5s" style="border-radius:20px;box-shadow:0px 0px 2px #fff">Check your Performance</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="analysis" style="display: none;">
            <div class="container-fluid mt-4">
                <div class="row">
                    <div class="col-md-12 text-center pt-2">
                        <h2 class="custom-border"><i class="fa fa-pie-chart"></i>&nbsp;Performance Analysis</h2>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="row pt-3 px-2">
                    <div class="col-md-10 mx-auto border rounded shadow os-animation" data-os-animation="fadeInUp" data-os-animation="0.5s">
                        <div class="pt-3">
                            <span class="pull-left bg-info shadow-lg text-white p-2 px-3">Batch <?php echo $data["user"]["course"]; ?></span>
                            <span class="pull-right">
                                <select disabled="true" class="form-control btn-xs btn-disabled px-3" style="border:1px solid #C6C5C5;color:#C6C5C5;box-shadow:inset 0px 0px 10px #ccc;">
                                    <option>Exam</option>
                                </select>
                            </span>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row pt-5">
                            <div class="col-md-6 text-center">
                                <div class="row">
                                    <div class="col-6"><p class="text-muted">Total Tests</p></div>
                                    <div class="col-6">: <strong>10</strong></div>
                                </div>
                                <div class="row">
                                    <div class="col-6"><p class="text-muted">Attempted Tests</p></div>
                                    <div class="col-6">: <strong><?php echo $data["analysis"][0]["count"]; ?></strong></div>
                                </div>
                                <div class="row">
                                    <div class="col-6"><p class="text-muted">Remaining Tests</p></div>
                                    <div class="col-6">: <strong><?php echo 10 - ($data["analysis"][0]["count"]); ?></strong></div>
                                </div>				 
                            </div>
                            <div class="col-md-6 text-center">
                                <span><strong class="h6 text-info"><i class="fa fa-pencil-square-o fa-fw"></i> Mock Tests</strong></span>
                                <hr style="border:1px solid #ddd">
                                <div class="row">
                                    <div class="col-3"><p class="text-muted">Total Tests</p></div>
                                    <div class="col-3">: <strong>8</strong></div>
                                    <div class="col-3"><p class="text-muted">Attempted</p></div>
                                    <div class="col-3">: <strong>?</strong></div>
                                </div>
                                <div class="row">
                                    <div class="col-3"><p class="text-muted">Remaining</p></div>
                                    <div class="col-3">: <strong>?</strong></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid mb-4">
                <div class="row pt-3 px-2">
                    <div class="col-md-10 mx-auto border rounded shadow">
                        <div class="row">
                            <div class="col-md-6 mt-4">
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                        <h2 class="custom-border"><i class="fa fa-pie-chart"></i>&nbsp;<small>Overall Performance</small></h2>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 mx-auto chart os-animation" data-os-animation="fadeInUp" data-os-animation-delay="0.5s">
                                        <div id="chartContainer" style="height: 400px; width: 100%;"></div>
                                        <div class="col-md-12 mx-auto bg-white" style="margin-top:-1.65vh;height:2vh;"></div>
                                        <!-- Hide watermark -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row mt-4">
                                    <div class="col-md-12 text-center">
                                        <h2 class="custom-border"><i class="fa fa-pie-chart"></i>&nbsp;<small>Recent Tests Status</small></h2>
                                    </div>
                                </div>
                                <div class="row p-2">
                                    <table class="col-md-12 table table-striped table-hover table-bordered shadow text-center">
                                        <thead>
                                            <tr>
                                                <th colspan="2"><i class="fa fa-calendar-check-o "></i>&nbsp;Exam Date</th>
                                                <th colspan="2" class="align-middle"><i class="fa fa-check-circle" ></i>&nbsp;Result</th>
                                            </tr>
                                            <tr>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                                <th>Attempted</th>
                                                <th>Correct</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($data["analysis"] as $d): ?>
                                            <tr>
                                                <td><?php echo $d["start"]; ?></td>
                                                <td><?php echo $d["end"]; ?></td>
                                                <td><strong><span class="text-success"><?php echo $d["noq"]; ?></span> / <?php if($data["user"]["course"] === "JEE"){ echo "90"; } else if($data["user"]["course"] === "NEET"){ echo "180"; } ?></strong></td>
                                                <td><strong><span class="text-success"><?php echo $d["marks"]; ?></span> / <?php echo $d["noq"]; ?></strong></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- script for chart -->
        <script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
        <script>
            window.onload = function () {
                var options = {
                    animationEnabled: true,
                    axisY: {
        //                title: "Performance of ",
        //                suffix: "%",
                        includeZero: false,
                        gridColor: "#ddd",
                        gridDashType: "dash"
                    },
                    axisX: {
        //                title: "Exam Date",
                        gridThickness: 1,
                        gridColor: "#ddd",
                        gridDashType: "dash"
                    },
                    data: [{
                        type: "column",
                        color: "#A3E4D7",
                        fillOpacity: .7,
                        yValueFormatString: "#,##0.0#" % "",
                        dataPoints: [
                            {label: "Test:1", y: <?php if(array_key_exists(0, $data["analysis"])) { echo $data["analysis"][0]["marks"]; } else { echo 0; } ?>},
                            {label: "Test:2", y: <?php if(array_key_exists(1, $data["analysis"])) { echo $data["analysis"][1]["marks"]; } else { echo 0; } ?>},
                            {label: "Test:3", y: <?php if(array_key_exists(2, $data["analysis"])) { echo $data["analysis"][2]["marks"]; } else { echo 0; } ?>},
                            {label: "Test:4", y: <?php if(array_key_exists(3, $data["analysis"])) { echo $data["analysis"][3]["marks"]; } else { echo 0; } ?>},
                            {label: "Test:5", y: <?php if(array_key_exists(4, $data["analysis"])) { echo $data["analysis"][4]["marks"]; } else { echo 0; } ?>}
                        ]

                    }]
                };
                $("#chartContainer").CanvasJSChart(options);
            };
        </script>
        <script>
            $(document).ready(function(){
                $('#goto').click(function() {
                    $('#analysis').show();
                    $('html, body').animate({
                        scrollTop: $("#analysis").offset().top
                    }, 1000);
                });
            });
        </script>