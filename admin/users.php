<?php include "header.php"; 

if($_SESSION["user_role"] == '0'){
    header("Location: {$hostname}/admin/post.php");
} 

?>
<div id="admin-content">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <h1 class="admin-heading">All Users</h1>
            </div>
            <div class="col-md-2">
                <a class="add-new" href="add-user.php">Add User</a>
            </div>
            <div class="col-md-12">
                <?php
                include "config.php";
                $limit = 20;

                // Query to get total users count
                $count_sql = "SELECT COUNT(*) as total_users FROM user";
                $count_result = mysqli_query($conn, $count_sql) or die("Query Failed");
                $total_users = mysqli_fetch_assoc($count_result)['total_users'];
                
                // Display total user count
                echo "<h3>Total Users: {$total_users}</h3>";

                if(isset($_GET['page'])){
                    $page = $_GET['page'];
                } else {
                    $page = 1;
                }

                $offset = ($page - 1) * $limit;

                $sql = "SELECT * FROM user ORDER BY user_id DESC LIMIT {$offset},{$limit}";
                $result = mysqli_query($conn, $sql) or die("Query Failed");
                if(mysqli_num_rows($result) > 0 ){
                ?>
                <table class="content-table">
                    <thead>
                        <th style="text-align: center; width: 7%;">Sl.no</th>
                        <th style="width: 7%;">User Id</th> 
                        <th style="text-align: center;">Full Name</th>
                        <th>User Name</th>
                        <th>Role</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </thead>
                    <tbody>
                        <?php 
                        $serial = $offset + 1; // Initialize serial number
                        while($row = mysqli_fetch_assoc($result)) { ?>
                        <tr>
                            <td style="text-align: center; width: 7%;"><?php echo $serial++; ?></td>
                            <td style="text-align: center;"><?php echo $row['user_id']; ?></td> 
                            <td style="text-align: center;"><?php echo $row['first_name'] . " " . $row['last_name']; ?></td>
                            <td><?php echo $row['username']; ?></td>
                            <td><?php echo ($row['role'] == 1) ? "Admin" : "Normal"; ?></td>
                            <td class='edit'><a href='update-user.php?id=<?php echo $row["user_id"];?>'><i class='fa fa-edit'></i></a></td>
                            <td class='delete'><a href='delete-user.php?id=<?php echo $row["user_id"];?>'><i class='fa fa-trash-o'></i></a></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table> 
                <?php
                }

                // Pagination logic
                $sql = "SELECT * FROM user";
                $result = mysqli_query($conn, $sql) or die("Query Failed.");

                if(mysqli_num_rows($result) > 0){
                    $total_records = mysqli_num_rows($result);
                    $total_page = ceil($total_records / $limit);
                    echo '<ul class="pagination admin-pagination">';
                    if($page > 1){
                       echo '<li><a href="users.php?page='.($page - 1).'">Prev</a></li>'; 
                    }
                    for($i = 1; $i <= $total_page; $i++){
                        if($i == $page){
                            $active = "active";
                        } else {
                            $active = "";
                        }
                        echo '<li class="'.$active.'"><a href="users.php?page='.$i.'">'.$i.'</a></li>';
                    }
                    if($total_page > $page){
                        echo '<li><a href="users.php?page='.($page + 1).'">Next</a></li>';
                    }
                    echo '</ul>';
                }
                ?>        
            </div>
        </div>
    </div>
</div>
<?php include "footer.php"; ?>
