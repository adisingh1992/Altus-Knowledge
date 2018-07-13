<?php
    $uri = explode("/", parse_url(htmlspecialchars($_SERVER['REQUEST_URI']), PHP_URL_PATH));
    $path = "profiles/";
    $ext = ".*";
//    $full = $path . $uri[5] . $ext;
    $full = $path . $uri[2] . $ext;

    $file = glob($full);

    if(empty($file)){
        $file = "profiles/avatar.jpg";
    }else{
        $file = $file[0];
    }

    $type = 'image/jpeg';
    header('Content-Type:' . $type);
    readfile($file);
