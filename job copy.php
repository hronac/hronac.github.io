<?php>
	include("include/header.php");
?>

<h3 align="center"> Job Records</h3>

<?php
				$pcuser_id = $_GET['job_user'];
				//$link = connect_db();
				$sql = mysql_query("SELECT * FROM user where user_id = $pcuser_id");
				$result = mysql_fetch_array($sql); 

									
					
?>
<table border="0" width="100%">
	<tr>
		<td><form method="POST" action="">
			<div align="left">
			<table border="1" width="444" style="border-collapse: collapse">
				<tr>
					<td align="right" width="117">Problem Caller :</td>
					<td align="left"><?php echo $result['user_name'];?></td>
				</tr>
				<tr>
					<td align="right" width="117">Section :</td>
					<td align="left"><?php echo $result['section'];?></td>
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
			
			<table align="center" border="1" width="100%" style="border-collapse: collapse">
						  <thead>
							<th>S/L</th>
							<th>Problem Caller</th>
							<th>Section</th>
							<th>Problems</th>
							<th>Solve Procedure</th>
							<th>Status</th>
							<th>Remarks</th>
						</thead>


						<?php
				$link = connect_db();
				$sql = "SELECT *FROM job";
				//$sql = "SELECT * FROM user where section_id=$sec_id";
				$result = mysql_query($sql, $link);

									$i=1;			
										while($row = mysql_fetch_array($result))
										{
											echo "<tr> 
													<td>".$i."</td>
													<td>".$row['user_id']."</td>
													<td>".$row['section']."</td>				
													<td>".$row['problems']."</td>	
													<td>".$row['solveproc']."</td>				
													<td>".$row['status']."</td>	
													<td>".$row['remarks']."</td>	
																									
												  </tr>";
									$i++;
										}
					
?>

							
					</table>


			<p>&nbsp;</div>
		</td>
	</tr>
</table>
			


<?php>
	include("include/footer.php");
?>				