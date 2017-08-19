<?php
    require 'config.php';
?>

<!DOCTYPE html>
<html lang="en" dir="RTL">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>העלה קובץ פקודה</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="toast.css">
        <script src="jquery.js"></script>
    </head>
    <body>
        <?php include 'nav.php'; ?>
        <?php if (!isset($_POST['command_name'])) : ?>
            <form id="upload-wrap" action="upload.php" method="POST" enctype="multipart/form-data">
                <div id="upload-btn"></div>

                <div id="upload_additional_info">
                    <span><input type="name" name="nickname" placeholder="הזן את שמך"></span>
                    <span><input type="text" name="command_name" placeholder="שם הפקודה">
                    <input type="number" name="update_number" placeholder="עדכון"></span>
                    <div id="submit" onclick="$('#upload-wrap').submit()">שלח</div>
                </div>

                <input type="file" name="file" id="selected_file">
            </form>
        <?php else :
            if (isset($_FILES['file'])) {
                $file = $_FILES['file'];
                $tmp_name = $file['tmp_name'];
                $new_name = md5(time());
                $ext = pathinfo(basename($file["name"]), PATHINFO_EXTENSION);
                move_uploaded_file($file["tmp_name"], 'files/' . $new_name . '.' . $ext);
                $upload_file_to_db_stmt = $conn->prepare("INSERT INTO `files`(`id`, `title`, `filename`, `nickname`, `date`, `update#`) VALUES (NULL, ?, ?, ?, NOW(), ?)");
                $upload_file_to_db_stmt->execute([$_POST['command_name'], $new_name . '.' . $ext, $_POST['nickname'], $_POST['update_number']]);
                header("Location: index.php");
            }
        endif; ?>
        <script src="script.js"></script>   
    </body>
</html>