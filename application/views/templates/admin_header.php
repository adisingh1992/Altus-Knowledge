<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html>
    <head>
        <title><?php echo $title . " : Altus Knowledge"; ?></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="<?php echo asset_url("css"); ?>admin_styles.css">
        <noscript><meta http-equiv="refresh" content="0; URL=<?php echo base_url() . 'process/noscript'; ?>"/></noscript>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <?php if ($mesg != '') { ?>
            <div class="text-center alert alert-warning alert-dismissible p-3 alert-box" role="alert" id="alert-msg" style="margin-bottom: 0px;">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <span><?php echo $mesg; ?></span>
            </div>
        <?php } if ($this->session->userdata('sessionId') != '') { ?>
            <nav class="navbar navbar-expand-sm">
                <a class="navbar-brand" href="<?php echo base_url() . '/admin'; ?>">
                    <img src="<?php echo asset_url("images") . "views/"; ?>altus_logo.png" alt="logo"><span class="text-white">Altus Knowledge</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                Welcome <?php echo $this->session->userdata('sessionId'); ?>
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<?php echo base_url() . 'admin/AdminHome' ?>"><i class="fa fa-tachometer">&nbsp;</i>Dashboard</a>
                                <a class="dropdown-item" href="https://www.altusknowledge.co.in"><i class="fa fa-globe">&nbsp;</i>Main Portal</a>
                                <a class="dropdown-item" href="<?php echo base_url() . 'admin/user_registration' ?>"><i class="fa fa-user-plus">&nbsp;</i>Register New Student</a>
                                <a class="dropdown-item" href="<?php echo base_url() . 'admin/modify_user' ?>"><i class="fa fa-edit">&nbsp;</i>Modify Student</a>
                                <a class="dropdown-item" href="<?php echo base_url() . 'admin/process/logout' ?>"><i class="fa fa-sign-out">&nbsp;</i>Log Out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        <?php } else { ?>
            <nav class="navbar navbar-expand-sm">
                <a class="navbar-brand" href="<?php echo base_url() . 'admin'; ?>">
                    <img src="<?php echo asset_url("images") . "views/"; ?>altus_logo.png" alt="logo"><span class="text-white">Altus Knowledge</span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                Welcome Admin
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        <?php } ?>