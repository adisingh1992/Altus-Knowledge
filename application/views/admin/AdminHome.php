<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<?php if ($this->session->userdata('sessionId') != '') { ?>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 py-3">
                <div class="col-md-12 admin_dp text-center">
                    <img src="<?php echo asset_url("images")."views/"; ?>admin.png"/>
                </div>
                <div class="col-md-12 text-justify my-3">
                    <table class="table table-striped table-hover">
                        <tbody>
                            <tr><td>Name</td><td class="text-right">Altus Knowledge</td></tr>
                            <tr><td>Email</td><td class="text-right">Altus@gmail.com</td></tr>
                            <tr><td>Contact</td><td class="text-right">+91-8976-976564</td></tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-9">
                <div class="col-md-12">
                    <div class="panel panel-default py-3">
                        <div class="panel-body">
                            <fieldset class="col-md-12 admin-fieldset">
                                <legend class="legend-mobile" id="legend">Website Statistics</legend>
                                <div class="row">
                                    <div class="col-md-5">
                                        <table class="table table-hover table-striped table-responsive">
                                            <thead><tr><th colspan="2">Student Analytics</th></tr></thead>
                                            <tbody>
                                                <tr><td>Total Number of Registered Students</td>
                                                    <td><?php foreach ($all_students as $key1) {
                                                        echo $key1->db_rows;
                                                    } ?></td></tr>
                                                <tr><td>Total Number of Active Students</td>
                                                    <td><?php foreach ($active_students as $key2) {
                                                        echo $key2->act_rows;
                                                    } ?></td></tr>
                                                <tr><td>Total Number of Disbale Students</td>
                                                    <td><?php echo $key1->db_rows - $key2->act_rows; ?></td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-2"></div>
                                    <div class="col-md-5">
                                        <table class="table table-hover table-striped table-responsive">
                                            <thead><tr><th colspan="2">Test Analytics</th></tr></thead>
                                            <tbody>
                                                <tr><td>Total Number of Tests available in DB</td><td>20</td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <table class="table table-hover table-striped table-responsive">
                                            <thead><tr><th colspan="2">IIT Batch (1 Year)</th></tr></thead>
                                            <tbody>
                                                <tr><td>Enrolled Students in IIT (1 Year)</td>
                                                    <td class="text-center">
                                                        <?php foreach ($jee_all_student1 as $key3) {
                                                            echo $key3->jee_all_user1;
                                                        } ?></td></tr>

                                                <tr><td>Active Students in IIT (1 Year)</td>
                                                    <td class="text-center">
                                                <?php foreach ($jee_active_student1 as $key4) {
                                                    echo $key4->jee_active_user1;
                                                } ?></td></tr>

                                                <tr><td>Disable Students in IIT (1 Year)</td>
                                                    <td class="text-center">
                                                <?php echo $key3->jee_all_user1 - $key4->jee_active_user1; ?></td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-4">
                                        <table class="table table-hover table-striped table-responsive">
                                            <thead><tr><th colspan="2">IIT Batch (2 Year)</th></tr></thead>
                                            <tbody>
                                                <tr><td>Enrolled Students in IIT (2 Year)</td>
                                                    <td class="text-center">
                                                        <?php foreach ($jee_all_student2 as $key5) {
                                                            echo $key5->jee_all_user2;
                                                        } ?></td></tr>

                                                <tr><td>Active Students in IIT (2 Year)</td>
                                                    <td class="text-center">
                                                    <?php foreach ($jee_active_student2 as $key6) {
                                                        echo $key6->jee_active_user2;
                                                    } ?></td></tr>

                                                <tr><td>Disable Students in IIT (2 Year)</td>
                                                    <td class="text-center">
                                                    <?php echo $key5->jee_all_user2 - $key6->jee_active_user2; ?></td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-4">
                                        <table class="table table-hover table-striped table-responsive">
                                            <thead><tr><th colspan="2">NEET Batch</th></tr></thead>
                                            <tbody>
                                                <tr><td>Enrolled Student for NEET</td>
                                                    <td class="text-center">
                                                    <?php foreach ($neet_all_student as $key7) {
                                                        echo $key7->neet_all_user;
                                                    } ?></td></tr>

                                                <tr><td>Active Studets in NEET Batch</td>
                                                    <td class="text-center">
                                                    <?php foreach ($neet_active_student as $key8) {
                                                        echo $key8->neet_active_user;
                                                    } ?></td></tr>
                                                <tr><td>Disable Students in NEET Batch</td>
                                                    <td class="text-center">
                                                    <?php echo $key7->neet_all_user - $key8->neet_active_user; ?></td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } else { redirect(base_url() . 'admin/AdminLogin'); } ?>