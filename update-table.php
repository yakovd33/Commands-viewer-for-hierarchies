<?php
    require_once('config.php');

    if (isset($_POST['id'], $_POST['title'], $_POST['table'])) {
        $id = $_POST['id'];
        $title = addslashes(htmlentities($_POST['title']));
        $html = addslashes(htmlentities($_POST['table']));

        $conn->query("UPDATE `tables` SET `title` = '{$title}', `html` = '{$html}' WHERE `id` = {$id}");
    }
?>