<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Repairs and Services</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="../CSS/mycss.css">
  <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
  <script src="../JavaScript/myjavascript.js"></script>
</head>

<body>
  <div class="head1">
    <div class="main" id="logo">
      
      <a href="../HTML/index1.html">
        <img class="logo" src="../Images/Untitled_design-removebg-preview1.png" height="100px">
      </a>
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
  <form action="" method="post">
  <div class="head2">
    <span class="main" id="location">
      <!-- <div class="form-group col-md-6"> -->
      <label for="Location"></label>
      <!-- <i class="material-icons" style="font-size:36px">place</i> -->
      <input type="text" name="location" class="form-control" id="Location" placeholder="Location">
      <button class="but" name="btn" onclick="checkk()"><span id="s" class="fa fa-search"></span></button>
    </span>

    <span class="main" id="search">
      <!-- <div class="form-group col-md-6"> -->
      <label for="Input"></label>
      <input type="text" name="category" class="form-control" id="Input" placeholder="Search Here" value="Repairs">
      <button class="but" name="btn" onclick="checkk()"><span id="m" class="fa fa-search"></span></button>
      <!-- </div> -->
    </span>
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
          <a href="Output_Repair.php?location=<?php echo $loc; ?>&type=<?php echo "Plumbing"; ?> ">  
          <img src="../Images/Plumbing.png" width="100px" height="100px">
        <figcaption>Plumbing</figcaption>
      </a>
    </div>
    <div class="category" id="item-2">
          <a href="Output_Repair.php?location=<?php echo $loc; ?>&type=<?php echo "Carpentry"; ?> ">  
          <img src="../Images/Carpentry.png" width="100px" height="100px">
        <figcaption>Carpentry</figcaption>
      </a>
    </div>
    <div class="category" id="item-3">
          <a href="Output_Repair.php?location=<?php echo $loc; ?>&type=<?php echo "Automobiles"; ?> ">  
          <img src="../Images/Garage.png" width="100px" height="100px">
        <figcaption>Automobiles</figcaption>
      </a>
    </div>
    <div class="category" id="item-4">
          <a href="Output_Repair.php?location=<?php echo $loc; ?>&type=<?php echo "Electric Appliances"; ?> ">  
          <img src="../Images/Electiric_Services.jpeg" width="100px" height="100px">
        <figcaption>Electric Appliances</figcaption>
      </a>
    </div>
    <div class="category" id="item-5">
          <a href="Output_Repair.php?location=<?php echo $loc; ?>&type=<?php echo "Electronic Appliances"; ?> ">  
          <img src="../Images/Electronic_Services.png" width="100px" height="100px">
        <figcaption>Electronic Appliances</figcaption>
      </a>
    </div>
  </div>
  <?php
  }
  ?>
</body>
</html>