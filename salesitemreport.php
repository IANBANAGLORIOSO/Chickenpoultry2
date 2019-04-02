<!DOCTYPE html>
<html>
<head>
	<title>Front page</title>
	
	<link rel="stylesheet" type="text/css" href="Css1/style.css">
	<link rel="stylesheet" type="text/css" href="Css1/side.css">
	<link rel="stylesheet" type="text/js" href="javascript/java.js">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<script type = "text/javascript" src = "bootstrap/js/jquery-slim.min.js"></script>
	<script type = "text/javascript" src = "bootstrap/js/popper.min.js"></script>
	<script type = "text/javascript" src = "bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div id="main">
			<nav>
			
				<ul>

					<li><a href="index.php">Home</a></li> 
					<li>Contact Me: 0946-816-2149</li>
					
				</ul>
		
			</nav>
	</div>




</script>
<?php require_once 'process3.php';?>
	<?php
	
	if(isset($_SESSION['message'])):?>
	
	<div class="alert alert-<?=$_SESSION['msg_type']?>">
	
	<?php 
		echo $_SESSION['message'];
		unset($_SESSION['message']);
	?>
	</div>
	<?php endif ?>
	<div class="container">
	<?php
		$mysqli = new mysqli('localhost','root','','registration') or die(mysqli_error($mysqli));
		$username= $_SESSION["username"];
		$result=$mysqli->query("select id from users where username='$username'") or die($mysqli->error);
		if(@count($result)==1)
		{
			$row=$result->fetch_array();
			$userid=$row['id'];

		}
		
		$result = $mysqli->query("SELECT * FROM salesitem where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<?php
		
		
		$result = $mysqli->query("SELECT * FROM item,customer,salesitem where item.id=salesitem.item_id and customer.id=salesitem.customer_id") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<a href="index1.php"class="btn btn-success">back</a>
		<h1 class="text-white">SalesItem Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Order</th>
						<th>Item_Description</th>
<<<<<<< HEAD
						
						
						<th>Customer</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Total</th>
=======
<<<<<<< HEAD
						
=======
						<th>Small</th>
						<th>Medium</th>
						<th>Large</th>
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
						<th>Quantity</th>
						<th>Customer</th>
						<th>Price</th>
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
						<th>Timestamp</th>
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['id']?></td>
							<td><?php echo $row['description']?></td>
<<<<<<< HEAD
							
							
							<td><?php echo $row['lastname']?></td>
							<td><?php echo $row['quantity']?></td>
							<td>₱<?php echo $row['price']?></td>
							<td>₱<?php echo $row['total']?></td>
=======
<<<<<<< HEAD
							
=======
							<td><?php echo $row['small']?></td>
							<td><?php echo $row['medium']?></td>
							<td><?php echo $row['large']?></td>
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
							<td><?php echo $row['quantity']?></td>
							<td><?php echo $row['lastname']?></td>
							<td><?php echo $row['price']?></td>
>>>>>>> 34c8c2a8e37e09b7cd9b54b63666a29f7579d276
							<td><?php echo $row['time']?></td>
							
						
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		

</body>
</html>