<?php

session_start();
$mysqli = new mysqli('localhost','root','','registration') or die(mysqli_error($mysqli));

$id='';
$update = false;
$item_id="";
$quantity="";
$price="";
$time="";
$customer_id="";
$total="";

if(isset($_POST['save'])){
	
	$quantity = $_POST['quantity'];
	$price = $_POST['price'];
	$item_id=$_POST['item_id'];
	$customer_id = $_POST['customer_id'];
	$total = $quantity * $price;
	$username= $_SESSION["username"];
	$result=$mysqli->query("select id from users where username='$username'") or die($mysqli->error);
	if(@count($result)==1)
	{
		$row=$result->fetch_array();
		$userid=$row['id'];

	}
	$mysqli->query("INSERT INTO salesitem (userid,item_id,quantity,price,customer_id,total) VALUES ('$userid','$item_id','$quantity','$price','$customer_id','$total')") or
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
		$customer_id = $row['customer_id'];
		$item_id = $row['item_id'];
		
		$quantity = $row['quantity'];
		$price = $row['price'];
		
		
	}
}
if(isset($_POST['update'])){
	$id =$_POST['id'];
	$customer_id= $_POST['customer_id'];
	$item_id = $_POST['item_id'];
	
	$quantity= $_POST['quantity'];
	$price= $_POST['price'];
	
	
	$mysqli->query("UPDATE salesitem SET customer_id='$customer_id',item_id='$item_id',quantity ='$quantity',price='$price' WHERE id=$id") or die($mysqli->error);
	$_SESSION['message'] = "Record has been updated!";
	$_SESSION['msg_type'] = "warning";
	
	header('location:salesitemcrud.php');
}


?>