<?php
// Start session and include necessary files
include "config.php"; // Database configuration

// Check if category ID is passed in the URL
if (isset($_GET['id'])) {
    $category_id = $_GET['id'];

    // Delete category query
    $delete_sql = "DELETE FROM category WHERE category_id = {$category_id}";

    // Execute the query
    if (mysqli_query($conn, $delete_sql)) {
        // Redirect back to categories page after deletion
        header("Location: category.php");
    } else {
        echo "<p style='color:red; text-align:center;'>Category could not be deleted.</p>";
    }
} else {
    // If no ID is passed, redirect back to category page
    header("Location: category.php");
}
?>
