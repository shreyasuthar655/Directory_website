<?php
//Ways to connect to mysql database
// 1. MySQLi extension(Procedural and object-oriented) --> only for mysql.
// 2.PDO(PHP Data Object) --> works with other softwares of database also.

//you'll need 3 variables
$servername="localhost"; //
$username="root"; //deafault is root
$password=""; //blank here, not in server --> xampp is inside your computer so by default password is null.
$database="mini_project";
//if you write password it will throw error

//create connection
$conn=mysqli_connect($servername,$username,$password,$database);
//die if connection was not successful
if(!$conn)
{
    echo '<script>alert("Fail to connect ")</script>';
}
?>