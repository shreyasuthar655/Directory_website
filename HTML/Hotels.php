<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hotel</title>
  <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
  <link rel="stylesheet" type="text/css" href="../CSS/mycss.css">
  <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="../JavaScript/myjavascript.js"></script>
</head>

<body>
  <div class="head1">
    <div class="main" id="logo">
      <a href="../HTML/index1.html"><img class="logo" src="../Images/Untitled_design-removebg-preview1.png" height="100px"></a>
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
      <button class="but" onclick="checkk()"><span id="s" class="fa fa-search"></span></button>
    </span>

    <span class="main" id="search">
      <!-- <div class="form-group col-md-6"> -->
      <label for="Input"></label>
      <input type="text" name="category" class="form-control" id="Input" placeholder="Search Here"  value="Hotel">
      <button class="but" onclick="checkk()"><span id="m" class="fa fa-search"></span></button>
      <!-- </div> -->
    </span>
  </div>
  <br><br>
  <?php
    if(isset($_REQUEST['btn']))
    {
      $loc = $_REQUEST['location'];
      ?>
  <h3 style="text-align: left; margin-left: 50px;">Sort by:</h3>
  <div class="sort">
    <select class="form-select" id="sort1" aria-label="Default select example">
      <option value="0">Rating</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
    </select>
    <select class="form-select" id="sort2" aria-label="Default select example">
      <option value="star">Star Rating</option>
      <option value="3star">3-Star Hotels</option>
      <option value="4star">3-Star Hotels</option>
      <option value="5star">5-Star Hotels</option>
      <option value="7star">7-Star Hotels</option>
    </select>
    <select class="form-select" id="sort3" aria-label="Default select example">
      <option value="0">Price</option>
      <option value="ltoh">Low to High</option>
      <option value="htol">High to Low</option>
    </select>
  </div>
  <?php
    }
    ?>
</body>

</html>