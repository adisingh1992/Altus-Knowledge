<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
    <?php $result = $data["result"]; ?>
    <?php if($result): ?>
        <div class="container-fluid mb-2 mt-2">
            <div class="row py-5" id="test-contain">
                <div class="col-md-10 mx-auto">
                    <div class="acknowledgement-container os-animation" data-os-animation="fadeIn" data-os-animation-delay="0.2s" id="stack">
                        <div class="border bg-white h-100 text-center">
                            <div class="text-center mt-4"><h2 class="custom-border">Test Results</h2></div>
                            <div class="container-fluid mb-4 mt-4">
                                <div class="row my-3">
                                    <div class="col-md-9 mx-auto">
                                        <ul class="list-group py-1">
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-5 text-justify border-right">
                                                         <span class="h6 font-weight-bold font-weight-bold">Exam Id</span>
                                                    </div>
                                                    <div class="col-7 border-left">
                                                        <span class="text-muted"><?php echo "#" . $result[0]["c_id"]; ?></span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-5 text-justify border-right">
                                                         <span class="h6 font-weight-bold">User-Id</span>
                                                    </div>
                                                    <div class="col-7 border-left">
                                                        <span class="text-muted"><?php echo $data["user"]; ?></span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-5 text-justify border-right">
                                                         <span class="h6 font-weight-bold">Rank</span>
                                                    </div>
                                                    <div class="col-7 border-left font-weight-bold">
                                                        <?php if($data["marks"] < 34 && $data["course"] === "JEE"): ?>
                                                        <span class="text-danger">Fail</span>
                                                        <?php elseif($data["marks"] < 100 && $data["course"] === "NEET"): ?>
                                                        <span class="text-danger">Fail</span>
                                                        <?php else: ?>
                                                        <?php
                                                        //Rank Calculations
                                                            $marks_diff = ($data["rankings"][0]["mark2"]) - ($data["marks"]) + 1;
                                                            $rank_diff = ($data["rankings"][0]["rank2"]) - ($data["rankings"][0]["rank1"]);
                                                            $rank_on_marks = $rank_diff / $marks_diff;
                                                            $rank_on_diff = $rank_diff / $rank_on_marks;
                                                            $rank = $rank_on_diff + ($data["rankings"][0]["rank1"]) - 1;
                                                        //Rank Calculations
                                                        ?>
                                                        <span class="text-success"><?php echo "~" . $rank; ?></span>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-5 text-justify border-right">
                                                         <span class="h6 font-weight-bold">Questions Attended</span>
                                                    </div>
                                                    <div class="col-7 border-left">
                                                        <span class="text-muted"><?php echo $result[0]["noq"]; ?></span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-5 text-justify border-right">
                                                         <span class="h6 font-weight-bold">Correct Answers</span>
                                                    </div>
                                                    <div class="col-7 border-left">
                                                        <span class="text-muted"><?php echo $result[0]["marks"]; ?></span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-5 text-justify border-right">
                                                         <span class="h6 font-weight-bold">Incorrect Answers</span>
                                                    </div>
                                                    <div class="col-7 border-left">
                                                        <span class="text-muted"><?php echo ($result[0]["noq"])-($result[0]["marks"]); ?></span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="row">
                                                    <div class="col-5 text-justify border-right">
                                                         <span class="h6 font-weight-bold">Marks Earned</span>
                                                    </div>
                                                    <div class="col-7 border-left">
                                                        <span class="text-muted"><?php echo $data["marks"]; ?></span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row mb-2">
                                    <div class="col-md-6">
                                        <img scr="#" id="ques" class="img-fluid"/>
                                    </div>
                                    <div class="col-md-6">
                                        <img scr="#" id="sol" class="img-fluid"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="offset-md-3 col-md-6">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Question Number</th>
                                                    <th>Chosen Option</th>
                                                    <th>Solution Link</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php $solution = unserialize($result[0]["solutions"]); ?>
                                            <?php foreach($solution as $sol): ?>
                                                <tr>
                                                    <td><?php if($data["course"] === "JEE") { echo $sol[0]; } else if($data["course"] === "NEET") { echo $sol[0] - 90; } ?></td>
                                                    <td><?php echo "Option " . ucfirst($sol[1]); ?></td>
                                                    <?php $s = asset_url("images")."solutions/".$data["course"]."/". $data["c_id"] . "/". $sol[0] . ".JPG" ?>
                                                    <?php $q = asset_url("images")."questions/".$data["course"]."/". $data["c_id"] . "/". $sol[0] . ".JPG" ?>
                                                    <td><a href="#" onclick="$('#sol').attr('src', '<?php echo $s; ?>');$('#ques').attr('src', '<?php echo $q; ?>');">Link</a></td>
                                                </tr>
                                            <?php endforeach; ?>
                                            </tbody>
                                            <caption class="text-center font-weight-bold"><a class="text-danger" href="<?php echo asset_url("images")."questions/".$data["course"]."/". $data["c_id"] . "/" . $data["course"] . ".pdf"; ?>">Download Questions Set</a></caption>
                                            <caption class="text-center font-weight-bold"><a class="text-success" href="<?php echo asset_url("images")."solutions/".$data["course"]."/". $data["c_id"] . "/" . $data["course"] . ".pdf"; ?>">Download Solutions Set</a></caption>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php else: ?>
        <script>
            alert("Looks like you have not yet given this test, you can attempt the test between the mentioned dates on the 'MyTests' page.");
            window.location.href = "<?php echo base_url() . "mytests"; ?>";
        </script>
    <?php endif; ?>
        <script>
            $(document).ready(function () {
                $("body").css("background-image", "url('<?php echo asset_url("images") . "views/"; ?>chemi.jpg')");
                $("body").css("background-size", "cover");
            });
        </script>