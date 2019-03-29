<?php include('process6.php');?>
<!DOCTYPE html>
<html>
<head>
	<title>User Registration system using PHP and MySQL</title>
	<link rel="stylesheet" type="text/css"	href="Css1/side.css">
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
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
		
		
	</div>
	<?php require_once 'process6.php';?>
	
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
		
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Egg_ID</th>
<<<<<<< HEAD
						<th>flocks_Breed</th>
=======
<<<<<<< HEAD
						<th>flocks_Breed</th>
=======
						<th>flocks_ID</th>
>>>>>>> 6e89c188243c9b6faf4273660f5d6d850eb8651f
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
						<th>Small</th>
						<th>Medium</th>
						<th>Large</th>
						<th>Spoiled</th>
						<th>Broken</th>
						
						<th colspan="2">Action</th>
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['id']?></td>
<<<<<<< HEAD
							<td><?php echo $row['breed']?></td>
=======
<<<<<<< HEAD
							<td><?php echo $row['breed']?></td>
=======
							<td><?php echo $row['flocks_id']?></td>
>>>>>>> 6e89c188243c9b6faf4273660f5d6d850eb8651f
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
							<td><?php echo $row['small']?></td>
							<td><?php echo $row['medium']?></td>
							<td><?php echo $row['large']?></td>
							<td><?php echo $row['spoiled']?></td>
							<td><?php echo $row['broken']?></td>
							
							
							<td>
								<a href="eggsadd.php?edit=<?php echo $row['id'];?>"
									class="btn btn-warning">Edit</a>
								<a href="process6.php?delete=<?php echo $row['id'];?>"
									class="btn btn-danger">Delete</a>
									
							</td>
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		<br><br>
		<center>
		<a href="eggsadd.php"class="btn btn-success">Create info</a>
		<a href="index1.php"class="btn btn-dark">Back</a>
		</center>
		<?php
		function pre_r($array){
			echo'<pre>';
			print_r($array);
			echo'</pre>';
		}
	
	?>
	
</div>
</body>
</html>