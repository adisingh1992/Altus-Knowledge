<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php $day = date('l'); ?>
        <div class="container-fluid">
            <div class="row">	
                <div class="col-md-12 px-0">
                    <div class="card h-100 justify-content-center card-image mb-3" style="background-image: url('<?php echo asset_url("images") . "views/" ?>test_back.png');background-size:cover;height:92vh !important;background-position:center;border-radius:0px !important;">
                        <!-- Content -->
                        <div class="text-white text-center align-items-center px-5 justify-content-center align-self-center">
                            <div>
                                <h5 class="text-success"><i class="fa fa-graduation-cap"></i> Altus Knowledge</h5>
                                <h3 class="card-title pt-2" style="font-family:georgia;"><strong>Give A Final Touch To Your Preparations</strong></h3>
                                <p class="os-animation" data-os-animation="fadeInUp" data-os-animation-delay="0.2s">We provide chapter-wise tests for each subject, Find your strong & weak areas in the syllabus and practice on our real-time examination environment with microlevel performance analysis.</p>
                                <button id="goto" class="btn btn-outline-success os-animation" data-os-animation="fadeInUp" data-os-animation-delay="0.5s" style="border-radius:20px;box-shadow:0px 0px 2px #fff">&nbsp;&nbsp;Take An Exam&nbsp;&nbsp;</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid" id="tests">
            <div class="row py-3 text-center">
                <div class="col-md-1">&nbsp;</div>
                <div class="col-md-5 os-animation justify-content-center align-self-center align-items-center" data-os-animation="fadeInLeft" data-os-animation-delay="0.4s">
                    <h2 class="custom-border">Altus Advantages</h2>
                    <ul class="px-2 text-left" style="list-style-type: none;">
                        <li><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;Practice multiple times before final exam.</li>
                        <li><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;Student can analyze his performance in multiple formats.</li>
                        <li><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;Take test as per your convenience.</li>
                        <li><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;Remote test access from Coaching Center/Cyber Cafe/Laptop/Tab devices.</li>
                    </ul>
                </div>
                <div class="col-md-6 os-animation" data-os-animation="fadeInRight" data-os-animation-delay="0.4s">
                    <img src="<?php echo asset_url("images") . "views/" ?>stu_book.png" alt="stu_book" height="100%" width="100%">
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="custom-border">Go Ahead And Try One Of Our Tests !</h2>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row py-3">
                <div class="col-md-10 offset-md-1">
                    <div id="accordion" class="accordion">
                    <?php foreach ($data["exams"] as $e): ?>
                        <?php $keys = array_keys($e); ?>
                        <div class="card mb-0">
                            <div class="card-header collapsed" data-toggle="collapse" href="#<?php echo $e[$keys[1]]; ?>" style="cursor: pointer;">
                                <a class="card-title">
                                    <strong class="text-info"><i class="fa fa-calendar-check-o" style="font-weight:900"></i>&nbsp;<?php echo $e[$keys[1]] . " To " . $e[$keys[2]];?></strong>
                                </a>
                            </div>
                            <div id="<?php echo $e[$keys[1]]; ?>" class="card-body collapse" data-parent="#accordion" >
                                <div class="row pt-1">
                                    <div class="col-md-12">
                                        <span class="text-danger text-center h6"><i class="fa fa-thermometer-three-quarters" aria-hidden="true"></i> Physics</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <span class="col-md-12 text-muted "><?php echo $e[$keys[3]]; ?></span>
                                </div>
                                <div class="row pt-1">
                                    <div class="col-md-12">
                                        <span class="text-warning text-center h6 mx-auto"><i class="fa fa-flask" aria-hidden="true"></i> Chemistry</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <span class="col-md-12 text-muted "><?php echo $e[$keys[4]]; ?></span>
                                </div>
                                <div class="row pt-1">
                                    <div class="col-md-12">
                                        <?php if ($data["course"] === "JEE"): ?>
                                        <span class="text-success text-center h6 mx-auto"><i class="fa fa-flask" aria-hidden="true"></i> Mathematics</span>
                                        <?php elseif ($data["course"] === "NEET"): ?>
                                        <span class="text-success text-center h6 mx-auto"><i class="fa fa-flask" aria-hidden="true"></i> Biology</span>
                                        <?php endif; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <span class="col-md-12 text-muted "><?php echo $e[$keys[5]]; ?></span>
                                </div>
                                <div class="row text-center pt-3">
                                    <div class="col-md-12">
                                    <?php // if($day === "Saturday" || $day === "Sunday"): ?>
                                        <?php if($data["course"] === "JEE"): ?>
                                        <a href="<?php echo base_url() . "test/mains/" . $e[$keys[0]]; ?>">
                                            <button class="btn btn-outline-info mt-1 os-animation" data-os-animation-delay="0.5s" data-os-animation="fadeInUp" style="width:130px"><i class="fa fa-pencil-square-o"></i> Mains</button>
                                        </a>
                                        <a href="<?php echo base_url() . "test/advance/" . $e[$keys[0]]; ?>">
                                            <button class="btn btn-outline-warning mt-1 os-animation" data-os-animation-delay="0.5s" data-os-animation="fadeInUp" style="width:130px"><i class="fa fa-pencil-square-o"></i> Advance</button>
                                        </a>
                                        <?php elseif($data["course"] === "NEET"): ?>
                                        <a href="<?php echo base_url() . "test/mains/" . $e[$keys[0]]; ?>">
                                            <button class="btn btn-outline-info mt-1 os-animation" data-os-animation-delay="0.5s" data-os-animation="fadeInUp" style="width:130px"><i class="fa fa-pencil-square-o"></i> Test</button>
                                        </a>
                                        <?php endif; ?>
                                        <a href="<?php echo base_url() . "results/" . $e[$keys[0]]; ?>">
                                            <button class="btn btn-outline-danger mt-1 os-animation" data-os-animation-delay="0.5s" data-os-animation="fadeInUp" style="width:130px"><i class="fa fa-eye"></i> View-Result</button>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function(){
                $('#goto').click(function() {
                    $('html, body').animate({
                        scrollTop: $("#tests").offset().top
                    }, 1000);
                });
            });
        </script>