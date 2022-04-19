<?php 

include_once("../koneksi.php");

$sql = "SELECT jadwal.*, waktu.TGL, waktu.JAM
        FROM jadwal
        INNER JOIN waktu
        ON jadwal.ID_WAKTU = waktu.ID_WAKTU";

    $query = mysqli_query($con, $sql);

    $result = array();

    while($row = mysqli_fetch_array($query)){

        array_push($result,array(
            "tgl"=>$row['TGL'],
			"jam"=>$row['JAM']
            
        ));
    }

    echo json_encode(array('result'=>$result));

    mysqli_close($con);

?>