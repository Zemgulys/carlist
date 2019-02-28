<h2>PHP cars list App</h2>      
Car list system using MVC & OOP & PDO<br>

<h2>Usage</h2>
Create database and import the sql_dump/cars.sql file<br>
Add DB config params to app/config/config.php and change URLROOT address.<br>
Enjoy<br>

<h2>If you getting only_full_group_by error</h2>
1. Open /etc/mysql/my.cnf<br>
2. Scroll to the bottom of file<br>
3. Insert this code and save.<br>
<code>
 [mysqld]
sql_mode = STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION</code><br>
4. Type sudo service mysql restart to restart MySQL

<h2>App Info</h2>
Author
Linas Zemgulys

<h2>Version</h2>
1.0.0

<h2>License</h2>
This project is licensed under the MIT License
