<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Homepage</title>

  <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
  <link href="https://fonts.google.com/specimen/Poppins?query=poppins">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../CSS/mycss.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <script src="../JavaScript/myjavascript.js"></script>
  <style>
    body {
      background-image: url('blur1.jpg');
      background-attachment: fixed;
      /* background-position-y: 80%; */
      /* background-position-x: -5%; */
      background-size: cover;
      z-index: 2;
    }
    input {
  padding: 10px;
  /* border-right: none; */
  width: 300px;
  border-radius: 10px 10px 10px 10px;
  border: 2px solid #c9c9c9;
  /* border-right: none; */
}

#Location
{
  position: relative;
  left: 10%;
}
#search {
  position: relative;
  left: 25%;
  /* top: 100%; */
  box-sizing: content-box;
}

.but{
  position: relative;
  left: 0.2%;
  border-radius: 10px 10px 10px 10px;
  border: 2px solid #c9c9c9;
}
  </style>
</head>

<body>

  <div class="head1">
    <div id="n">
      <div class="main" id="logo">
        <a href = "../HTML/intro.html"><img class="logo" src="LOGO.png" height="100px"></a>
      </div>
      <nav class="navbar" id="h">
        <ul>
          <li><a href="">Home</a></li>
          <li><a href="../HTML/abconus.html">About Us</a></li>
          <li id="q"><a href="../HTML/abconus.html">Contact</a></li>
        </ul>
      </nav>
    </div>
    <p id="he"></p>
    <!-- <hr style="height: 0.1px; background-color: #ffffff; width: 100%;"> -->
    <div id="welcome">
      <h1>
        Welcome User,<br>
        <script> 
          const date = new Date();
          var m = date.getHours();
          // document.write(m);
          if (m < 12 && m >= 0) {
            document.write("Good Morning, Have a great day");
          }
          else if (m >= 12 && m <= 18) {
            document.write("Good Afternoon, Have a great day");
          }
          else {
            document.write("Good Evening, Have a great day!");
          }
        </script>
      </h1>
    </div>
    <div id="bag">
      <br><br>
      <form action="search_result.php" method="GET">
      <div class="head2">
        <span class="main" id="location">
          <!-- <div class="form-group col-md-6"> -->
          <label for="Location"></label>
          <!-- <i class="material-icons" style="font-size:36px">place</i> -->
          <input type="text" name="location" class="form-control" id="Location" placeholder="Location">
          <!-- <button class="but" name="button" onclick="checkk()"><span id="s" class="fa fa-search"></span></button> -->
        </span>

        <span class="main" id="search">
          <!-- <div class="form-group col-md-6"> -->
          <label for="Input"></label>
          <input type="text" name="category" class="form-control" id="Input" placeholder="Search Here">
          <button type="submit" class="but" name="btn" onclick="checkk()"><span id="m" class="fa fa-search"></span></button>
          <!-- </div> -->
        </span>
      </div>
      <br><br>
      <h2>Select the category</h2>
      <div class="flex-container">

        <div class="category">
          <a href="../HTML/Restaurant.php">
            <img src="../Images/restaurant.png" height="100px" width="100px">
            <figcaption>Restaurant</figcaption>
          </a>
        </div>

        <div class="category">
          <a href="../HTML/Hotels.php">
            <img src="../Images/hotel.png" height="100px" width="100px">
            <figcaption>Hotel</figcaption>
          </a>
        </div>

        <!-- <div class="category">
      <a href="../HTML/Automobiles.html">
        <img src="../Images/automobile.png" height="100px" width="100px">
        <figcaption>Automobile</figcaption>
      </a>
    </div> -->

        <div class="category">
          <a href="../HTML/Repairs_and_services.php">
            <img src="../Images/repairing.png" height="100px" width="100px">
            <figcaption>Repair</figcaption>
          </a>
        </div>

        <div class="category">
          <a href="../HTML/Hospital.php">
            <img src="../Images/hospital.png" height="100px" width="100px">
            <figcaption>Hospital</figcaption>
          </a>
        </div>
      </div><br>
    </div>
    <!-- <br>
  <br>
  <br>
  <hr style="height: 0.1px; background-color: #ffffff; width: 100%;">
  <br>
  <div class="info">
    <span class="about" id="a">
      <h5>Abous Us:</h5>
      <h6>
        We are here to help you find the perfect place for your need whether it be a restaurant, hotel or a hospital.
        You may also find thr best services in your town for plumbing, carpentry, automobiles etc.<br>Established: March
        2023<br>Mumbai, India
      </h6>
    </span>
    <span class="contact" id="c">
      <h5>Contact Us:</h5>
      <h6>
        (M) 98984 55487,<br>(C) 284567, <br>(Toll Free)XXXXXXXX
      </h6>
    </span> -->
  </div>
</body>

</html>