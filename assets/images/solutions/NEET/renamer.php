<?php

foreach (array_filter(glob("*.JPG"), "is_file") as $f) {
    $newName = explode(".", $f)[0] + 90 . ".JPG";
    rename($f, "../temp/" . $newName);
    sleep(0.5);
}