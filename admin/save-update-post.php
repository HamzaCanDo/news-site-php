<?php
include "config.php";

if(empty($_FILES['new-image']['name'])){
    // No new image uploaded, use the old image
    $file_name = $_POST['old_image'];
} else {

    $errors = array();

    $file_name = $_FILES['new-image']['name'];
    $file_size = $_FILES['new-image']['size'];
    $file_tmp = $_FILES['new-image']['tmp_name'];
    $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

    $extensions = array("jpeg", "jpg", "png");

    if (in_array($file_ext, $extensions) === false) {
        $errors[] = "This extension file is not allowed, Please choose a JPG or PNG file.";
    }

    $max_size = 2 * 1024 * 1024;  // 2MB
    if ($file_size > $max_size) {
        $errors[] = "File size must be 2MB or lower.";
    }

    if (empty($errors)) {
        // Use the next AUTO_INCREMENT value for naming
        $query = "SELECT AUTO_INCREMENT FROM information_schema.TABLES 
                  WHERE TABLE_SCHEMA = 'news-site' 
                  AND TABLE_NAME = 'post'";
        $result = mysqli_query($conn, $query);
        $row = mysqli_fetch_assoc($result);
        $next_id = $row['AUTO_INCREMENT'];

        $category = mysqli_real_escape_string($conn, $_POST['category']);
        $new_name = $category . '-' . $next_id . '.' . $file_ext;
        $target = "upload/" . $new_name;

        if (move_uploaded_file($file_tmp, $target)) {
            $file_name = $new_name;  // Update file name only if uploaded successfully
        } else {
            $errors[] = "Failed to upload file.";
            print_r($errors);
            die();
        }
    } else {
        print_r($errors);
        die();
    }
}

// Now sanitize all inputs
$title = mysqli_real_escape_string($conn, $_POST['post_title']);
$description = mysqli_real_escape_string($conn, $_POST['postdesc']);
$category = mysqli_real_escape_string($conn, $_POST['category']);
$post_id = mysqli_real_escape_string($conn, $_POST['post_id']);

// Now update the post with the correct file name
$sql1 = "UPDATE post SET title='$title', description='$description', category='$category', post_img='$file_name' 
         WHERE post_id='$post_id'";
$result1 = mysqli_query($conn, $sql1);

// Update category post counts if the category is changed
if ($_POST['old_category'] != $_POST["category"]) {
    $sql2 = "UPDATE category SET post= post - 1 WHERE category_id = {$_POST['old_category']};";
    $sql3 = "UPDATE category SET post= post + 1 WHERE category_id = {$_POST['category']};";
    
    $result2 = mysqli_query($conn, $sql2);
    $result3 = mysqli_query($conn, $sql3);
} else {
    $result2 = $result3 = true;  // If category is unchanged, we consider these as successful.
}

if ($result1 && $result2 && $result3) {
    header("Location: {$hostname}/admin/post.php");
    exit;
} else {
    echo "<div class='alert alert-danger'>Query Failed.</div>";
}
?>
