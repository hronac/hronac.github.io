<?php>
	include("include/header.php");
?>


<h3 align="center"> Edit All User <?php echo $pcuser_id = $_GET['job_user']; ?> List</h3>


<?php
				//$link = connect_db();
				//$sql = "SELECT *FROM user";
				$sql = "SELECT * FROM user where user_id = $pcuser_id";
				$result = mysql_query($sql);

										
										while($row = mysql_fetch_array($result))
										{
											echo "<tr> 
													
													<td> ".$row['user_name']." , ".$row['designation']." </td>
																																						
												  </tr>";
								
										}
					
?>

				
					




<?php>
	include("include/footer.php");
?>				