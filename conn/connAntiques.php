<?php
    $conn = mysqli_connect("localhost", "campbfb2_antique", "Elocin89!") or die("Couldn't connect to MySQL. " .  mysqli_connect_error());
//    $conn = mysqli_connect('localhost', 'root', 'mysql');

    mysqli_select_db($conn, "campbfb2_antiques") or die("Couldn't find the Database");
//    mysqli_select_db($conn, 'antiques') or die("Couldn't find the Database");
?>