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
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body>
        <?php include 'nav.php'; ?>

        <div class="site-wrap">
            <div class="grid__col grid__col--2-of-6">
                <ul id="tables-list">
                    <?php $tables = $conn->query("SELECT * FROM `tables` order by `date` DESC");
                        while ($table = $tables->fetch()) {
                            echo '<li data-tableitemid="' . $table['id'] . '"><p class="title">' . $table['title'] . '</p><span id="added-info">' . substr($table['date'], 0, 16) . '</span><input type="hidden" value="' . $table['id'] . '"' . '</li><br>';
                        }
                    ?>
                </ul>
            </div>

            <div class="grid__col grid__col--4-of-6" id="tables-display"></div>
        </div>

        <script src="script.js"></script>
    </body>
</html>