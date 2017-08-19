<?php
    require 'config.php';

    if (!is_logged() || !$CURUSER['can_add_tables']) {
        header("Location: index.php");
    }
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
        <link rel="stylesheet" href="bootstrap.css">
    </head>
    <body>
        <?php include 'nav.php'; ?>

        <div class="site-wrap">
            <form action="submit-table.php" method="POST">
                <input type="text" name="title" placeholder="כותרת">
                <table id="add-table" class="table table-responsive">
                    <thead>
                        <tr>
                            <th>מס'</th>
                            <th>סימול עורק</th>
                            <th>קצה א'</th>
                            <th>תמסורת</th>
                            <th>קצה ב'</th>
                            <th>מצפין</th>
                            <th>נתב</th>
                            <th>חמכ"ס</th>
                            <th>הערות</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        
                    </tbody>
                </table>

                <input type="hidden" id="table-value" name="table" value="">
                <button class="btn btn-success" id="table-add-row" onclick="table_add_row($('#add-table'), 9, true); return false;">הוסף</button>
                <button class="btn btn-primary">שמור</button>
            </form>
        </div>

        <script>
            function update_table_val () {
                $("#table-value").val($("#add-table").html());
            }

            $("#add-table").keyup(update_table_val);
        </script>

        <script src="script.js"></script>   
    </body>
</html>