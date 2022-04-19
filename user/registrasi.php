<?php 

// if($_SERVER['REQUEST_METHOD']=='POST'){

//     // Mendapatkan Nillai Variable
//     $KK = $_POST['kk'];
//     $AYAH = $_POST['ayah'];
//     $IBU = $_POST['ibu'];
//     $BALITA = $_POST['balita'];
//     $ALAMAT = $_POST['alamat'];
//     $TELP = $_POST['telp'];
//     $UMUR = $_POST['umur'];
//     $JK = $_POST['jk'];
//     $USN = $_POST['usern'];
//     $PASS = $_POST['pass'];

//     // Pembuatan Syntak SQL
//     $sql = "INSERT INTO 
//             userr 
//             (NO_KK,NAMA_AYAH,NAMA_IBU,NAMA_BALITA,ALAMAT,NO_TELP,UMUR_BALITA,ID_JK,USERNAMA,PASS) 
//             VALUES 
//             ('$KK','$AYAH','$IBU','$BALITA','$ALAMAT','$TELP','$UMUR','$JK','$USN','$PASS')";

//     //Import file koneksi database
//     require_once('../koneksi.php');

//     //Eksekusi Query database
// 		if(mysqli_query($con,$sql)){
// 			echo 'Berhasil REGISTRASI';
// 		}else{
// 			echo 'Gagal REGISTRASI';
//         }
        
//         mysqli_close($con);
// }

// koding baru--------------------------------------------------------------------

include_once("../koneksi.php");

class usr{}

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
	$confirm_password = $_POST["confirm_password"];

	$usernamesql = "SELECT userr.* FROM userr
					WHERE userr.USERNAMA = '".$username."'";
	$sql = "INSERT INTO userr 
		(NO_KK,NAMA_AYAH,NAMA_IBU,NAMA_BALITA,TTL_BALITA,ID_JK,ALAMAT,NO_TELP,USERNAMA,PASS) 
		VALUES 
        ('$KK','$AYAH','$IBU','$BALITA','$TTL','$JK','$ALAMAT','$TELP','$username','$password')";

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
	} else if ((empty($confirm_password)) || $password != $confirm_password) {
		$response = new usr();
		$response->success = 0;
		$response->message = "Konfirmasi password tidak sama";
		die(json_encode($response));
	} else {
		if (!empty($username) && $password == $confirm_password){
			$num_rows = mysqli_num_rows(mysqli_query($con, $usernamesql));

			if ($num_rows == 0){
				$query = mysqli_query($con, $sql);

				if ($query){
					$response = new usr();
					$response->success = 1;
					$response->message = "Register berhasil, silahkan login.";
					die(json_encode($response));

				} else {
					$response = new usr();
					$response->success = 0;
					$response->message = "Username sudah ada";
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