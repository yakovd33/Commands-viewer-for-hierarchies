<?php
    session_start();
    date_default_timezone_set('Israel');

    $dbname = "nave";
    $dbuser = "root";
    $dbpass = "";
    
    $conn = new PDO("mysql:host=localhost;dbname=" . $dbname, $dbuser, $dbpass);

    function is_logged () {
        return isset($_SESSION['userid']);
    }

    if (is_logged()) {
        $CURUSER = $conn->query("SELECT * FROM `users` WHERE `id` = {$_SESSION['userid']}")->fetch();
    }
    
    // 24-hour format of an hour without leading zeros (0 through 23)
    $Hour = date('G');
    
    if ( $Hour >= 5 && $Hour <= 11 ) {
        $greeting = "בוקר טוב";
    } else if ($Hour >= 12 && $Hour <= 16) {
        $greeting = 'צהריים טובים';
    } else if ( $Hour >= 16 && $Hour <= 19 ) {
        $greeting = "אחר צהריים טובים";
    } else if ( $Hour >= 20 || $Hour <= 23 ) {
        $greeting = "ערב טוב";
    } else if ($Hour >= 0 && $Hour <= 4) {
        $greeting = 'לילה טוב';
    }
?>