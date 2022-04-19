<?php 

include_once("../koneksi.php");

$sql = "SELECT * FROM kader";

    $query = mysqli_query($con, $sql);

    $result = array();

    while($row = mysqli_fetch_array($query)){

        array_push($result,array(
            "nama"=>$row['NAMA_KADER'],
			"telp"=>$row['TELP']
            
        ));
    }

    echo json_encode(array('result'=>$result));

    mysqli_close($con);

?>