<?php
    include '../connection.php';
    $loc=$_GET['location'];
    $type=$_GET['type'];
    $sql = "select * from (restaurant_details join rest_cat_link on restaurant_details.Rest_Id=rest_cat_link.Rest_Id) join restaurant_cat on RCat_Id=Res_Cat_Id where restaurant_details.Rest_Location='$loc' and restaurant_cat.RCat_Name='$type'";
    $result = mysqli_query($conn, $sql);
    $data = mysqli_fetch_all($result,MYSQLI_ASSOC); //fetches all result rows and returns the result-set as an associative array, a numeric array, or both.     
    //mysqli_fetch_all(result, resulttype) --> resulttype = MYSQLI_ASSOC, MYSQLI_NUM (default), MYSQLI_BOTH
    if(!$data)
    {
        echo '<script>alert("No result found!")</script>;';
    }
    ?>
    <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Output</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../CSS/mycss.css">
    <link rel="stylesheet" href="../CSS/output.css">
  <script src="../JavaScript/myjavascript.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

        body {
            background-image: url('blur1.jpg');
            background-attachment:fixed;
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
        <a href="../HTML/index1.html"><img class="logo" src="LOGO.png" height="100px"></a>
        </div>
        <nav class="navbar" id="h">
          <ul>
            <li><a href="index1.html">Home</a></li>
            <li><a href="#a">About Us</a></li>
            <li id="q"><a href="#c">Contact</a></li>
          </ul>
        </nav>
      </div>
    </div>
      <p id="he"></p>
      <!-- <hr style="height: 0.1px; background-color: #ffffff; width: 100%;"> -->
      <br>
      <h1 style="color:black;">Your Searched Results:</h1>

        <?php
        foreach($data as $item)
    {
        $restid=$item['Rest_Id'];
        $sql1="select * from Rest_cat_link where Rest_id='$restid'";
        $result1 = mysqli_query($conn, $sql1);
        $data1 = mysqli_fetch_all($result1,MYSQLI_ASSOC);
       
        ?>
        
            <div class="div1">
        <span  class="span1"  id="img1">
        <img src="<?php echo $item['Rest_Image'];?>" height="200px" w0idth="200px">
        </span>
        <span  class="span1" id="det">
            <h1 style="text-align:left"><?php echo $item['Rest_Name']; ?></h1>
            <h3 style="text-align:left"><?php echo $item['Rest_Description']; ?><br>
            <?php echo "Location: ".$item['Rest_Location']; ?><br>
            <?php echo "Address: ".$item['Rest_Address']; ?><br>
            <?php echo "Rating: ".$item['Rest_Rating']; ?><br>
            <?php echo "Contact: ".$item['Rest_Contact']; ?><br>
            <?php echo "Available Cuisines: "; ?>
            <?php 
                    foreach($data1 as $item1)
                    {
                        $cat_id=$item1['Res_Cat_Id'];
                        $sql2="select * from restaurant_cat where RCat_id='$cat_id'";
                        $result2 = mysqli_query($conn, $sql2);
                        $data2 = mysqli_fetch_all($result2,MYSQLI_ASSOC);
                        foreach($data2 as $item2)
                            echo $item2['RCat_Name'] . ",";
                            
                    }
                ?>
            
            </h3>
        </span>
    </div>
                
        <?php
    }
    ?>
    </table>
    <?php
?>
</body>

</html>