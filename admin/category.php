<?php include "header.php"; ?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <h1 class="admin-heading">All Categories</h1>
            </div>
            <div class="col-md-2">
                <a class="add-new" href="add-category.php">Add Category</a>
            </div>
            <div class="col-md-12">
              <?php
                include 'config.php'; // Database configuration

                // Select all categories without pagination
                $sql = "SELECT * FROM category ORDER BY category_id DESC";
                $result = mysqli_query($conn, $sql);
                
                if (mysqli_num_rows($result) > 0) {
                  $table = '<table class="content-table">';
                  $table .= '<thead>
                                  <th>S.No.</th>
                                  <th>Category Name</th>
                                  <th>No. of Posts</th>
                                  <th>Edit</th>
                                  <th>Delete</th>
                              </thead>
                              <tbody>';
                  $serial = 1; // Serial number starts from 1
                  
                  // Loop through each row of categories
                  while ($row = mysqli_fetch_assoc($result)) {
                    $table .= "<tr>
                            <td class='id'>{$serial}</td>
                            <td>{$row["category_name"]}</td>
                            <td>{$row["post"]}</td>
                            <td class='edit'><a href='update-category.php?id={$row['category_id']}'><i class='fa fa-edit'></i></a></td>
                            <td class='delete'><a href='delete-category.php?id={$row['category_id']}'><i class='fa fa-trash-o'></i></a></td>
                        </tr>";
                    $serial++;
                  }
                  
                  $table .= '</tbody></table>';
                  echo $table;
                } else {
                  echo "<h3>No Results Found.</h3>";
                }
              ?>
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>
