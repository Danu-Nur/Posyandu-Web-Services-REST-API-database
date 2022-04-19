<?php 

include_once("../koneksi.php");

$sql = "SELECT * FROM jenis_kelamin ORDER BY ID_JK asc";

    $query = mysqli_query($con, $sql);

    $result = array();

    while($row = mysqli_fetch_assoc($query)){

       $result[]=$row;
    }

    echo json_encode(array('result'=>$result));

    mysqli_close($con);

?>