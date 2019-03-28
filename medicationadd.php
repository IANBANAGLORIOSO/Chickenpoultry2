<?php include('process2.php');?>
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
	<br><br><br>
	<div class="row justify-content-center">
	<form action="process2.php" method="POST">
	<input type="hidden" name="id" value="<?php echo $id; ?>">
		<div class="form-group">
		<br><br>
			<label>Breed</label>
				<?php
						$sql = "SELECT * FROM `flocks`";
						$result = mysqli_query($mysqli, $sql);

				?>
<<<<<<< HEAD
				<select name="flocks_id"class="form-control"value="<?php echo $flocks_id;?>">
=======
				<select name="flocks_id"class="form-control">
>>>>>>> 6e89c188243c9b6faf4273660f5d6d850eb8651f
                      <?php
                          
						  
                          $resultCheck = mysqli_num_rows($records);

                            while ($row = mysqli_fetch_array($result)) {
                      ?>
                           <option class="form-control" value="<?php echo $row['id'];?>"><?php echo $row['breed'];?></option>   
                           <?php   
                          }
                          ?>
            </select>
			
		<div>
		<div class="form-group">
			<label>Types_of_vaccine</label>
			<select name="type_of_vaccine" class="form-control" value="<?php echo $type_of_vaccine;?>"required>
			<option value=""></option>
			<option value="Biotronic">Biotronic</option>
			<option value="Mycofix">Mycofix</option>
			<option value="Poultry">Poultry4x</option>
			<option value="FUMzyme">FUMzyme</option>
			<option value="Mycotoxin">Mycotoxin</option>
			<option value="live vaccine">live vaccine</option>
			<option value="Attenuated vaccine">Attenuated vaccine</option>
			<option value="killed vaccine">killed vaccine</option>
			</select>
		</div>
		
		<div class="form-group">
			<label>Amount</label>
			<input type="amount" name="amount" class="form-control" value="<?php echo $amount;?>"placeholder="Enter amount"required>
		</div>
		
		<div class="form-group">
		<?php 
			if($update==true):
		?>
		<button type="submit" class="btn btn-info" name="update">Update</button>
		<a href="medicationcrud.php"class="btn btn-warning">back</a>
		<?php else: ?>
			<button type="submit" class="btn btn-success" name="save">save</button>
			<a href="medicationcrud.php"class="btn btn-warning">back</a>
		<?php endif;?>
		</div>
	</form>
	</div>

</body>
</html>