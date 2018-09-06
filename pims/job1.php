
<table align="center" border="1" width="80%" style="border-collapse: collapse">
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
				$sql = "SELECT * FROM job";
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


