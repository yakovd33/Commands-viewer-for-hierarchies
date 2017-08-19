<?php
    require 'config.php';

    if (is_logged()) {
        header("Location: index.php");
    }

    if (isset($_POST['username'], $_POST['password'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $password_hashed = md5($password);

        // Get user
        $get_user_query = "SELECT * FROM `users` WHERE BINARY `username` = '{$username}' AND `password_hashed` = '{$password_hashed}'";
        $get_user_stmt = $conn->query($get_user_query);
        if ($get_user_stmt->rowCount()) {
            $user_details = $conn->query($get_user_query)->fetch();
            $_SESSION['userid'] = $user_details['id'];
            header("Location: index.php");
        }
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
            <form method="POST">
                <input type="text" name="username">
                <input type="password" name="password">
                <input type="submit">
            </form>
        </div>

        <script src="script.js"></script>
    </body>
</html>