<?php 
include "header.php"; 
include "config.php"; // Include your database connection file

if(isset($_POST['save'])){
    // Fetch the category name from the form input
    $category_name = mysqli_real_escape_string($conn, $_POST['cat']);

    // Check if the category already exists
    $check_query = "SELECT * FROM category WHERE category_name = '$category_name'";
    $check_result = mysqli_query($conn, $check_query);

    if(mysqli_num_rows($check_result) > 0){
        echo "<div class='alert alert-danger'>Category already exists!</div>";
    } else {
        // Insert the new category into the database
        // Set the 'post' field to 0 since it's a new category
        $insert_query = "INSERT INTO category (category_name, post) VALUES ('$category_name', 0)";
        
        if(mysqli_query($conn, $insert_query)){
            echo "<div class='alert alert-success'>Category added successfully!</div>";
        } else {
            echo "<div class='alert alert-danger'>Failed to add category!</div>";
        }
    }
}
?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="admin-heading">Add New Category</h1>
            </div>
            <div class="col-md-offset-3 col-md-6">
                <!-- Form Start -->
                <form action="" method="POST" autocomplete="off">
                    <div class="form-group">
                        <label>Category Name</label>
                        <input type="text" name="cat" class="form-control" placeholder="Category Name" required>
                    </div>
                    <input type="submit" name="save" class="btn btn-primary" value="Save" required />
                </form>
                <!-- /Form End -->
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>
