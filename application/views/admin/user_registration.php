<?php
defined('BASEPATH') OR exit("No Direct Access is allowed for this page.");
if($this->session->userdata('sessionId') != '') { ?>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12 my-3">
			<h2 class="text-center mesg" style="font-size: 1.3em;">Student Registration Form</h2><hr/>
		</div>
		<div class="col-md-6 mx-auto my-3" id="regForm">
		<?php 
		$attributes = array( 'class' => '', 'id' => 'U_reg', 'autocomplete' => 'off');
		echo form_open('/admin/process/reg_form_validation', $attributes);
		?>
		<div class="form-group">
			<label for="username" class="label">Name of Student</label>
			<?php
			echo form_input(array('name' => 'user_name' , 'id' => 'username', 'type' => 'text' , 'class' =>'form-control', 'size' => '50', 'placeholder' => 'Enter student name..' ));
			?>
			<span class="text-danger"><?php echo form_error("user_name"); ?></span>
		</div>
		<div class="form-group">
			<label for="usermail" class="label">Email Address</label>
			<?php
			echo form_input(array('name' => 'user_email', 'id' => 'usermail', 'type' => 'email' , 'class' =>'form-control', 'size' => '50', 'placeholder' => 'Enter student mail address..'));
			?>
			<span class="text-danger"><?php echo form_error("user_email"); ?></span>
		</div>
		<div class="form-group">
			<label for="usermob" class="label">Contact Number</label>
			<?php
			echo form_input(array('name' => 'user_contact', 'id' => 'usermob', 'type' => 'text', 'class' =>'form-control' , 'size' => '50', 'placeholder' => 'Enter student contact address..' ));
			?>
			<span class="text-danger"><?php echo form_error("user_contact"); ?></span>
		</div>
		<h5 class="text-center">Select your Course</h5>
		<div class="row">
			<?php
				$IIT 	= array('id' => 'jee', 'name' => 'course', 'value' => 'JEE', 'class' => 'course');
				$NEET	= array('id' => 'neet', 'name' => 'course', 'value' => 'NEET', 'class' => 'course');
				echo "<div class='col-md-3'>".form_radio($IIT)."IIT</div><div class='col-md-3'>".form_radio($NEET)." NEET</div>";
			?>
			<div class="offset-md-2 col-md-4 text-center">
				<select id="YearDropdown" class="form-control" name="duration"><option>Select Duration</option></select>
			</div>
		</div><span class="text-danger"><?php echo form_error("course"); ?></span><br/>
		<button type="submit" name='Submit' class="btn btn-info btn-block" value="">Register New User to System &nbsp;<i class="fa fa-user-plus"></i></button>
		<?php echo form_close(); ?>
		</div>
	</div>
</div>
<!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="modalBtn" hidden>
    Open modal
  </button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Student's Login Information</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" id="modalBody">
          <?php if($this->session->userdata("userData")) :
          		echo $this->session->userdata("userData");
          		$this->session->unset_userdata("userData");
          		echo '<script> $("#modalBtn").click(); </script>';
          	endif; ?>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
<script type="text/javascript">
	data = {
	    JEE 	: ['1', '2'],
	    NEET 	: ['Select Duration']
	}
	$(document).ready(function() {
		$('.course').click(function(){
		    var yearOpt = '';
		    $.each(data[$(this).val()],function(i,v){
		        yearOpt += "<option value='"+v+"'>"+v+"</option>"
		    })
		    $('#YearDropdown').html(yearOpt);
		});
	});

	$(document).ready(function() {
		if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
			$("#regForm").removeClass('col-md-6');
			$("#regForm").addClass('col-12');
		} else {
			$("#regForm").removeClass('col-12');
			$("#regForm").addClass('col-md-6');
		}
	});

</script>
<?php } else { redirect(base_url().'index.php/admin/AdminLogin'); } ?>