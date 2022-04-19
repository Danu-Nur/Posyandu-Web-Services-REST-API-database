<?php 

include_once("../koneksi.php");

class usr{}

$username = $_POST["username"];
$password = $_POST["password"];

if ((empty($username)) || (empty($password))) { 
    $response = new usr();
    $response->success = 0;
    $response->message = "Kolom tidak boleh kosong"; 
    die(json_encode($response));
}
$sql =  "SELECT userr.*, jenis_kelamin.JENIS_KELAMIN
FROM userr INNER JOIN jenis_kelamin
ON userr.ID_JK = jenis_kelamin.ID_JK 
WHERE userr.USERNAMA = '$username' AND userr.PASS = '$password'";

$query = mysqli_query($con,$sql);

$row = mysqli_fetch_array($query);

if (!empty($row)){
    $response = new usr();
    $response->success = 1;
    $response->message = "Selamat datang ".$row['USERNAMA'];
    $response->id = $row['ID_USER'];
    $response->username = $row['USERNAMA'];
    die(json_encode($response));
    
} else { 
    $response = new usr();
    $response->success = 0;
    $response->message = "Username atau password salah";
    die(json_encode($response));
}

mysqli_close($con);


?>