<?php>
	include("include/header.php");
?>
<h3 align="center"> All User PC List</h3>
	<table id="customers" >
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
			$sql = "SELECT * FROM user where section_id=$sec_id";
			//$sql = "SELECT *FROM user";
			$result = mysql_query($sql, $link);

				$i=1;			
					while($row = mysql_fetch_array($result))
						{
							echo "<tr> 
									<td>".$i."</td>
									<td><a href='job entry.php?job_user=$row[user_id]'> ".$row['user_name'].", ".$row['designation']." </a> </td>
									<td>".$row['section']."</td>				
									<td>".$row['pc_type']."</td>	
									<td>".$row['ip']."</td>				
									<td>".$row['teamviewer']."</td>	
									<td>".$row['status']."</td>	
																								
								  </tr>";
									$i++;
						}
					
		?>
							
	</table>



<?php>
	include("include/footer.php");
?>				