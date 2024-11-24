<?php
  include "config.php";
  if(isset($_FILES['fileToUpload'])){
    $errors = array();

    $file_name = $_FILES['fileToUpload']['name'];
    $file_size = $_FILES['fileToUpload']['size'];
    $file_tmp = $_FILES['fileToUpload']['tmp_name'];
    $file_type = $_FILES['fileToUpload']['type'];
    $file_ext = end(explode('.',$file_name));

    $extensions = array("jpeg","jpg","png","webp");

    if(in_array($file_ext,$extensions) === false)
    {
      $errors[] = "This extension file not allowed, Please choose a JPG or PNG file.";
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
$target = "upload/" . $new_name;

    if(empty($errors) == true){
      move_uploaded_file($file_tmp,$target);
    }else{
      print_r($errors);
      die();
    }
  }

  session_start();
  $title = mysqli_real_escape_string($conn, $_POST['post_title']);
  $description = mysqli_real_escape_string($conn, $_POST['postdesc']);
  $category = mysqli_real_escape_string($conn, $_POST['category']);
  $date = date("d M, Y");
  $author = $_SESSION['user_id'];

  $sql = "INSERT INTO post(title, description,category,post_date,author,post_img)
          VALUES('{$title}','{$description}',{$category},'{$date}',{$author},'{$new_name}');";
  $sql .= "UPDATE category SET post = post + 1 WHERE category_id = {$category}";

  if(mysqli_multi_query($conn, $sql)){
    header("location: {$hostname}/admin/post.php");
  }else{
    echo "<div class='alert alert-danger'>Query Failed.</div>";
  }

?>
