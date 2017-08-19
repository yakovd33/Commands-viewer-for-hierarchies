<?php
    require 'config.php';

    if (isset($_GET['id'])) {
        $table_id = $_GET['id'];
        $table_details = $conn->query("SELECT * FROM `tables` WHERE `id` = {$table_id}")->fetch();
    } else {
        header("Location: index.php");
    }
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
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body>
        <?php include 'nav.php'; ?>

        <div class="site-wrap">
            <h1><?php echo $table_details['title']; ?></h1>
            <div id="table">
                <?php echo html_entity_decode($table_details['html']); ?>
            </div>
        </div>

        <script src="script.js"></script>
    </body>
</html>