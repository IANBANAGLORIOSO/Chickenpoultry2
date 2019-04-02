<?php

session_start();
$mysqli = new mysqli('localhost','root','','registration') or die(mysqli_error($mysqli));

$id='';
$update = false;
$time ="";
$customer_id="";

if(isset($_POST['save'])){
	$customer_id = $_POST['customer_id'];
	$username= $_SESSION["username"];
	$result=$mysqli->query("select id from users where username='$username'") or die($mysqli->error);
	if(@count($result)==1)
	{
		$row=$result->fetch_array();
		$userid=$row['id'];

	}
	$mysqli->query("INSERT INTO sales (userid,id,customer_id) VALUES ('$userid','$id','$customer_id')") or
			die($mysqli->error);
	$_SESSION['message'] = "Record has been saved!";
	$_SESSION['msg_type'] = "success";
	
	
	header("location:salescrud.php");
}
if(isset($_GET['delete'])){
	$id =$_GET['delete'];
	$mysqli->query("DELETE FROM sales WHERE id=$id") or die($mysqli->error());
	
	$_SESSION['message'] = "Record has been deleted!";
	$_SESSION['msg_type'] = "danger";
	
	header("location:salescrud.php");
	
	
}
if(isset($_GET['edit'])){
	$id = $_GET['edit'];
	$update =true;
	$result = $mysqli->query("SELECT * FROM sales WHERE id=$id") or die($mysqli->error);
	if(@count($result)==1){
		$row=$result->fetch_array();
		$customer_id = $row['customer_id'];
		
		
	}
}
if(isset($_POST['update'])){
	$id = $_POST['id'];
<<<<<<< HEAD
	$customer_id=$_POST['customer_id'];
	$mysqli->query("UPDATE sales SET customer_id ='$customer_id' WHERE id=$id") or die($mysqli->error);
=======
<<<<<<< HEAD
	$customer_id=$_POST['customer_id'];
	$mysqli->query("UPDATE sales SET customer_id ='$customer_id' WHERE id=$id") or die($mysqli->error);
=======
<<<<<<< HEAD
	$customer_id=$_POST['customer_id'];
	$mysqli->query("UPDATE sales SET customer_id ='$customer_id' WHERE id=$id") or die($mysqli->error);
=======
<<<<<<< HEAD
	$customer_id=$_POST['customer_id'];
	$mysqli->query("UPDATE sales SET customer_id ='$customer_id' WHERE id=$id") or die($mysqli->error);
=======
	$lastname= $_POST['lastname'];
	$mysqli->query("UPDATE sales SET id='$id',customer_id ='$customer_id' WHERE id=$id") or die($mysqli->error);
>>>>>>> 6e89c188243c9b6faf4273660f5d6d850eb8651f
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
	$_SESSION['message'] = "Record has been updated!";
	$_SESSION['msg_type'] = "warning";
	
	header('location:salescrud.php');
}


?>