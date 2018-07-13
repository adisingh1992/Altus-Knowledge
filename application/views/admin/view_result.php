<?php defined('BASEPATH') OR exit("No Direct Access is allowed for this page.");
    if ($this->session->userdata('sessionId') != ''):
?>
        <div class="container-fluid">
            <div class="row mt-4">
                <div class="col-md-12 my-3">
                    <h2 class="text-center mesg" style="font-size: 1.3em;">Student Test Performance</h2><hr/>
                </div>
            </div>
            <div class="row">
                <div class="offset-2 col-md-10">
                    <table class="table table-striped table-hover table-responsive text-center">
                        <thead class="bg-dark text-info">
                            <tr class="font-weight-bold">
                                <td>Exam Id</td><td>Correct Answers</td><td>Marks Earned</td><td>Questions Attempted</td><td>Type</td><td>Start</td><td>End</td><td>Category</td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($userdata as $user): ?>
                            <tr>
                                <td><?php echo $user["c_id"]; ?></td>
                                <td><?php echo $user["marks"]; ?></td>
                                <td><?php echo (($user["marks"]) * 4) - (($user["noq"]) - ($user["marks"])); ?></td>
                                <td><?php echo $user["noq"]; ?></td>
                                <td class="text-capitalize"><?php echo $user["type"]; ?></td>
                                <td><?php echo $user["start"]; ?></td>
                                <td><?php echo $user["end"]; ?></td>
                                <td><?php echo $user["category"]; ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
<?php 
    else:
        $this->load->view('admin/AdminLogin');
    endif;
?>