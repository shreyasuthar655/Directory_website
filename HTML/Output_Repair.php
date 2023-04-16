<?php
    include '../connection.php';
    $loc=$_GET['location'];
    $type=$_GET['type'];
    $sql = "select * from (repair_details join repair_cat_link on repair_details.Rep_Id=repair_cat_link.Rep_Id) join repair_cat on repair_cat_link.Rep_Cat_Id=repair_cat.Rep_Cat_Id where repair_details.Rep_Location='$loc' and repair_cat.Rep_Cat_Name='$type'";
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
            border: 1px solid rgb(255, 255, 255);
            border-radius: 10px;
            color: white;
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
            <h1><?php echo $item['Rep_Name']; ?></h1>
            <?php echo $item['Rep_Description']; ?><br>
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
    ?>
    </table>
    <?php
?>
</body>

</html>