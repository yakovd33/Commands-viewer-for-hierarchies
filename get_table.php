<?php
    require_once('config.php');

    if (isset($_GET['id'])) : 
        $id = $_GET['id'];

        $table_details = $conn->query("SELECT * FROM `tables` WHERE `id` = {$id}")->fetch();
    ?>

    <form action="update-table.php" id="update-table-form" method="POST">
        <input type="hidden" name="id" value="<?php echo $table_details['id']; ?>">
        <input type="text" name="title" placeholder="כותרת" value="<?php echo $table_details['title']; ?>">
        <table id="update-table" class="table table-responsive">
            <?php echo html_entity_decode($table_details['html']); ?>
        </table>

        <?php if (is_logged() && $CURUSER['can_edit_tables']) : ?>
            <input type="hidden" id="table-value" name="table" value="<?php echo $table_details['html']; ?>">
            <button class="btn btn-success" id="table-add-row" onclick="table_add_row($('#update-table'), 9, true); return false;">הוסף</button>
            <button class="btn btn-primary">שמור</button>
            <p id="saved-msg" class="hide">נשמר בהצלחה.</p>
        <?php endif; ?>
    </form>

    <script>
        function update_table_val () {
            $("#table-value").val($("#update-table").html());
        }

        $("#update-table").keyup(update_table_val);

        $("#update-table-form").submit(function () {
            ajaxformsubmit($(this), event);
            $('#saved-msg').removeClass('hide');
            setTimeout(function () {
                $('#saved-msg').addClass('hide')
            }, 1000);

            $("li[data-tableitemid='" + $(this).find("input[name='id']").val() + "']").find(".title").html($(this).find('input[name="title"]').val());
        });
    </script>
<?php endif; ?>