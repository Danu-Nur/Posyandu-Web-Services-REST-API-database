<?php

	//Import File Koneksi Database
	require_once('../koneksi.php');

	$id = $_GET["id"];
	//Membuat SQL Query
	$sql =  "SELECT userr.*, jenis_kelamin.JENIS_KELAMIN
			FROM userr INNER JOIN jenis_kelamin
			ON userr.ID_JK = jenis_kelamin.ID_JK 
			WHERE userr.ID_USER = '$id'";

	//Mendapatkan Hasil
	$query = mysqli_query($con,$sql);

	//Membuat Array Kosong
	$result = array();

	while($row = mysqli_fetch_array($query)){

		//Memasukkan Nama dan ID kedalam Array Kosong yang telah dibuat
		array_push($result,array(
			"iduser"=>$row['ID_USER'],
            "kkuser"=>$row['NO_KK'],
            "ayahuser"=>$row['NAMA_AYAH'],
            "ibuuser"=>$row['NAMA_IBU'],
            "balitauser"=>$row['NAMA_BALITA'],
			"ttluser"=>$row['TTL_BALITA'],
			"jkelaminuser"=>$row['JENIS_KELAMIN'],
            "alamatuser"=>$row['ALAMAT'],
            "telpuser"=>$row['NO_TELP'],
            "usernameuser"=>$row['USERNAMA'],
			"pasworduser"=>$row['PASS']
		));
	}
	//Menampilkan Array dalam Format JSON
	echo json_encode(array('result'=>$result));

	mysqli_close($con);
?>
