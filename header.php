<?php
include "config.php";

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Initialize page title
$page_title = "";

// Get current page
$current_page = basename($_SERVER['PHP_SELF'], '.php');

// For category pages, set only the category name as title
if ($current_page == 'category' && isset($_GET['cid'])) {
    $cat_id = mysqli_real_escape_string($conn, $_GET['cid']);
    $cat_sql = "SELECT category_name FROM category WHERE category_id = '$cat_id'";
    $cat_result = mysqli_query($conn, $cat_sql);
    if ($cat_result && $cat_row = mysqli_fetch_assoc($cat_result)) {
        $page_title = $cat_row['category_name'];
    }
} else {
    // For non-category pages, get website name from settings
    $sql_settings = "SELECT websitename FROM settings LIMIT 1";
    $result_settings = mysqli_query($conn, $sql_settings);
    if ($result_settings && $row_settings = mysqli_fetch_assoc($result_settings)) {
        $page_title = $row_settings['websitename'];
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo htmlspecialchars($page_title); ?></title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id="header">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
                <?php
                $sql = "SELECT websitename, logo FROM settings LIMIT 1";
                $result = mysqli_query($conn, $sql);
                
                if ($result && $row = mysqli_fetch_assoc($result)) {
                    if (empty($row['logo'])) {
                        echo '<a href="index.php"><h1>' . htmlspecialchars($row['websitename']) . '</h1></a>';
                    } else {
                        echo '<a href="index.php" id="logo"><img src="admin/images/' . htmlspecialchars($row['logo']) . '" alt="' . htmlspecialchars($row['websitename']) . '"></a>';
                    }
                }
                ?>
            </div>
            <div class="col-md-4">
                <div class="user-info">
                    <?php
                    if (isset($_SESSION['username'])) {
                        echo '<h1>Welcome, ' . htmlspecialchars($_SESSION['username']) . '!</h1>';
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="menu-bar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php
                $cat_id = isset($_GET['cid']) && is_numeric($_GET['cid']) ? mysqli_real_escape_string($conn, $_GET['cid']) : 0;
                
                $sql = "SELECT category_id, category_name FROM category WHERE post > 0";
                $result = mysqli_query($conn, $sql);
                
                if (mysqli_num_rows($result) > 0) {
                    echo '<ul class="menu">';
                    echo '<li><a href="' . htmlspecialchars($hostname) . '">Home</a></li>';
                    
                    while ($row = mysqli_fetch_assoc($result)) {
                        $active = ($cat_id == $row['category_id']) ? 'active' : '';
                        echo '<li><a class="' . $active . '" href="category.php?cid=' . htmlspecialchars($row['category_id']) . '">' . htmlspecialchars($row['category_name']) . '</a></li>';
                    }

                    if (isset($_SESSION['username'])) {
                        echo '<li><a href="logout-redirect.php">Log Out</a></li>';
                    } else {
                        echo '<li><a href="http://localhost/news-site/admin">Log In</a></li>';
                    }

                    echo '</ul>';
                }
                ?>
            </div>
        </div>
    </div>
</div>
</body>
</html>
