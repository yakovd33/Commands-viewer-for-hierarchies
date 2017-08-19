<?php
    require 'config.php';

    if (isset($_POST['filename'])) {
        $filename = $_POST['filename'];
        $file_details = $conn->query("SELECT * FROM `files` WHERE `filename` = '{$filename}'")->fetch();
        $full_path = 'files/' . $filename;

        if (file_exists($full_path)) {
            echo '<h1 id="command-display-title">' . $file_details['title'] . '</h1>';
            echo '<h3 id="command-display-update-num">עדכון #' . $file_details['update#'] . '</h3>';
            echo '<iframe id="command_display" src="' . $full_path . '" style="width: 100%; height: 400px"></iframe>';
        } else {
            echo 'The file does not exists.';
        }
    } else if (isset($_POST['last'])) {
        $get_last_command = $conn->query("SELECT * FROM `files` order by `date` DESC LIMIT 1");;
        $last_file_details = $get_last_command->fetch();
        if ($get_last_command->rowCount() > 0) {
            $full_path = 'files/' . $last_file_details['filename'];
            echo '<h1 id="command-display-title">' . $last_file_details['title'] . '</h1>';
            echo '<h3 id="command-display-update-num">עדכון #' . $last_file_details['update#'] . '</h3>';
            echo '<iframe id="command_display" src="' . $full_path . '" style="width: 100%; height: 400px"></iframe>';
        }
    }
?>