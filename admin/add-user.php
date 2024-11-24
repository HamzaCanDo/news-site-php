<?php include "header.php";
if($_SESSION["user_role"] == '0'){
    header("Location: {$hostname}/admin/post.php");
} 
if(isset($_POST['save'])){
  include "config.php";

  $fname = mysqli_real_escape_string($conn, $_POST['fname']);
  $lname = mysqli_real_escape_string($conn, $_POST['lname']);
  $user = mysqli_real_escape_string($conn, $_POST['user']);
  $password = md5(mysqli_real_escape_string($conn, $_POST['password']));
  $role = mysqli_real_escape_string($conn, $_POST['role']);

  $sql = "SELECT username FROM user WHERE username = ?";
  $stmt = $conn->prepare($sql);
  $stmt->bind_param("s", $user);
  $stmt->execute();
  $result = $stmt->get_result();

  if($result->num_rows > 0){
    echo "<p style='color:red;text-align:center;margin: 10px 0;'> Username already taken </p>";
  } else {
    $sql1 = "INSERT INTO user (first_name, last_name, username, password, role) VALUES (?, ?, ?, ?, ?)";
    $stmt1 = $conn->prepare($sql1);
    $stmt1->bind_param("ssssi", $fname, $lname, $user, $password, $role);
    
    if($stmt1->execute()) {
        header("Location: {$hostname}/admin/users.php");
    } else {
        echo "<p style='color:red;text-align:center;margin: 10px 0;'> Error inserting user </p>";
    }
  }
}
?>

<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="admin-heading">Add User</h1>
            </div>
            <div class="col-md-offset-3 col-md-6">
                <!-- Form Start -->
                <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" autocomplete="off">
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" name="fname" class="form-control" placeholder="First Name" required>
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" name="lname" class="form-control" placeholder="Last Name" required>
                    </div>
                    <div class="form-group">
                        <label>User Name</label>
                        <input type="text" name="user" class="form-control" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                        <label>User Role</label>
                        <select class="form-control" name="role">
                            <option value="0">Normal User</option>
                            <option value="1">Admin</option>
                        </select>
                    </div>
                    <input type="submit" name="save" class="btn btn-primary" value="Save" />
                </form>
                <!-- Form End-->
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>

