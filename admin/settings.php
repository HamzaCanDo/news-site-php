<?php 
include "header.php";
include "config.php";

// Check database connection
if (!isset($conn) || !$conn) {
    die("<div class='alert alert-danger'>Database connection failed</div>");
}

// Prepare and execute the query
$sql = "SELECT * FROM settings";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("<div class='alert alert-danger'>Prepare failed: " . htmlspecialchars($conn->error) . "</div>");
}

if (!$stmt->execute()) {
    die("<div class='alert alert-danger'>Execute failed: " . htmlspecialchars($stmt->error) . "</div>");
}

$result = $stmt->get_result();
?>

<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="admin-heading">Website Settings</h1>
            </div>
            <div class="col-md-offset-3 col-md-6">
                <?php
                if($result->num_rows > 0){
                    $row = $result->fetch_assoc();
                ?>
                <!-- Form -->
                <form action="save-settings.php" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="website_name">Website Name</label>
                        <input type="text" name="website_name" value="<?php echo htmlspecialchars($row['websitename']); ?>" class="form-control" autocomplete="off" required>
                    </div>
                    <div class="form-group">
                        <label for="logo">Website Logo</label>
                        <input type="file" name="logo" accept="image/*">
                        <img src="images/<?php echo htmlspecialchars($row['logo']); ?>" alt="Current Logo">
                        <input type="hidden" name="old_logo" value="<?php echo htmlspecialchars($row['logo']); ?>" >
                    </div>
                    <div class="form-group">
                        <label for="footer_desc">Footer Description</label>
                        <textarea name="footer_desc" class="form-control" rows="5" required><?php echo htmlspecialchars($row['footerdesc']); ?></textarea>
                    </div>
                    <input type="submit" name="submit" class="btn btn-primary" value="Save" required />
                </form>
                <!--/Form -->
                <?php
                } else {
                    echo "<div class='alert alert-info'>No settings found.</div>";
                }
                $stmt->close();
                $conn->close();
                ?>
            </div>
        </div>
    </div>
</div>

<?php include "footer.php"; ?>