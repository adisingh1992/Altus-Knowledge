<?php defined('BASEPATH') OR exit("No Direct Access is allowed for this page.");
    if ($this->session->userdata('sessionId') != '') {
        ?>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-13 mx-auto my-3">
                    <h2 class="text-center mesg" style="font-size: 1.3em;">Search A Student</h2>
                    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Student's Name" class="form-control">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 my-3">
                    <h2 class="text-center mesg" style="font-size: 1.3em;">Recent Student Registrations</h2><hr/>
                </div>
            </div>
            <div class="row">
                <div class="col-12 mx-auto">
                    <table class="table-sm table-striped table-hover table-responsive text-center" id="myTable">
                        <thead class="font-weight-bold">
                            <tr>
                                <td>#Id</td><td>User Id</td><td>Name</td><td>Email ID</td><td>Password</td><td>Contact No</td><td>Register Date</td><td>Duration</td><td>Enrolled For</td><td>Std Status</td><td colspan="3">Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $x = 1;
                            foreach ($id as $row) {
                                echo form_open(base_url() . "admin/process/modification", array('class' => '', 'id' => 'modification'));
                                $converted_time = date('d M Y', strtotime($row->reg_time));
                                ?>
                                <tr class="<?php if ($row->status == 'Disabled') {
                                    echo('text-danger');
                                } else {
                                    echo('text-body');
                                } ?>">
                                    <td><?php echo $x++; ?></td>
                                    <td><?php echo $row->user_id; ?></td>
                                    <td><?php echo $row->name; ?></td>
                                    <td><?php echo $row->email; ?></td>
                                    <td><?php echo $row->password; ?></td>
                                    <td><?php echo $row->contact; ?></td>
                                    <td><?php echo $converted_time; ?></td>
                                    <td><?php echo $row->duration . " Years"; ?></td>
                                    <td><?php echo $row->course; ?></td>
                                    <td>
                                        <select class="form-control" name="status" style="min-width: 100px;">
                                            <option value="Active">Active</option>
                                            <option value="Disabled">Disable</option>
                                        </select></td><input type="hidden" value="<?php echo($row->user_id); ?>" name="userid">
                            <td><input type="submit" name="update" value="Update" class="btn btn-info"></td>
                            <td><a href="<?php echo base_url() . "admin/deleteUser/" . $row->user_id; ?>"><?php echo form_button(array("content" => "Delete", "class" => "btn btn-danger")); ?></a></td>
                            <td><a href="<?php echo base_url() . "admin/process/viewResult/" . $row->user_id; ?>"><?php echo form_button(array("content" => "View", "class" => "btn btn-warning")); ?></a></td>
                            </tr>
                                <?php echo form_close();
                            } ?>
                        </tbody>
                    </table>
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
                        <h4 class="modal-title">Searched Information</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body" id="modalBody">
                        <table class="table table-striped table-hover table-responsive">
                            <thead>
                                <tr>
                                    <td>User Id</td><td>Email</td><td>Password</td><td>Status</td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $flag = 0;
                                foreach ($info as $key) {
                                    $flag++;
                                    $converted_time = date('d M Y', strtotime($key->reg_time));
                                    ?>
                                    <tr>
                                        <td><?php echo $key->user_id; ?></td>
                                        <td><?php echo $key->email; ?></td>
                                        <td><?php echo $key->password; ?></td>
                                        <td><?php echo $key->status; ?></td>
                                    </tr>
                                    <?php echo '<script> $("#modalBtn").click(); </script>';
                                } ?>
                            </tbody>
                        </table>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <div class="mx-auto"><?php echo $flag; ?> Row matches with this search.</div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
                if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                    $("#btnSrch").addClass('btn-block');
                } else {
                    $("#btnSrch").removeClass('btn-block');
                }
            });

            function myFunction() {
                var input, filter, table, tr, td, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[1];
                    if (td) {
                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
        <?php } else {
            $this->load->view('admin/AdminLogin');
        } ?>