<?php
    require_once('config.php');

    if (isset($_GET['username'])) {
        $username = $_GET['username'];
        if ($conn->query("SELECT * FROM `users` WHERE BINARY `username` = '{$username}'")->rowCount()) {
            echo 'exists';
        }
    }
?>