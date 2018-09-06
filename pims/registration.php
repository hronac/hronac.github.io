<?php>
	include("include/header.php");
?>

<?php	
	if($register_form=="true")
	{
		$link = connect_db();
		$sql = "insert into user values( '$form_username','$form_password','$form_fullname')";
		$result = mysql_query($sql, $link);
		
		if($result==null)
			echo "<br>Registration Failed. Please try again. <br>";
		else
			echo "<br><b>Welcome $form_fullname</b><br>";
	}
	else
	{
?>
		<br> Enter Your Name, Password and Full Name to be register. <br><br>

		<form action ="registration.php" method="POST">
			<input type="hidden" name="register_form" value="true">
			<input type="text" placeholder="user name" name="form_username"><br>
			<input type="password" placeholder="Password" name="form_password"><br>
			<input type="text" placeholder="Full Name" name="form_fullname"><br><br>
			<input type="submit" value="Register Me">
		</form>
<?php
	}
?>
	
<?php>
	include("include/footer.php");
?>				