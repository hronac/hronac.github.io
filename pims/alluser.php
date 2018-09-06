

					<h3 align="center"> All User PC List</h3>
					<table id="customers" align="center" border="1" width="100%" style="border-collapse: collapse">
						  <thead>
							<th>S/L</th>
							<th>User Name</th>
							
							<th>Section</th>
							<th>Pc Type</th>
							<th>ip</th>
							<th>Teamviewer</th>
							<th>Status</th>
						  </thead>
<?php
				$link = connect_db();
				$sql = "SELECT user.user_id, user.user_name, user.designation, section.section_name, user.pc_type, user.ip, user.teamviewer, user.status
						FROM user
						JOIN section ON user.section_id = section.section_id ORDER BY section_name ASC";
				//$sql = "SELECT * FROM user where section_id=$sec_id";
				$result = mysql_query($sql, $link);

									$i=1;			
										while($row = mysql_fetch_array($result))
										{
											echo "<tr> 
													<td>".$i."</td>
													<td><a href='job entry.php?job_user=$row[user_id]'> ".$row['user_name']." , ".$row['designation']." </a> </td>
													<td>".$row['section_name']."</td>				
													<td>".$row['pc_type']."</td>	
													<td>".$row['ip']."</td>				
													<td>".$row['teamviewer']."</td>	
													<td>".$row['status']."</td>	
																									
												  </tr>";
									$i++;
										}
					
?>
							
					</table>



