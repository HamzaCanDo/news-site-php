<?php
include "header.php"; 

// Restrict access to certain user roles
if($_SESSION["user_role"] == '0'){
    header("Location: {$hostname}/admin/post.php");
}

// Database connection
include "config.php"; // Assuming config.php contains the database connection settings

// Get the category ID from the URL parameter (e.g., edit-category.php?id=31)
$cat_id = $_GET['id'];

// Fetch the existing category details for pre-filling the form
$sql = "SELECT * FROM category WHERE category_id = {$cat_id}";
$result = mysqli_query($conn, $sql) or die("Query Failed");
if(mysqli_num_rows($result) > 0){
    $row = mysqli_fetch_assoc($result);
} else {
    echo "Category not found.";
}

// Check if form is submitted
if(isset($_POST['submit'])){
    // Get the updated category name from the form
    $cat_name = mysqli_real_escape_string($conn, $_POST['cat_name']);
    
    // Update the category in the database
    $sql_update = "UPDATE category SET category_name = '{$cat_name}' WHERE category_id = {$cat_id}";
    
    // Execute the query
    if(mysqli_query($conn, $sql_update)){
        // Redirect to the categories page after updating
        header("Location: {$hostname}/admin/category.php");
    } else {
        echo "Failed to update category.";
    }
}
?>

<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="admin-heading">Update Category</h1>
            </div>
            <div class="col-md-offset-3 col-md-6">
                <form action="" method="POST">
                    <div class="form-group">
                        <input type="hidden" name="cat_id" class="form-control" value="<?php echo $row['category_id']; ?>">
                    </div>
                    <div class="form-group">
                        <label>Category Name</label>
                        <input type="text" name="cat_name" class="form-control" value="<?php echo $row['category_name']; ?>" required>
                    </div>
                    <input type="submit" name="submit" class="btn btn-primary" value="Update" />
                </form>
            </div>
        </div>
    </div>
</div>

<?php include "footer.php"; ?>
