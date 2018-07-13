<?php

function asset_url($type) {
//    return "../assets/" . $type . "/";
    return base_url() . "assets/" . $type . "/";
}