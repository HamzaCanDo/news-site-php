NewsSite: Dynamic PHP-Powered CMS for Managing News Content
NewsSite is a PHP-based CRUD (Create, Read, Update, Delete) content management system (CMS) designed specifically for news websites. This CMS allows administrators and users to manage news posts, categories, and user access levels seamlessly. Built with PHP, MySQL, and Bootstrap, NewsSite offers a responsive, user-friendly interface and an admin dashboard for full control over site content.

Features
Dynamic Post Management: Easily add, edit, update, and delete news posts through a user-friendly admin panel.
Category Management: Organize posts by adding, updating, and deleting categories for easy content structuring.
User Management: Add, update, and delete users to control content creation and access levels.
Admin and User Access: Distinct areas for administrators and regular users with specific access levels.
Responsive Design: Built with Bootstrap for a mobile-friendly and responsive layout.
Search Functionality: Allows users to quickly search through the news content.
Secure Login/Logout: Includes secure login and logout with redirection.
File Uploads for Posts: Upload images to enhance the visual appeal of news articles.
Database-Driven: Powered by MySQL for efficient data management, with an SQL file provided for easy setup.
Configurable Site Settings: Customize the site logo, footer, and description through the admin settings panel.
Installation Guide
Follow these steps to set up NewsSite on your local machine using XAMPP:

Install XAMPP:

Download and install XAMPP from: https://www.apachefriends.org/download.html
Open the XAMPP Control Panel after installation.
Place the Project Folder:

Extract the news-site folder from the project files.
Move the news-site folder to htdocs in your XAMPP installation directory (e.g., C:\xampp\htdocs\news-site).
Start Apache and MySQL:

In the XAMPP Control Panel, start both Apache and MySQL.
Set Up the Database:

Open your browser and go to http://localhost/phpmyadmin/.
Create a new database named news-site.
Select the news-site database, click on Import, choose the news-site.sql file located in the news-site/database folder, and import it.
Access NewsSite:

Open your browser and go to http://localhost/news-site to view the homepage.
Login Credentials:

Admin Access (Full permissions):
Username: hamza
Password: hamza
Normal User Access (Limited permissions):
Username: normel
Password: normel
Admin Panel:

If logged in with admin credentials, access the admin panel at http://localhost/news-site/admin for complete control over posts, categories, users, and settings.
Creating New Users:

Go to http://localhost/news-site/admin/add-user.php to create new user accounts.
Site Settings:

Customize site appearance and info in the admin settings page at http://localhost/news-site/admin/settings.php.

Technologies Used
Frontend: HTML, CSS, Bootstrap
Backend: PHP
Database: MySQL
Contact Information
Facebook: facebook.com/fbhamza
Email: hamzardokan@gmail.com
Enjoy exploring and customizing NewsSite! If you encounter any issues or have feature requests, feel free to reach out.
