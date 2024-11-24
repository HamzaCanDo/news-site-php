<?php
include "header.php";

// Check user role and redirect if necessary
if ($_SESSION["user_role"] == '0') {
    header("Location: {$hostname}/admin/post.php");
    exit(); // Stop further execution
}

if (isset($_POST['submit'])) {
    include "config.php";

    // Prepare input values
    $userid = $_POST['user_id'];
    $fname = $_POST['f_name'];
    $lname = $_POST['l_name'];
    $user = $_POST['username'];
    $role = $_POST['role'];

    // Check if the username already exists for a different user
    $stmt = $conn->prepare("SELECT * FROM user WHERE username = ? AND user_id != ?");
    $stmt->bind_param("si", $user, $userid);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "<p style='color:red;text-align:center;margin: 10px 0;'>Username already taken</p>";
    } else {
        // Update the user details
        $stmt = $conn->prepare("UPDATE user SET first_name = ?, last_name = ?, username = ?, role = ? WHERE user_id = ?");
        $stmt->bind_param("sssii", $fname, $lname, $user, $role, $userid);

        if ($stmt->execute()) {
            header("Location: {$hostname}/admin/users.php");
            exit(); // Stop further execution
        } else {
            echo "<p style='color:red;text-align:center;margin: 10px 0;'>Error updating user</p>";
        }
    }
}

// Check if 'id' is passed in the URL
if (isset($_GET['id']) && !empty($_GET['id'])) {
    include "config.php";
    $user_id = $_GET['id'];

    $stmt = $conn->prepare("SELECT * FROM user WHERE user_id = ?");
    $stmt->bind_param("i", $user_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
    } else {
        echo "<p style='color:red;text-align:center;'>User not found.</p>";
        exit(); // Stop further execution
    }
} else {
    die("<p style='color:red;text-align:center;'>User ID is missing from the URL.</p>");
}
?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="admin-heading">Modify User Details</h1>
            </div>
            <div class="col-md-offset-4 col-md-4">
                <!-- Form Start -->
                <?php if (isset($row)) { ?>
                <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
                    <div class="form-group">
                        <input type="hidden" name="user_id" class="form-control" value="<?php echo htmlspecialchars($row['user_id']); ?>">
                    </div>
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" name="f_name" class="form-control" value="<?php echo htmlspecialchars($row['first_name']); ?>" required>
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" name="l_name" class="form-control" value="<?php echo htmlspecialchars($row['last_name']); ?>" required>
                    </div>
                    <div class="form-group">
                        <label>User Name</label>
                        <input type="text" name="username" class="form-control" value="<?php echo htmlspecialchars($row['username']); ?>" required>
                    </div>
                    <div class="form-group">
                        <label>User Role</label>
                        <select class="form-control" name="role">
                            <option value="0" <?php echo ($row['role'] == 0) ? 'selected' : ''; ?>>Normal User</option>
                            <option value="1" <?php echo ($row['role'] == 1) ? 'selected' : ''; ?>>Admin</option>
                        </select>
                    </div>
                    <input type="submit" name="submit" class="btn btn-primary" value="Update">
                </form>
                <?php } ?>
                <!-- /Form -->
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>
