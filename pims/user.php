<?php>
	include("include/header.php");
?>

<?php
		
				if($sec_id==null)
						$sec_id = 1;
				$link = connect_db();
				$sql = "select * from user where section_id=$sec_id";
				$result = mysql_query($sql, $link);
?>
						<h3 align="center"> User List</h3>
						<table align="center" border="1" width="80%" style="border-collapse: collapse">
							  <thead>
								  <th>User Name</th>
								  <th>Designation</th>
								  <th>Section</th>
								  <th>Pc Type</th>
								  <th>ip</th>
								  <th>Teamviewer</th>
							  </thead>
		  
									<?php	
									while( $row = mysql_fetch_array($result))
											echo "<tr> 
													<td>".$row['user_id']."</td>				
													<td>".$row['user_name']."</td>	
													<td>".$row['designation']."</td>
													<td>".$row['section']."</td>				
													<td>".$row['pc_type']."</td>	
													<td>".$row['ip']."</td>				
													<td>".$row['teamviewer']."</td>	
													<td>".$row['status']."</td>	
																									
													</tr>";
											
								?>
								
							</table>



<?php>
	include("include/footer.php");
?>