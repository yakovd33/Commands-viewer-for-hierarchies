<?php
    require 'config.php';
?>

<!DOCTYPE html>
<html lang="en" dir="RTL">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Nave</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="toast.css">
        <script src="jquery.js"></script>
        <script src="fontawesome.js"></script>
    </head>
    <body>
        <?php include 'nav.php'; ?>

        <div class="site-wrap">
            <div class="grid__col grid__col--2-of-6">
                <ul id="files-list">
                    <?php $files = $conn->query("SELECT * FROM `files` order by `date` DESC");
                        while ($file = $files->fetch()) {
                            echo '<li><p>' . $file['title'] . '</p><span id="update-number">עדכון #' . $file['update#'] . '</span><span id="added-info"><strong>' . $file['nickname'] . '</strong> ' . substr($file['date'], 0, 16) . '</span><input type="hidden" value="' . $file['filename'] . '"' . '</li><br>';
                        }
                    ?>
                </ul>
            </div>

            <div class="grid__col grid__col--4-of-6" id="file-display"></div>
        </div>

        <script src="script.js"></script>
    </body>
</html>