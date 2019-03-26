<?php

session_start();
$mysqli = new mysqli('localhost','root','','registration') or die(mysqli_error($mysqli));

$id='';
$update = false;
$small="";
$medium="";
$large="";
$spoiled="";
$broken="";


if(isset($_POST['save'])){
	$small = $_POST['small'];
	$medium = $_POST['medium'];
	$large = $_POST['large'];
	$spoiled = $_POST['spoiled'];
	$broken = $_POST['broken'];
	$username= $_SESSION["username"];
	$result=$mysqli->query("select id from users where username='$username'") or die($mysqli->error);
	if(@count($result)==1)
	{
		$row=$result->fetch_array();
		$userid=$row['id'];

	}
	$mysqli->query("INSERT INTO eggs (userid,id,small,medium,large,spoiled,broken) VALUES ('$userid','$id','$small','$medium','$large','$spoiled','$broken')") or
			die($mysqli->error);
	$_SESSION['message'] = "Record has been saved!";
	$_SESSION['msg_type'] = "success";
	
	
	header("location:eggscrud.php");
}
if(isset($_GET['delete'])){
	$id =$_GET['delete'];
	$mysqli->query("DELETE FROM eggs WHERE id=$id") or die($mysqli->error());
	
	$_SESSION['message'] = "Record has been deleted!";
	$_SESSION['msg_type'] = "danger";
	
	header("location:eggscrud.php");
	
	
}
if(isset($_GET['edit'])){
	$id = $_GET['edit'];
	$update =true;
	$result = $mysqli->query("SELECT * FROM eggs WHERE id=$id") or die($mysqli->error);
	if(@count($result)==1){
		$row=$result->fetch_array();
		$id = $row['id'];
		$small = $row['small'];
		$medium = $row['medium'];
		$large = $row['large'];
		$spoiled = $row['spoiled'];
		$broken = $row['broken'];
		
		
	}
}
if(isset($_POST['update'])){
	$id = $_POST['id'];
	$small = $_POST['small'];
	$medium= $_POST['medium'];
	$large= $_POST['large'];
	$spoiled= $_POST['spoiled'];
	$broken= $_POST['broken'];
	
	
	$mysqli->query("UPDATE eggs SET id='$id',small='$small',medium ='$medium',large='$large' ,spoiled='$spoiled',broken='$broken' WHERE id=$id") or die($mysqli->error);
	$_SESSION['message'] = "Record has been updated!";
	$_SESSION['msg_type'] = "warning";
	
	header('location:eggscrud.php');
}


?>