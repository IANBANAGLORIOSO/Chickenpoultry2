<?php

session_start();
$mysqli = new mysqli('localhost','root','','registration') or die(mysqli_error($mysqli));

$id='';
$update = false;
$item_id="";
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
$small="";
$medium="";
$large="";
=======
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
$quantity="";
$price="";
$time="";
$customer_id="";
<<<<<<< HEAD
$total="";

if(isset($_POST['save'])){
	
=======

if(isset($_POST['save'])){
<<<<<<< HEAD
	
=======
	$small = $_POST['small'];
	$medium = $_POST['medium'];
	$large = $_POST['large'];
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
	$quantity = $_POST['quantity'];
	$price = $_POST['price'];
	$item_id=$_POST['item_id'];
	$customer_id = $_POST['customer_id'];
<<<<<<< HEAD
	$total = $quantity * $price;
=======
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
	$username= $_SESSION["username"];
	$result=$mysqli->query("select id from users where username='$username'") or die($mysqli->error);
	if(@count($result)==1)
	{
		$row=$result->fetch_array();
		$userid=$row['id'];

	}
<<<<<<< HEAD
	$mysqli->query("INSERT INTO salesitem (userid,item_id,quantity,price,customer_id,total) VALUES ('$userid','$item_id','$quantity','$price','$customer_id','$total')") or
=======
<<<<<<< HEAD
	$mysqli->query("INSERT INTO salesitem (userid,item_id,quantity,price,customer_id) VALUES ('$userid','$item_id','$quantity','$price','$customer_id')") or
=======
<<<<<<< HEAD
	$mysqli->query("INSERT INTO salesitem (userid,item_id,small,medium,large,quantity,price,customer_id) VALUES ('$userid','$item_id','$small','$medium','$large','$quantity','$price','$customer_id')") or
=======
	$mysqli->query("INSERT INTO salesitem (userid,item_id,quantity,price,customer_id) VALUES ('$userid','$item_id','$quantity','$price','$customer_id')") or
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
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
<<<<<<< HEAD
		
=======
<<<<<<< HEAD
		
=======
<<<<<<< HEAD
		$small = $row['small'];
		$medium = $row['medium'];
		
		$large = $row['large'];
=======
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
		$quantity = $row['quantity'];
		$price = $row['price'];
		
		
	}
}
if(isset($_POST['update'])){
	$id =$_POST['id'];
	$customer_id= $_POST['customer_id'];
	$item_id = $_POST['item_id'];
<<<<<<< HEAD
	
=======
<<<<<<< HEAD
	
=======
<<<<<<< HEAD
	$small= $_POST['small'];
	$medium= $_POST['medium'];
	$large= $_POST['large'];
=======
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
	$quantity= $_POST['quantity'];
	$price= $_POST['price'];
	
	
<<<<<<< HEAD
	$mysqli->query("UPDATE salesitem SET customer_id='$customer_id',item_id='$item_id',quantity ='$quantity',price='$price' WHERE id=$id") or die($mysqli->error);
=======
<<<<<<< HEAD
	$mysqli->query("UPDATE salesitem SET customer_id='$customer_id',item_id='$item_id',quantity ='$quantity',price='$price' WHERE id=$id") or die($mysqli->error);
=======
<<<<<<< HEAD
	$mysqli->query("UPDATE salesitem SET customer_id='$customer_id',item_id='$item_id',small ='$small',medium ='$medium',large ='$large',quantity ='$quantity',price='$price' WHERE id=$id") or die($mysqli->error);
=======
	$mysqli->query("UPDATE salesitem SET customer_id='$customer_id',item_id='$item_id',quantity ='$quantity',price='$price' WHERE id=$id") or die($mysqli->error);
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
	$_SESSION['message'] = "Record has been updated!";
	$_SESSION['msg_type'] = "warning";
	
	header('location:salesitemcrud.php');
}


?>