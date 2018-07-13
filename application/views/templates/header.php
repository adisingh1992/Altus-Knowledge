<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title><?php echo $title . " : Altus Knowledge"; ?></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1 maximum-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <!-- Stylesheets -->
        <link rel="stylesheet" href='<?php echo asset_url("css"); ?>bootstrap.min.css'>
        <!--<link rel="stylesheet" href="<?php echo asset_url("css"); ?>font-awesome.css">-->
        <!--<link rel="stylesheet" type="text/css" href="<?php echo asset_url("css"); ?>animate.css">-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.bootcss.com/animate.css/3.1.0/animate.css">
        <link rel="stylesheet" href='<?php echo asset_url("css"); ?>loader.css'>
        <link rel="stylesheet" href='<?php echo asset_url("css"); ?>styles.css'>
        <!-- Stylesheets -->
        <!-- Favicons -->
        <link rel="apple-touch-icon" sizes="57x57" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="<?php echo asset_url("images") . "favicon" ?>/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="<?php echo asset_url("images") . "favicon" ?>/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="<?php echo asset_url("images") . "favicon" ?>/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="<?php echo asset_url("images") . "favicon" ?>/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="<?php echo asset_url("images") . "favicon" ?>/favicon-16x16.png">
        <link rel="manifest" href="<?php echo asset_url("images") . "favicon" ?>/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="<?php echo asset_url("images") . "favicon" ?>/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        <!-- Favicons -->
        <noscript><meta http-equiv="refresh" content="0; URL=<?php echo base_url() . 'process/noscript'; ?>"/></noscript>
        <script src="<?php echo asset_url("js"); ?>jquery.min.js"></script>
        <script src="<?php echo asset_url("js"); ?>popper.min.js"></script>
        <script src="<?php echo asset_url("js"); ?>waypoints.min.js"></script>
<!--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.4/waypoints.min.js"></script>-->
        <script src='<?php echo asset_url("js"); ?>bootstrap.min.js'></script>
    </head>
    <body>
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- header -->
        <nav class="navbar navbar-expand-sm" style="background-color: #202020;">
            <a class="navbar-brand" href="https://www.altusknowledge.co.in/">
                <img src="<?php echo asset_url("images") . "views/" ?>altus_logo.png" alt="logo"><span class="text-white">&nbsp;Altus Knowledge</span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="https://www.altusknowledge.co.in/">Home</a>
                    </li>
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="https://www.altusknowledge.co.in/about-us/">About-us</a>
                    </li>
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="https://www.altusknowledge.co.in/courses/">Program-Courses</a>
                    </li>
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="https://www.altusknowledge.co.in/packages-pricing/">Packages & Pricing</a>
                    </li>
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="https://www.altusknowledge.co.in/faq/">FAQ</a>
                    </li>
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="https://www.altusknowledge.co.in/contact/">Contact Us</a>
                    </li>
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="https://www.altusknowledge.co.in/testimonials/">Testimonials</a>
                    </li>
                    <?php if ($login): ?>
                    <li class="nav-item text-center top-navbar-item">
                        <a class="nav-link" href="<?php echo base_url() . "process/logout"; ?>">Logout</a>
                    </li>
                    <?php endif; ?>
                </ul>
            </div>
        </nav>
        <!-- end of header -->
        <?php if ($login): ?>
            <div class="container-fluid">
                <div class="row">
                    <aside class="p-0 aside-navbar" id="aside-nav">
                        <nav class="navbar navbar-expand flex-md-column flex-row align-items-start py-2 aside-navbar-inner">
                            <div class="collapse navbar-collapse">
                                <ul class="flex-md-column flex-row navbar-nav w-100 justify-content-between user-menu-ul">
                                    <li class="nav-item user-menu-li">
                                        <a class="nav-link px-1 text-nowrap" href="#"><i class="fa fa-tachometer fa-fw" id="user_menu"></i></a>
                                    </li>
                                    <li class="nav-item user-menu-li">
                                        <a class="nav-link px-1" href="<?php echo base_url(); ?>" data-toggle="tooltip" title="Home" data-placement="bottom" ><i class="fa fa-home fa-fw"></i></a>
                                    </li>
                                    <li class="nav-item user-menu-li">
                                        <a class="nav-link px-1" href="<?php echo base_url() . "mytests"; ?>" data-toggle="tooltip" title="My Tests" data-placement="bottom"><i class="fa fa-pencil-square-o fa-fw"></i></a>
                                    </li>
                                    <li class="nav-item user-menu-li">
                                        <a class="nav-link px-1" href="<?php echo base_url() . "profile"; ?>" data-toggle="tooltip" title="Profile" data-placement="bottom"><i class="fa fa-user-circle-o fa-fw"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </aside>
                </div>
            </div>
        <?php endif; ?>
        <?php if ($msg != ''): ?>
            <div class="text-center alert alert-warning alert-dismissible p-3 alert-box" role="alert" id="alert-msg" style="margin-bottom: 0px;">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <span><?php echo $msg; ?></span>
            </div>
        <?php endif; ?>