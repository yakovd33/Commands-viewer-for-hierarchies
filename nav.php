<nav>
    <div id="nav-links">
        <a href="tables.php">טבלאות</a>
        <a href="upload.php">הוסף קובץ</a>
        <?php if (is_logged() && $CURUSER['can_add_tables']) : ?>
            <a href="upload-table.php">הוסף טבלה</a>
        <?php endif; ?>

        <?php if (!is_logged()) : ?>
            <a href="login.php">התחבר</a>
        <?php else : ?>
            <?php if ($CURUSER['is_admin']) : ?>
                <a href="admin/">מנהל</a>
            <?php endif; ?>
            <a href="logout.php">התנתק</a>
        <?php endif; ?>
    </div>

    <a href="index.php"><img src="idf-logo.png"></a>
    <?php if (is_logged()) : ?>
        <div id="greeting">שלום <?php echo $CURUSER['username']; ?>, <?php echo $greeting; ?></div>
    <?php endif; ?>
    <div style="clear: both"></div> 
</nav>