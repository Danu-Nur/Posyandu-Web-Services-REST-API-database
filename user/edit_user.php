<?php 

include_once("../koneksi.php");

class usr{}

$id = $_GET["id"];

	$KK = $_POST['kk'];
	$AYAH = $_POST['ayah'];
	$IBU = $_POST['ibu'];
	$BALITA = $_POST['balita'];
	$TTL = $_POST['ttl'];
	$JK = $_POST['jk'];
	$ALAMAT = $_POST['alamat'];
	$TELP = $_POST['telp'];
	$username = $_POST["username"];
	$password = $_POST["password"];

	$usernamesql = "SELECT userr.* FROM userr
					WHERE userr.USERNAMA = '".$username."'";
	$sql = "UPDATE userr SET 
		NO_KK = '$KK',NAMA_AYAH = '$AYAH',NAMA_IBU = '$IBU',NAMA_BALITA = '$BALITA',
		TTL_BALITA = '$TTL',ID_JK = '$JK',ALAMAT = '$ALAMAT',NO_TELP = '$TELP',USERNAMA = '$username',PASS = '$password'
		WHERE userr.ID_USER = '$id'";

        if ((empty($KK))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom No. KK tidak boleh kosong";
		die(json_encode($response));
	}else if ((empty($AYAH))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom Nama Ayah tidak boleh kosong";
		die(json_encode($response));
	} else if ((empty($IBU))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom Nama Ibu tidak boleh kosong";
		die(json_encode($response));
	}else if ((empty($BALITA))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom Nama Balita tidak boleh kosong";
		die(json_encode($response));
	}else if ((empty($TTL))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom Tempat Tanggal Lahir tidak boleh kosong";
		die(json_encode($response));
	}else if ((empty($ALAMAT))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom Alamat tidak boleh kosong";
		die(json_encode($response));
	}else if ((empty($username))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom username tidak boleh kosong";
		die(json_encode($response));
	} else if ((empty($password))) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Kolom password tidak boleh kosong";
		die(json_encode($response));
	} else {
		if (!empty($username) && $password ){
			$num_rows = mysqli_num_rows(mysqli_query($con, $usernamesql));

			if ($num_rows == 0){
				$query = mysqli_query($con, $sql);

				if ($query){
					$response = new usr();
					$response->success = 1;
					$response->message = "Update Profil Berhasil";
					die(json_encode($response));

				} else {
					$response = new usr();
					$response->success = 0;
					$response->message = "Update Profil Gagal";
					die(json_encode($response));
				}
			} else {
				$response = new usr();
				$response->success = 0;
				$response->message = "Username sudah ada";
				die(json_encode($response));
			}
		}
	}

	mysqli_close($con);

?>