<?php 

include_once("../koneksi.php");

$sql = "SELECT * FROM artikel ORDER BY ID_ARTIKEL asc";

    $query = mysqli_query($con, $sql);

    $result = array();

    while($row = mysqli_fetch_assoc($query)){

       array_push($result,array(
        "judul"=>$row['JUDUL'],
        "foto"=>$row['FOTO_ARTIKEL'],
        "isi"=>$row['ISI_ARTIKEL']
       ));
    }

    echo json_encode(array('result'=>$result));

    mysqli_close($con);

?>