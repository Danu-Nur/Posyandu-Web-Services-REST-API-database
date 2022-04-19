<?php

	//Import File Koneksi Database
	require_once('../koneksi.php');

	$id = $_GET["id"];
	//Membuat SQL Query
	$sql =  "SELECT kader.NAMA_KADER, userr.NAMA_BALITA, vitamin.NAMA_VITAMIN, imunisasi.JENIS_IMUN,
                waktu.TGL, data_pemeriksaan.BERAT_BADAN, data_pemeriksaan.TINGGI_BADAN
            FROM data_pemeriksaan
            INNER JOIN kader ON data_pemeriksaan.ID_KADER = kader.ID_KADER
            INNER JOIN userr ON data_pemeriksaan.ID_USER = userr.ID_USER
            INNER JOIN vitamin ON data_pemeriksaan.ID_VITAMIN = vitamin.ID_VITAMIN
            INNER JOIN imunisasi ON data_pemeriksaan.ID_IMUN = imunisasi.ID_IMUN
            INNER JOIN jadwal ON data_pemeriksaan.ID_JADWAL = jadwal.ID_JADWAL
            INNER JOIN waktu ON jadwal.ID_WAKTU = waktu.ID_WAKTU
            WHERE data_pemeriksaan.ID_USER = '$id'";

	//Mendapatkan Hasil
	$query = mysqli_query($con,$sql);

	//Membuat Array Kosong
	$result = array();

	while($row = mysqli_fetch_array($query)){

		//Memasukkan Nama dan ID kedalam Array Kosong yang telah dibuat
		array_push($result,array(
			"kader"=>$row['NAMA_KADER'],
            "balita"=>$row['NAMA_BALITA'],
            "vit"=>$row['NAMA_VITAMIN'],
            "imun"=>$row['JENIS_IMUN'],
			"tgl"=>$row['TGL'],
			"bb"=>$row['BERAT_BADAN'],
            "tb"=>$row['TINGGI_BADAN']
		));
	}
	//Menampilkan Array dalam Format JSON
	echo json_encode(array('result'=>$result));

	mysqli_close($con);
?>
