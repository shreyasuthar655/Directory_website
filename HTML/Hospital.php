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
    <style>
    body{
      background-image: url('blur1.jpg');
      /* background-repeat: no-repeat; */
      background-attachment: fixed;
      /* background-position-y: 80%; */
      /* background-position-x: -5%; */
      background-size:cover;
      z-index: 2  ;
    }
  </style>
</head>
<body>
  <div class="head1">
  <div id="n">
    <div class="main" id="logo">
    <a href="../HTML/intro.html"><img class="logo" src="LOGO.png" height="100px"></a>
    </div>
    <nav class="navbar" id="h">
      <ul>
        <li><a href="../HTML/index1.php">Home</a></li>
        <li><a href="../HTML/abconus.html">About Us</a></li>
        <li id="q"><a href="../HTML/abconus.html">Contact</a></li>
      </ul>
    </nav>
  </div>
  </div>
  <p id="he"></p>
  <!-- <hr style="height: 0.1px; background-color: #ffffff; width: 100%;"> -->

  <br><br>
  <div id = "Hospital">
    <br><br>
  <form action="" method="post">
    <div class="head2">
      <span class="main" id="location">
        <!-- <div class="form-group col-md-6"> -->
        <label for="Location"></label>
        <!-- <i class="material-icons" style="font-size:36px">place</i> -->
        <input type="text" class="form-control" id="Location" name="location" placeholder="Location" required>
        <button type="submit" class="but" name="btn" onclick="checkk()"><span id="s" class="fa fa-search"></span></button>
      </span>

      <span class="main" id="search">
        <!-- <div class="form-group col-md-6"> -->
        <label for="Input"></label>
        <input type="text" name="category" class="form-control" id="Input" value="Hospital">
        <button type="submit" class="but" name="btn" onclick="checkk()"><span id="m" class="fa fa-search"></span></button>
        <!-- </div> -->
      </span>
    </div>
  </form>
  <br><br>
  <?php
    if(isset($_REQUEST['btn']))
    {
      $loc = $_REQUEST['location'];
      ?>
        <h2>Which type of Hospital would you prefer?</h2>
    <div class="flex-container2">
        <div class="choice">
          <a href="Output_Hospital.php?location=<?php echo $loc; ?>&type=<?php echo "Public"; ?> ">
            <img src="../Images/public.png" height="50px" width="100px">
          </a>
        </div>
        <div class="choice">
          <a href="Output_Hospital.php?location=<?php echo $loc; ?>&type=<?php echo "Private"; ?> ">
            <img src="../Images/private.png" height="50px" width="100px">
          </a>
        </div>
    </div> 
      <?php
    }
  ?>
  </div>
  </div>
</body>
</html>