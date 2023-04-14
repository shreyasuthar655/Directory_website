<?php
//Ways to connect to mysql database
// 1. MySQLi extension(Procedural and object-oriented) --> only for mysql.
// 2.PDO(PHP Data Object) --> works with other softwares of database also.

//you'll need 3 variables
$servername="localhost"; //
$username="root"; //deafault is root
$password=""; //blank here, not in server --> xampp is inside your computer so by default password is null.
$database="mini project";
//if you write password it will throw error

//create connection
$conn=mysqli_connect($servername,$username,$password,$database);
//die if connection was not successful
if(!$conn)
{
    echo '<script>alert("Fail to connect ")</script>';
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../CSS/mycss.css" >
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <script src="../JavaScript/myjavascript.js"></script>
</head>
<body>
  <div class="head1">
    <div class="main" id="logo">
      <img class="logo" src="../Images/Untitled_design-removebg-preview1.png" height="100px">
    </div>
    <nav class="navbar" id="h">
      <ul>
        <li><a href="index1.html">Home</a></li>
        <li><a href="#a">About Us</a></li>
        <li id="q"><a href="#c">Contact</a></li>
      </ul>
    </nav>
  </div>
  <p id="he"></p>
  <hr style="height: 0.1px; background-color: #ffffff; width: 100%;">

  <br><br>
  <div class="head2">
    <span class="main" id="location">
      <!-- <div class="form-group col-md-6"> -->
      <label for="Location"></label>
      <!-- <i class="material-icons" style="font-size:36px">place</i> -->
      <input type="text" class="form-control" id="Location" placeholder="Location">
      <button class="but" onclick="checkk()"><span id="s" class="fa fa-search"></span></button>
    </span>

    <span class="main" id="search">
      <!-- <div class="form-group col-md-6"> -->
      <label for="Input"></label>
      <input type="text" class="form-control" id="Input" placeholder="Search Here" value="Hospital">
      <button class="but" onclick="checkk()"><span id="m" class="fa fa-search"></span></button>
      <!-- </div> -->
    </span>
  </div>
  <br><br>
    <h2>Which type of Hospital would you prefere?</h2>
    <div class="flex-container2">
        <div class="choice">
          <a href="link.html">
            <img src="../Images/public.png" height="50px" width="100px">
          </a>
        </div>
        <div class="choice">
          <a href="../HTML/Private_hospitals.html">
            <img src="../Images/private.png" height="50px" width="100px">
          </a>
        </div>
    </div>
  </div>
</body>
</html>