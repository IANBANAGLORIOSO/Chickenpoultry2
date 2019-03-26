<?php include('process.php');?>
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
	<form action="process.php" method="POST">
	<input type="hidden" name="id" value="<?php echo $id; ?>">
		<div class="form-group">
			<label>Breed</label>
			<select name="breed" class="form-control" value="<?php echo $breed;?>"required>
			<option value=""></option>
			<option value="Silkie">Silkie</option>
			<option value="Rhode Island Red">Rhode Island Red</option>
			<option value="LegHorn chicken">LegHorn chicken</option>
			<option value="Plymouth Rock">Plymouth Rock</option>
			<option value="Brahma">Brahma</option>
			<option value="Wyandotte">Wyandotte</option>
			<option value="Araucana">Araucana</option>
			<option value="Australop">Australop</option>
			<option value="Polish">Polish</option>
			<option value="Marans">Marans</option>
			<option value="Cornish">Cornish</option>
			<option value="Jersey Giant">Jersey Giant</option>
			<option value="Welsummer">Welsummer</option>
			<option value="Frizel">Frizel</option>
			<option value="Minorca Chicken">Minorca Chicken</option>
			<option value="Asil">Asil</option>
			<option value="Rosecomb">Rosecomb</option>
			</select>
		</div>
		<div class="form-group">
			<label>Rooster</label>
			<input type="number" name="rooster" class="form-control" value="<?php echo $rooster;?>"placeholder="Enter Number of Rooster"required>
		</div>
		<div class="form-group">
			<label>Hen</label>
			<input type="number" name="hen" class="form-control" value="<?php echo $hen;?>"placeholder="Enter Number of Hen"required>
		</div>
		<div class="form-group">
		<?php 
			if($update==true):
		?>
		<button type="submit" class="btn btn-info" name="update">Update</button>
		<a href="flockscrud.php"class="btn btn-warning">back</a>
		<?php else: ?>
			<button type="submit" class="btn btn-success" name="save">save</button>
			<a href="flockscrud.php"class="btn btn-warning">back</a>
		<?php endif;?>
		</div>
	</form>
	</div>

</body>
</html>