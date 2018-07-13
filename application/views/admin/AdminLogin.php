<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php if($this->session->userdata('sessionId') == '') { ?>
	<div class="container-fluid mt-3 mb-5">
            <div class="row login-form">
                <div class="col-md-12 my-3">
                    <h2 class="text-center mesg" style="font-size: 2.2em;">Altus Knowledge</h2>
                </div>
                <div class="col-md-12 my-3 text-center">
                    <img src="<?php echo asset_url("images")."views/"; ?>c.png" height="100px" width="160px" alt="Lion Logo" style="opacity:0.6;"/>
                </div>
                <div class="col-md-6 mx-auto my-3" id="loginForm">
                <?php echo form_open(base_url() . "admin/process/authorizeAdmin", array('autocomplete' => 'off', 'name' => 'adminLoginForm', 'class' => 'form-block')); ?>
                    <div class="form-group">
                        <label for="adId" class="label">Admin Id</label>
                        <?php echo form_input(array('name' => 'adminId', 'id' => 'adId', 'type' => 'text', 'class' => 'form-control', 'placeholder' => 'Enter your admin id', 'tabindex' => '1')); ?>
                        <span class='text-danger'><?php echo form_error('adminId'); ?></span>
                    </div>
                    <div class="form-group">
                        <label for="adPswd" class="label">Password</label>
                        <?php echo form_input(array('name' => 'adminPswd', 'id' => 'adPswd', 'type' => 'password', 'class' => 'form-control', 'placeholder' => 'Enter your password', 'tabindex' => '2')); ?>
                        <span class='text-danger'><?php echo form_error('adminPswd'); ?></span>
                    </div>
                    <button type="submit" name='Submit' class="btn btn-info btn-block my-1" value="" tabindex="3">Log In to System &nbsp;<i class="fa fa-sign-in"></i></button>
                <?php echo form_close(); ?>
                </div>
            </div>
	</div>
	<script type="text/javascript">
            $(document).ready(function() {
                if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
                    $("#loginForm").removeClass('col-md-6');
                    $("#loginForm").addClass('col-12');
                } else {
                    $("#loginForm").removeClass('col-12');
                    $("#loginForm").addClass('col-md-6');
                }
            });
	</script>
<?php } else { redirect(base_url().'admin/adminHome'); } ?>