<?php include 'header.php'; ?>

<style>
    .white-bg {
        background-color: white;
        padding: 20px;
        margin-bottom: 20px;
    }

    .single-feature-image {
        max-width: 100%;
        height: auto;
        margin-bottom: 20px;
    }
</style>

<div id="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <!-- post-container -->
                <div class="post-container">
                    <?php
                    include "config.php";

                    // Ensure post_id is set and is numeric
                    if (isset($_GET['id']) && is_numeric($_GET['id'])) {
                        $post_id = (int)$_GET['id']; // Typecast to int to prevent SQL injection

                        $sql = "SELECT post.post_id, post.title, post.description, post.post_date, 
                                        category.category_name, user.username, post.category, post.post_img, 
                                        user.user_id as author 
                                FROM post 
                                LEFT JOIN category ON post.category = category.category_id
                                LEFT JOIN user ON post.author = user.user_id
                                WHERE post.post_id = {$post_id}";

                        $result = mysqli_query($conn, $sql) or die("Query Failed: " . mysqli_error($conn));

                        if (mysqli_num_rows($result) > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                    ?>
                    <div class="post-content single-post white-bg">
                        <h3><?php echo htmlspecialchars($row['title']); ?></h3>
                        <div class="post-information">
                            <span>
                                <i class="fa fa-tags" aria-hidden="true"></i>
                                <a href='category.php?cid=<?php echo $row['category']; ?>'><?php echo htmlspecialchars($row['category_name']); ?></a>
                            </span>
                            <span>
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <a href='author.php?aid=<?php echo $row['author']; ?>'><?php echo htmlspecialchars($row['username']); ?></a>
                            </span>
                            <span>
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                <?php echo htmlspecialchars($row['post_date']); ?>
                            </span>
                        </div>
                        <img class="single-feature-image" src="admin/upload/<?php echo htmlspecialchars($row['post_img']); ?>" alt=""/>
                        <p class="description">
                            <?php echo htmlspecialchars($row['description']); ?>
                        </p>
                    </div>
                    <?php 
                            }
                        } else {
                            echo "<h2>No Record Found.</h2>";
                        }
                    } else {
                        echo "<h2>Invalid Post ID.</h2>";
                    }
                    ?>
                </div>   
            </div>
            <?php include 'sidebar.php'; ?>
        </div>
    </div>
</div>

<?php include 'footer.php'; ?>
