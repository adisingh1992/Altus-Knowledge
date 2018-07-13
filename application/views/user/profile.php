<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 background" style="background-image:url('<?php echo asset_url("images") . "views/" ?>user_back.png');height:30vh;opacity:0.8"></div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3 user-profile-image text-center">
                    <img src="<?php echo asset_url("images")."picture.php/" . $data["uuid"]; ?>" class="user-profile" alt="user-profile" height="150px" width="150px"/> <br>
                    <div class="d-flex justify-content-center">
                        <?php
                        echo form_open_multipart(base_url() . 'process/update/picture', array("autocomplete" => "off"));
                        echo form_input(array("type" => "file", "name" => "picture", "id" => "picture", "required" => "true", "hidden" => "true", "onchange" => "this.form.submit()"));
                        echo form_button(array("type" => "submit", "id" => "update_pic", "hidden" => "true"));
                        echo form_close();
                        ?>
                        <button onclick="$('#picture').click()" id="upload" class="btn btn-outline-default btn-sm" style="margin-top:-18px;box-shadow:0px 0px 10px #fff"><i class="fa fa-camera"></i>&nbsp;Update</button>
                    </div>
                </div>
                <div class="col-md-9 user-info pt-4">
                    <span class="text-info h4"><?php echo $data["name"]; ?></span><br>
                    <span class="text-muted h6"><?php echo $data["course"] . " Batch (" . $data["duration"] . " Years)"; ?></span>
                </div>									
            </div>
        </div>
        <div class="container-fluid os-animation" data-os-animation="fadeInUp" data-os-animation-delay="0.6s">
            <div class="row my-3">
                <div class="col-md-10 mx-auto">
                    <small class="text-info">Hi <?php echo $data["name"]; ?>! This is what we know about you, update your information to keep your profile up-to-date.</small>
                    <ul class="list-group py-1">
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col-5 text-justify">
                                    <span class="h6"><i class="fa fa-bars text-muted"></i> Serial No.</span>
                                </div>
                                <div class="col-7">
                                    <span class="text-muted"><?php echo "#" . $data["uuid"]; ?></span>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col-5 text-justify">
                                    <span class="h6"><i class="fa fa-address-card-o text-muted"></i> User-Id</span>
                                </div>
                                <div class="col-7">
                                    <span class="text-muted"><?php echo $data["user_id"]; ?></span>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col-5 text-justify">
                                    <span class="h6"><i class="fa fa-phone text-muted"></i> Phone</span>
                                </div>
                                <div class="col-7">
                                    <span class="text-muted"><?php echo "+91-" . $data["contact"]; ?></span>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col-lg-5 text-justify">
                                    <span class="h6"><i class="fa fa-envelope-o text-muted"></i> Email</span>
                                </div>
                                <div class="col-lg-7">
                                    <span class="text-muted"><?php echo $data["email"]; ?></span>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row">
                                <div class="col-lg-5 text-justify">
                                    <span class="h6"><i class="fa fa-key text-muted"></i> Password</span>
                                </div>
                                <div class="col-lg-7">
                                    <span onclick="$('#pass').toggle(1000)" class="btn-link change_pass" style="cursor:pointer;"><i class="fa fa-edit"></i> Change Now</span>
                                </div>
                            </div>
                            <?php echo form_open(base_url() . "process/update/password", array("autocomplete" => "off")); ?>
                            <div class="row" id="pass" style="display:none;">
                                <div class="form-group col-md-3 pt-3">
                                    <?php echo form_input(array("type" => "password", "name" => "old", "id" => "old", "required" => "true", "placeholder" => "Enter Current Password", "class" => "form-control")); ?>
                                </div>
                                <div class="form-group col-md-3 pt-3">
                                    <?php echo form_input(array("type" => "password", "name" => "new", "id" => "new", "required" => "true", "placeholder" => "Enter New Password", "class" => "form-control")); ?>
                                </div>
                                <div class="form-group col-md-3 pt-3">
                                    <?php echo form_input(array("type" => "password", "name" => "confirm", "id" => "confirm", "required" => "true", "placeholder" => "Confirm New Password", "class" => "form-control")); ?>
                                </div>
                                <div class="form-group col-md-3 pt-3 text-center">
                                    <?php echo form_button(array("type" => "submit", "content" => "Update Password", "class" => "btn btn-block btn-outline-info")); ?>
                                </div>
                                <div class="form-group col-md-12 pt-3 text-center text-danger">
                                    <?php echo " " . form_error("old") . " "; ?>
                                    <?php echo " " . form_error("new") . " "; ?>
                                    <?php echo " " . form_error("confirm") . " "; ?>
                                </div>
                            </div>
                            <?php echo form_close(); ?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>