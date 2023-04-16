<?php
    include '../connection.php';
    if(isset($_GET['location']) && isset($_GET['category'])){
    $loc = $_GET['location'];
    $type = $_GET['category'];
    if($type == 'Restaurant')
    {
        $sql = "select DISTINCT(rest_cat_link.Rest_Id),restaurant_details.Rest_Name,restaurant_details.Rest_Address,restaurant_details.Rest_Location,restaurant_details.Rest_Rating, restaurant_details.Rest_Image,restaurant_details.Rest_Contact,restaurant_details.Rest_Description from (restaurant_details join rest_cat_link on restaurant_details.Rest_Id=rest_cat_link.Rest_Id) join category on cid=Cat_Id where restaurant_details.Rest_Location='$loc' and category.Cat_Name='Restaurant'";
    }
    elseif($type == 'Repair')
    {
        $sql = "select DISTINCT(repair_cat_link.Rep_Id),repair_details.Rep_Name,repair_details.Rep_Address,repair_details.Rep_Location,repair_details.Rep_Rating, repair_details.Rep_Img,repair_details.Rep_Contact,repair_details.Rep_Description from (repair_details join repair_cat_link on repair_details.Rep_Id=repair_cat_link.Rep_Id) join category on cid=Cat_Id where repair_details.Rep_Location='$loc' and category.Cat_Name='Repair'";
    }
    elseif($type=='Hospital')
    {
        $sql = "select DISTINCT(hos_cat_link.Hos_Id), hospital_details.Hos_Name,hospital_details.Hos_Address,hospital_details.Hos_Location,hospital_details.Hos_Rating, hospital_details.Hos_Image,hospital_details.Hos_Contact,hospital_details.Hos_Description from (hospital_details join hos_cat_link on hospital_details.Hos_Id=hos_cat_link.hos_id) join category on cid=cat_id where hospital_details.Hos_Location='$loc' and category.Cat_Name='Hospital'";
    }
    elseif($type=='Hotel')
    {
        $sql = "select * from hotel join category on category.cid=hotel.HotelCat_Id where Hotel_Location='$loc' and category.Cat_Name='Hotel'";
    }

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
            font-family: "Poppins";
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
      <h1 style="color:white;">Your Searched Results:</h1>

        <?php
        if($type=='Restaurant'){
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
}
    elseif($type=='Repair')
    {
        foreach($data as $item)
    {
        $repid=$item['Rep_Id'];
        $sql1="select * from repair_cat_link where Rep_id='$repid'";
        $result1 = mysqli_query($conn, $sql1);
        $data1 = mysqli_fetch_all($result1,MYSQLI_ASSOC);
       
        ?>
        
            <div class="div1">
        <span  class="span1"  id="img1">
        <img src="<?php echo $item['Rep_Img'];?>" height="200px" w0idth="200px">
        </span>
        <span  class="span1" id="det">
            <h1 style="text-align:left"><?php echo $item['Rep_Name']; ?></h1>
            <h3 style="text-align:left"><?php echo $item['Rep_Description']; ?><br>
            <?php echo "Location:".$item['Rep_Location']; ?><br>
            <?php echo "Address: ".$item['Rep_Address']; ?><br>
            <?php echo "Rating: ".$item['Rep_Rating']; ?><br>
            <?php echo "Contact: ".$item['Rep_Contact']; ?><br>
            <?php echo "Available Services: "; ?>
            <?php 
                    foreach($data1 as $item1)
                    {
                        $cat_id=$item1['Rep_Cat_Id'];
                        $sql2="select * from repair_cat where Rep_Cat_id='$cat_id'";
                        $result2 = mysqli_query($conn, $sql2);
                        $data2 = mysqli_fetch_all($result2,MYSQLI_ASSOC);
                        foreach($data2 as $item2)
                            echo $item2['Rep_Cat_Name'] . ",";
                            
                    }
                ?>
            
            </h3>
        </span>
    </div>
                
        <?php
    }
    }
    elseif($type=='Hospital')
    {
        foreach($data as $item)
    {
        $hid=$item['Hos_Id'];
        $sql1="select * from hos_cat_link where hos_id='$hid'";
        $result1 = mysqli_query($conn, $sql1);
        $data1 = mysqli_fetch_all($result1,MYSQLI_ASSOC);
        ?>
        <div class="div1">
        <span  class="span1"  id="img1">
        <img src="<?php echo $item['Hos_Image'];?>" height="200px" width="250px">
        </span>
        <span  class="span1" id="det">
            <h1 style="text-align:left; color: #686a6b;"><?php echo $item['Hos_Name']; ?></h1>
            <h3 style="text-align:left; color: #686a6b;"><?php echo $item['Hos_Description']; ?></br>
            <?php echo $item['Hos_Location']; ?><br>
            <?php echo $item['Hos_Rating']; ?><br>
            <?php echo $item['category']; ?><br>
            <?php echo $item['Hos_Contact']; ?></br>
            <?php echo "Available Categories: "?>
                <?php 
                    foreach($data1 as $item1)
                    {
                        $cat_id=$item1['host_cat_id'];
                        $sql2="select * from hos_cat where cat_id='$cat_id'";
                        $result2 = mysqli_query($conn, $sql2);
                        $data2 = mysqli_fetch_all($result2,MYSQLI_ASSOC);
                        foreach($data2 as $item2)
                            echo $item2['cat_name'] . ",";
                    }
                ?>
                </h3>
        </span>
    </div>
        <?php
    }
    }
    elseif($type=='Hotel')
    {
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
    }
    ?>
    </table>
    <?php
?>
</body>

</html>
<?php
} 
    
else{
    // No search parameters specified
    echo "Please enter a location and/or category to search.";
}
?>