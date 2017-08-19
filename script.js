$("#files-list li").click(function () {
    data = new FormData();
    data.append('filename', $(this).find("input").val());

    $.ajax({
        url: 'file_display.php',
        processData: false,
        contentType: false,
        method: "POST",
        data: data,
        success: function (data) {
            $("#file-display").html(data);
            resize_command_view();
        }
    });
});

data = new FormData();
data.append('last', '');
$.ajax({
    url: 'file_display.php',
    processData: false,
    contentType: false,
    method: "POST",
    data: data,
    success: function (data) {
        $("#file-display").html(data);
        resize_command_view();
    }
});

// Upload file
$("#upload-btn").click(function () {
    $("#selected_file").click();
})

$("#selected_file").change(function () {
    if ($("#selected_file")[0].files.length == 1) {
        $("#upload_additional_info").slideDown(300);
    }
});

function resize_command_view () {
    $("#command_display").css('height', $(document).height() - 137 + 'px')
}

function table_add_row (element, cols, delete_row) {
    cols_html = '';
    for (i = 0; i < cols; i++) {
        cols_html += '<td contenteditable>--</td>';
    }

    if (delete_row) {
        cols_html += `<td>
            <button class="btn btn-danger delete-col">מחק</button>
        </td>`;
        setTimeout(delete_col, 1000);
    }

    element.find('tbody').append('<tr>' + cols_html + '</tr>');
    element.find('tbody').find('tr:last').find('td').first().focus();
    update_table_val();
}

function delete_col () {
    $.each($(".delete-col"), function () {
        console.log('delete');
        $(this).click(function () {
            $(this).closest('tr').remove();
            update_table_val();
        });
    })
}

$("#tables-list li").click(function () {
    $.ajax({
        url: 'get_table.php?id=' + $(this).find("input").val(),
        processData: false,
        contentType: false,
        success: function (data) {
            $("#tables-display").html(data);
        }
    });
});

function ajaxformsubmit(element, e) {
    e.preventDefault();
    action = element.attr('action');
    form_data = element.serialize();

    $.post(action, form_data, function (response) {
        console.log(response);
    })
}