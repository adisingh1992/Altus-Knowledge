<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
        <section class="login-block py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 login-sec align-middle">
                        <h2 class="text-center">Altus Login</h2>
                        <div class="text-center">
                            <img src="<?php echo asset_url("images")."views/" ?>c.png" height="100px" width="160px" alt="abc" style="opacity:0.6;"/>
                        </div>
                        <?php echo form_open(base_url()."process/authorize", array("autocomplete" => "off", "class" => "login-form")); ?>
                            <center class="text-info py-2"><small>Improve your IIT-JEE or NEET rank by logging-in below&nbsp;!</small></center>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-append">
                                        <span class="input-group-text"><i class="fa fa-id-card-o"></i></span>
                                    </div>
                                    <?php echo form_input(array("name" => "user", "id" => "user", "required" => "true", "placeholder" => "Enter Your User-Id", "class" => "form-control input-sm chat-input")); ?>
                                </div>
                                <div class="input-group">
                                    <span class="text-danger"><?php echo "<br/>" . form_error("user"); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <i class="fa fa-key"></i>
                                        </span>
                                    </div>
                                    <?php echo form_input(array("type" => "password", "name" => "password", "id" => "password", "required" => "true", "placeholder" => "Enter Your Password", "class" => "form-control input-sm chat-input")); ?>
                                </div>
                                <div class="input-group">
                                    <span class="text-danger"><?php echo "<br/>" . form_error("password"); ?></span>
                                </div>
                            </div>  
                            <div class="form-group">
                                <?php echo form_button(array("type" => "submit", "content" => "Sign-in <i class='fa fa-sign-in'></i>", "class" => "btn btn-info btn-block")); ?>
                            </div>
                        <?php echo form_close(); ?>
                    </div>
                    <div class="col-md-8 pr-0 pl-0 info-slider">
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active" style="background-image: url('<?php echo asset_url("images")."views/" ?>student.png');background-size:cover;">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h3>Frustrated With Exam Blues?</h3>
                                        <p class="text-center"><i class="fa fa-check-square-o text-info"></i> Don't worry! You are at the right place, login and we will help you improve your performance by atleast 10 % - 15 %.</p>
                                    </div>
                                </div>
                                <div class="carousel-item" style="background-image: url('<?php echo asset_url("images")."views/" ?>learning.png');background-size:cover;">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h3>Prepare For Your Exams</h3>
                                        <p class="text-center"><i class="fa fa-check-square-o text-info"></i> Our Team of Experts provide the best guidance & exam solutions which prepares the student to breeze through their examinations.</p>
                                    </div>
                                </div>
                                <div class="carousel-item" style="background-image: url('<?php echo asset_url("images")."views/" ?>happy.png'); background-size:100 100;">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h3>Measure, Track & Compare Performance</h3>
                                        <p class="text-center"><i class="fa fa-check-square-o text-info"></i> Join thousands of aspirants from all over and compare how you match upto them.</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>    
                    </div>
                </div>
            </div>
        </section>