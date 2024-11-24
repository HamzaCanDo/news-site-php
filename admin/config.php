<?php

$hostname = "http://localhost/news-site";

$conn = mysqli_connect("localhost", "root", "", "news-site");
if (!$conn) {
    die('Connection failed: ' . mysqli_connect_error());
}

