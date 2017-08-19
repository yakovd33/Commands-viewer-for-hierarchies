<?php
    require_once('config.php');

    if (is_logged() && $CURUSER['can_add_tables']) {
        if (isset($_POST['table'])) {
            $html = addslashes(htmlentities($_POST['table']));
            $title = addslashes(htmlentities($_POST['title']));

            $conn->query("INSERT INTO `tables`(`html`, `title`, `user_id`) VALUES ('{$html}', '{$title}', 1)");
        }
    }

    header("Location: tables.php");
?>