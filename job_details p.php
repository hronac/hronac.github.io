


<table id="customers">
	<thead>
		<th>S/L</th>
		<th>Problem Caller</th>
		<th>Section</th>
		<th>Problems</th>
		<th>Solve Procedure</th>
		<th>Status</th>
		<th>Remarks</th>
		<th>Dated</th>
	</thead>


			<?php
				$link = connect_db();
				$sql = "SELECT * FROM job  ORDER BY job_id DESC";
				//$sql = "SELECT job.job_id, user.user_name, user.section, job.problems, job.solveproc, job.status, job.remarks, job.jobcreatedate
						FROM user
						JOIN job ON user.user_id = job.user_id ORDER BY job_id DESC";
				//$sql = "SELECT * FROM user where section_id=$sec_id";
				$result = mysql_query($sql, $link);

				$i=1;			
				while($row = mysql_fetch_array($result))
					{
						echo "<tr> 
								<td>".$row['job_id']."</td>
								<td>".$row['user_name']."</td>
								<td>".$row['section']."</td>				
								<td>".$row['problems']."</td>	
								<td>".$row['solveproc']."</td>				
								<td>".$row['status']."</td>	
								<td>".$row['remarks']."</td>
								<td>".$row['jobcreatedate']."</td>	
																					
							</tr>";
				$i++;
														}
									
			?>
</table>


