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
			
			$section_id = $_GET['sec_id'];
			$link = connect_db();
			
			//$sql = "SELECT *FROM user";
			//$sql = mysql_query("SELECT user.user_id, user.user_name, section.section_id, section.section_name
						        
						        //where section_id=$sec_id
						        //FROM user
						        //JOIN section ON user.section_id = section.section_id");
			$sql = "SELECT * FROM user where section_id=$sec_id";
			$result = mysql_query($sql, $link);

				$i=1;			
					while($row = mysql_fetch_array($result))
						{
							echo "<tr> 
									<td>".$i."</td>
									<td><a href='job entry2.php?job_user=$row[user_id]'> ".$row['user_name'].", ".$row['designation']." </a> </td>
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



<?php>
	include("include/footer.php");
?>				