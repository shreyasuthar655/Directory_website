<?php
    include '../connection.php';
    $loc=$_GET['location'];
    $type=$_GET['type'];
    $sql = "select * from hospital_details where Hos_Location='$loc' and category='$type'";
    $result = mysqli_query($conn, $sql);
    $data = mysqli_fetch_all($result,MYSQLI_ASSOC);
    ?>
    <table>
        <th>Hospital Name</th>
        <th>Hospital Location</th>
        <th>Hospital Rating</th>
        <th>Hospital Category</th>
        <th>Hospital Contact No</th>
        <th>Hospital Description</th>
        <th>Offers</th>
        <?php
    foreach($data as $item)
    {
        $hid=$item['Hos_Id'];
        $sql1="select * from hos_cat_link where hos_id='$hid'";
        $result1 = mysqli_query($conn, $sql1);
        $data1 = mysqli_fetch_all($result1,MYSQLI_ASSOC);
        ?>
        <tr>
            <td><?php echo $item['Hos_Name']; ?></td>
            <td><?php echo $item['Hos_Location']; ?></td>
            <td><?php echo $item['Hos_Rating']; ?></td>
            <td><?php echo $item['category']; ?></td>
            <td><?php echo $item['Hos_Contact']; ?></td>
            <td><?php echo $item['Hos_Description']; ?></td>
            <td>
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
            </td>
        </tr>
        <?php
    }
    ?>
    </table>
    <?php
?>