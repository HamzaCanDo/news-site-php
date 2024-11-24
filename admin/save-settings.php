<?php
include "config.php";

if(empty($_FILES['logo']['name'])){
    // No new image uploaded, use the old image
    $file_name = $_POST['old_logo'];
}else{

    $errors = array();

    $file_name = $_FILES['logo']['name'];
    $file_size = $_FILES['logo']['size'];
    $file_tmp = $_FILES['logo']['tmp_name'];
    $file_type = $_FILES['logo']['type'];
    $exp = explode('.',$file_name);
    $file_ext = end($exp);

    $extensions = array("jpeg", "jpg", "png");

    if(in_array($file_ext, $extensions) === false)
    {
      $errors[] = "This extension file is not allowed, Please choose a JPG or PNG file.";
    }

    if($file_size > 2097152){
      $errors[] = "File size must be 2mb or lower.";
    }

    // Fetch next AUTO_INCREMENT value for post table
    $query = "SELECT AUTO_INCREMENT FROM information_schema.TABLES 
              WHERE TABLE_SCHEMA = 'news-site' 
              AND TABLE_NAME = 'post'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    $next_id = $row['AUTO_INCREMENT'];

    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $new_name = $category . '-' . $next_id . '.' . $file_ext;  // Use next post ID as part of the file name
    $target = "images/" . $new_name;

    if(empty($errors) == true){
      move_uploaded_file($file_tmp, $target);
      $file_name = $new_name;  // Update file name only if there are no errors and file is uploaded
    }else{
      print_r($errors);
      die();
    }
}

// Now update the post with the correct file name (old or new)
$sql = "UPDATE settings SET websitename='{$_POST["website_name"]}', logo='{$file_name}', footerdesc='{$_POST["footer_desc"]}'";

$result = mysqli_query($conn, $sql);

if($result){
    header("Location: {$hostname}/admin/settings.php");
}else{
    echo "<div class='alert alert-danger'>Query Failed.</div>";
}


?>
