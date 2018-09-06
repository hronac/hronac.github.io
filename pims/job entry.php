<?php>
	include("include/header.php");
?>

<h3 align="center"> Job Records</h3>

<?php
				$pcuser_id = $_GET['job_user'];
				//$link = connect_db();
				$sql = mysql_query("SELECT user.user_id, user.user_name, section.section_id, section.section_name
				FROM user
				JOIN section ON user.section_id = section.section_id
				where user_id = $pcuser_id");

				//$sql = mysql_query("SELECT * FROM user where user_id = $pcuser_id");
				$result = mysql_fetch_array($sql); 

									
					
?>
<table border="0" width="100%">
	<tr>
		<td><form method="POST" action="">
				<div align="left">
				<table border="1" width="380" style="border-collapse: collapse">
					<tr>
						<td align="right" width="117">Problem Caller :</td>
						<td align="left"><?php echo $result['user_name'];?></td>
					</tr>
					<tr>
						<td align="right" width="117">Section :</td>
						<td align="left"><?php echo $result['section_name'];?></td>
					</tr>
					<tr>
						<td align="right" width="117" valign="top">Found 
						Problems :</td>
						<td align="left" height="122" valign="top">
						<textarea rows="7" name="S1" cols="32"></textarea></td>
					</tr>
					<tr>
						<td align="right" width="117" valign="top" height="112">Solve Procedure :</td>
						<td align="left" height="112">
						<textarea rows="6" name="S2" cols="32"></textarea></td>
					</tr>
					<tr>
						<td align="right" width="117">Status :</td>
						<td align="left">&nbsp;Solved
						<input type="radio" value="V1" name="R1">&nbsp; 
						Attention to Others <input type="radio" name="R1" value="V2"></td>
					</tr>
				</table>
				<p>&nbsp;</div>
				
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Submit" name="B1"> <input type="reset" value="Reset" name="B2"></p>
		</form>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</td>
		<td valign="top" width="867">
		<div align="center">
			
			<?php>include("job_details.php");?>
			
			<p>&nbsp;
				
		</div>
		</td>
	</tr>
</table>
			


<?php>
	include("include/footer.php");
?>				