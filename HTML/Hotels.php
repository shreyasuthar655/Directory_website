<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../CSS/mycss.css">
    <link rel="stylesheet" href="../CSS/output.css">    
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <script src="../JavaScript/myjavascript.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

        body {
            font-family: "Poppins";
            background-image: url('blur1.jpg');
            background-repeat: repeat-y;
            /* background-position-y: 80%; */
            /* background-position-x: -5%; */
            background-size: cover;
            z-index: 2;
        }

        .span1 {
            display: inline-block;
        }

        .div1 {
            display: flex;
            align-items: center;
            margin: 10px;
            padding-top: 18px;
            padding-left: 18px;
            border: 1px solid black;
            border-radius: 10px;
            color: black;
            /* padding-bottom: -10px; */
        }

        #img1 {
            margin-right: 50px;
        }

        #det {
            text-align:left;
        }
    </style>
</head>
<body>
  <div class="head1">
  <div id="n">
    <div class="main" id="logo">
    <a href="../HTML/index1.html"><img class="logo" src="../HTML/LOGO.png" height="100px"></a>
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
  <!-- <hr style="height: 0.1px; background-color: #ffffff; width: 100%;"> -->
  <br><br>
  <form action="" method="post">
    <div class="head2">
      <span class="main" id="location">
        <!-- <div class="form-group col-md-6"> -->
        <label for="Location"></label>
        <!-- <i class="material-icons" style="font-size:36px">place</i> -->
        <input type="text" class="form-control" id="Location" name="location" placeholder="Location" required>
        <!-- <button type="submit" class="but" name="btn" onclick="checkk()"><span id="s" class="fa fa-search"></span></button> -->
      </span>

      <span class="main" id="search">
        <!-- <div class="form-group col-md-6"> -->
        <!-- <label for="Input"></label> -->
        <!-- <input type="text" name="category" class="form-control" id="Input" value="Hospital"> -->
        <!-- <button type="submit" class="but" name="btn" onclick="checkk()"><span id="m" class="fa fa-search"></span></button> -->
        <!-- </div> -->
		<label for="sort">Sort by:</label>
		<select name="sort" id="sort" class="form-contol">
			<option value="ratings">Ratings</option>
			<option value="price_high">Price High to Low</option>
			<option value="price_low">Price Low to High</option>
		</select>
		<button type="submit">Search</button>
	</form>
	<!-- <hr> -->
      </span>
    </div>
  </form>
  <br><br>
	<!-- <form method="POST" action=""> -->
		<!-- <label for="location">Location:</label> -->
		<!-- <input type="text" name="location" id="location"> -->

      <h1 style="text-align:center ;color:#000000;">Your Searched Results:</h1>
	<?php
		// Check if the form has been submitted
		if ($_SERVER['REQUEST_METHOD'] == 'POST') {
			// Get the user inputs
			$location = $_POST['location'];
			$sort = $_POST['sort'];

			// Connect to the database
			$servername = 'localhost';
			$username = 'root';
			$password = '';
			$dbname = 'mini_project';
			$conn = mysqli_connect($servername, $username, $password, $dbname);

			// Check if the connection was successful
			if (!$conn) {
				die('Connection failed: ' . mysqli_connect_error());
			}

			// Prepare the SQL statement
			if ($sort == 'ratings') {
				$sql = "SELECT * FROM hotel WHERE Hotel_Location='$location' ORDER BY Hotel_Rating DESC";
			} elseif ($sort == 'price_high') {
				$sql = "SELECT * FROM hotel WHERE Hotel_Location='$location' ORDER BY Hotel_PricePerNight DESC";
			} elseif ($sort == 'price_low') {
				$sql = "SELECT * FROM hotel WHERE Hotel_Location='$location' ORDER BY Hotel_PricePerNight ASC";
			}

			// Execute the SQL statement
			$result = mysqli_query($conn, $sql);
      $data = mysqli_fetch_all($result,MYSQLI_ASSOC);
			// Check if there are any results
			?>
			
			<?php
				foreach($data as $row) {
					?>
					<div class="div1">
            <span  class="span1"  id="img1">
              <img src="<?php echo $row['Hotel_Image'];?>" height="200px" w0idth="200px">
            </span>
            <span  class="span1" id="det">
					    <h1 style="text-align:left"><?php echo $row['Hotel_Name']; ?></h1>
              <h3 style="text-align:left"><?php echo $row['Hotel_Description']; ?></br>
              <?php echo "Location: ".$row['Hotel_Location']; ?><br>
              <?php echo "Ratings: ".$row['Hotel_Rating']; ?><br>
              <?php echo "Price: ".$row['Hotel_PricePerNight']."Rs. per 24 hours"; ?><br>
              <?php echo "Contact: ".$row['Hotel_Contact']; ?></br>
			        </h3>
        </span>
    </div>
			<?php
				}			
				?>
        <?php  
		}
		?>
</body>
</html>
