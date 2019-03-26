<?php

session_start();
$mysqli = new mysqli('localhost','root','','registration') or die(mysqli_error($mysqli));

$id='';
$update = false;
$description="";
$quantity="";
$price="";
$time="";
$lastname="";

if(isset($_POST['save'])){
	$quantity = $_POST['quantity'];
	$price = $_POST['price'];
	$description=$_POST['description'];
	$lastname = $_POST['lastname'];
	$username= $_SESSION["username"];
	$result=$mysqli->query("select id from users where username='$username'") or die($mysqli->error);
	if(@count($result)==1)
	{
		$row=$result->fetch_array();
		$userid=$row['id'];

	}
	$mysqli->query("INSERT INTO salesitem (userid,description,quantity,price,lastname) VALUES ('$userid','$description','$quantity','$price','$lastname')") or
			die($mysqli->error);
	$_SESSION['message'] = "Record has been saved!";
	$_SESSION['msg_type'] = "success";
	
	
	header("location:salesitemcrud.php");
}
if(isset($_GET['delete'])){
	$id =$_GET['delete'];
	$mysqli->query("DELETE FROM salesitem WHERE id=$id") or die($mysqli->error());
	
	$_SESSION['message'] = "Record has been deleted!";
	$_SESSION['msg_type'] = "danger";
	
	header("location:salesitemcrud.php");
	
	
}
if(isset($_GET['edit'])){
	$id = $_GET['edit'];
	$update =true;
	$result = $mysqli->query("SELECT * FROM salesitem WHERE id=$id") or die($mysqli->error);
	if(@count($result)==1){
		$row=$result->fetch_array();
		$salesid = $row['salesid'];
		$itemid = $row['itemid'];
		$quantity = $row['quantity'];
		$price = $row['price'];
		
		
	}
}
if(isset($_POST['update'])){
	$id =$_POST['id'];
	$salesid= $_POST['salesid'];
	$itemid = $_POST['itemid'];
	$quantity= $_POST['quantity'];
	$price= $_POST['price'];
	
	
	$mysqli->query("UPDATE salesitem SET salesid='$salesid',itemid='$itemid',quantity ='$quantity',price='$price' WHERE id=$id") or die($mysqli->error);
	$_SESSION['message'] = "Record has been updated!";
	$_SESSION['msg_type'] = "warning";
	
	header('location:salesitemcrud.php');
}


?>