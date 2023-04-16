<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Restaurant</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="Restaurant.css">
  <link href='../CSS/mycss.css' rel='stylesheet'>
  <script src="../JavaScript/myjavascript.js"></script>
  <script>
    function valuee(){
    document.getElementById("Input").value = "Restaurant";}
  </script>
  <style>
    body{
      background-image: url('blur1.jpg');
      background-attachment: fixed;
      /* background-repeat: no-repeat; */
      /* background-position-y: 80%; */
      /* background-position-x: -5%; */
      background-size:cover;
      z-index: 2  ;
    }
    #location{
      position: relative;
      margin-left: 22%;
    }
  </style>
</head>

<body>
  <div class="head1">
  <div id="n">
    <div class="main" id="logo">
    <a href = "../HTML/intro.html">  <img class="logo" src="LOGO.png" height="100px"></a>
    </div>
    <nav class="navbar" id="h">
      <ul>
        <li><a href="../HTML/index1.php">Home</a></li>
        <li><a href="../HTML/abconus.html">About Us</a></li>
        <li id="q"><a href="../HTML/abconus.html">Contact</a></li>
      </ul>
    </nav>
  </div>
  <p id="he"></p>
  <!-- <hr style="height: 0.1px; background-color: #ffffff; width: 100%;"> -->
  <br><br>
  <div id = "food">
    <br>
  <form action="" method="post">
  <div class="head2">
    <span class="main" id="location">
      <!-- <div class="form-group col-md-6"> -->
      <label for="Location"></label>
      <!-- <i class="material-icons" style="font-size:36px">place</i> -->
      <input type="text" name="location" class="form-control" id="Location" placeholder="Location">
      <button class="but" name="btn" onclick="checkk()"><span id="s" class="fa fa-search"></span></button>
    </span>

   
    <!-- <span class="main" id="search">
      <div class="form-group col-md-6"> -->
      <!-- <label for="Input"></label> -->
      <!-- <input type="text" name="category" class="form-control" id="Input" placeholder="Search Here" value = "Restaurant"> -->
      <!-- <button class="but" name="btn" onclick="checkk()"><span id="m" class="fa fa-search"></span></button> -->
      <!-- </div> -->
  <!-- </span> -->
  </div>
  <br><br>
  <?php
    if(isset($_REQUEST['btn']))
    {
      $loc = $_REQUEST['location'];
      ?>
        <h2>Select the category</h2>
  <div class="flex-container">
    <div class="category" id="item-1">
    <a href="Output_Rest.php?location=<?php echo $loc; ?>&type=<?php echo "Chinese"; ?> ">  
    <img src="../Images/Chinese.jpeg" width="100px" height="100px">
      <figcaption>Chinese Cuisine</figcaption></a>
    </div>
    <div class="category" id="item-2">
      <a href="Output_Rest.php?location=<?php echo $loc; ?>&type=<?php echo "Mexican"; ?> "> 
      <img src="../Images/Mexican.jpeg" width="100px" height="100px"> 
      <figcaption>Mexican Cuisine</figcaption></a>
    </div>
    <div class="category" id="item-3">
      <a href="Output_Rest.php?location=<?php echo $loc; ?>&type=<?php echo "Chinese"; ?> ">  
      <img src="../Images/Italian.jpeg" width="100px" height="100px">
      <figcaption>Italian Cuisine</figcaption></a>
    </div>
    <div class="category" id="item-4">
    <a href="Output_Rest.php?location=<?php echo $loc; ?>&type=<?php echo "South Indian"; ?> ">  
      <img src="../Images/South_indian.jpeg" width="100px" height="100px">
      <figcaption>South Indian</figcaption></a>
    </div>
    <div class="category" id="item-5">
    <a href="Output_Rest.php?location=<?php echo $loc; ?>&type=<?php echo "Gujarati"; ?> ">  
      <img src="../Images/Gujarati.jpeg" width="100px" height="100px">
      <figcaption>Gujarati Food</figcaption>  </a>
    </div>
    <div class="category" id="item-6">
    <a href="Output_Rest.php?location=<?php echo $loc; ?>&type=<?php echo "Punjabi"; ?> ">  
      <img src="../Images/Punjabi.jpeg" width="100px" height="100px">
      <figcaption>Punjabi Food</figcaption></a>
    <!-- <div class="category" id="item-7"> -->
    <!-- <a href="Output_Rest.php?location=<?php echo $loc; ?>&type=<?php echo "All"; ?> ">  
      <img src="../Images/Punjabi.jpeg" width="100px" height="100px">
      <figcaption>All Cuisines</figcaption></a>
    </div> -->
  </div>
  <br><br><br>
  </div>
  <?php
      }
  ?>
  
</body>

</html>