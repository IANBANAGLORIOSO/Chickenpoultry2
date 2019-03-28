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

<div id="wrapper">
		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<div class="logo_container">
				<br><br>
					
					
				</div>
				<br><br>
				<div class="title">WELCOME</div>
				<li>
					<a href="flockscrud.php">Flocks Management</a>
				</li>
				<li>
					<a href="customercrud.php">Customer</a>
				</li>
				<li>
					<a href="medicationcrud.php">Medication</a>
				</li>
				<li>
					<a href="feedscrud.php">Feeds</a>
				</li>
				<li>
					<a href="salescrud.php">Sales</a>
				</li>
				<li>
					<a href="itemcrud.php">Items</a>
				</li>
				<li>
					<a href="eggscrud.php">Records Eggs</a>
				</li>
				<li>
					<a href="salesitemcrud.php">Sales-item</a>
				</li>
				<li>
				<a href="login.php">Logout</a>
				</li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container" id="dot"> 
				
				<a href="#menu-toggle" class="btn btn-success" id="menu-toggle">Menu</a>
			</div>
		</div>

	</div>
		
		<script src="Menu/jquery/jquery.min.js"></script>
		<script src="Menu/bootstrap/js/bootstrap.bundle.min.js"></script>


<!-- Menu Toggle Script -->
<script>
$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

</script>
<?php require_once 'process.php';?>
	
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
		$result = $mysqli->query("SELECT * FROM flocks where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<h1 class="text-white">Flocks Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Breed</th>
						<th>Rooster</th>
						<th>Hen</th>
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['breed']?></td>
							<td><?php echo $row['rooster']?></td>
							<td><?php echo $row['hen']?></td>
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		
		<?php
		function pre_r($array){
			echo'<pre>';
			print_r($array);
			echo'</pre>';
		}
	
	?>

	
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
		
		$result = $mysqli->query("SELECT * FROM customer where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<h1 class="text-white">Customer Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Firstname</th>
						<th>Lastname</th>
						<th>Middlename</th>
						<th>contact_no</th>
						<th>address</th>
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['firstname']?></td>
							<td><?php echo $row['lastname']?></td>
							<td><?php echo $row['middlename']?></td>
							<td><?php echo $row['contact_no']?></td>
							<td><?php echo $row['address']?></td>
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		
		
<br><br>
	
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
		
		$result = $mysqli->query("SELECT * FROM medication where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<?php
	
		$result = $mysqli->query("SELECT * FROM flocks,medication where flocks.id = medication.flocks_id ") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<h1 class="text-white">Medication Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Flocks_Breed</th>
						<th>Types_of_vaccine</th>
						<th>Timestamp</th>
						<th>Amount</th>
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['breed']?></td>
							<td><?php echo $row['type_of_vaccine']?></td>
							<td><?php echo $row['time']?></td>
							<td><?php echo $row['amount']?></td>
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		<br><br>
		
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
		
		$result = $mysqli->query("SELECT * FROM feeds where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<?php
		
		
		$result = $mysqli->query("SELECT * FROM flocks,feeds where flocks.id = feeds.flocks_id ") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<h1 class="text-white">Feeds Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>flocks_Breed</th>
						<th>Types_of_feeds</th>
						<th>Quantity</th>
						<th>Unit</th>
						<th>Time</th>
						<th>Amount</th>
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['breed']?></td>
							<td><?php echo $row['type_of_feeds']?></td>
							<td><?php echo $row['quantity']?></td>
							<td><?php echo $row['unit']?></td>
							<td><?php echo $row['time']?></td>
							<td><?php echo $row['amount']?></td>
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		
		
	<br><br>
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
		
		$result = $mysqli->query("SELECT * FROM sales where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<?php
		
		
		$result = $mysqli->query("SELECT * FROM customer,sales where customer.id = sales.customer_id") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<h1 class="text-white">Sales Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Sales_id</th>
						<th>Time</th>
						<th>Customer</th>
						
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['id']?></td>
							<td><?php echo $row['time']?></td>
							<td><?php echo $row['lastname']?></td>
							
							
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		<br><br>
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
		
		$result = $mysqli->query("SELECT * FROM item where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<h1 class="text-white">Items Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Item_id</th>
						<th>Description</th>
						<th>Unit</th>
						<th>Quality</th>
						<th>Price</th>
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['id']?></td>
							<td><?php echo $row['description']?></td>
							<td><?php echo $row['unit']?></td>
							<td><?php echo $row['quality']?></td>
							<td><?php echo $row['price']?></td>
							
							
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
	<br><br>	
		
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
		
		$result = $mysqli->query("SELECT * FROM eggs where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<?php
		
		
		$result = $mysqli->query("SELECT * FROM flocks,eggs where flocks.id = eggs.flocks_id") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<h1 class="text-white">Eggs Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Egg_ID</th>
						<th>Flocks_breed</th>
						<th>Small</th>
						<th>Medium</th>
						<th>Large</th>
						<th>Spoiled</th>
						<th>Broken</th>
						
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['id']?></td>
							<td><?php echo $row['breed']?></td>
							<td><?php echo $row['small']?></td>
							<td><?php echo $row['medium']?></td>
							<td><?php echo $row['large']?></td>
							<td><?php echo $row['spoiled']?></td>
							<td><?php echo $row['broken']?></td>
							
							
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		
	<br><br>
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
		<h1 class="text-white">SalesItem Report</h1>
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Order</th>
						<th>Item_Description</th>
						<th>Quantity</th>
						<th>Customer</th>
						<th>Price</th>
						<th>Timestamp</th>
						
						
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['id']?></td>
							<td><?php echo $row['description']?></td>
							<td><?php echo $row['quantity']?></td>
							<td><?php echo $row['lastname']?></td>
							<td><?php echo $row['price']?></td>
							<td><?php echo $row['time']?></td>
							
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		
	

</div>
<br><br><br><br>
</body>
</html>