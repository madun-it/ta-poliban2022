<?php
session_start();
include 'config/database.php';

$user = $_POST['username'];
$pass = MD5($_POST['password']);

$login = mysqli_query($connection,"SELECT * FROM tb_user where username='$user'");
$cek = mysqli_num_rows($login);

if($cek > 0){
	$data = mysqli_fetch_assoc($login);

    if($data['priviledge']=="admin"){
        $_SESSION['username'] = $user;
        $_SESSION['priviledge'] = "admin";
		header("location:index.php");
        session_start();
    } else if($data['priviledge']=="surveyor") {
        $_SESSION['username'] = $user;
        $_SESSION['priviledge'] = "surveyor";
		header("location:surveyor/index.php");
        session_start();
    }
}else{
	header("location:login.php?pesan=gagal");
}

?>