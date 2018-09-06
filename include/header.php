<?php
		include("include/config.php");
?>

<html>
<head>
	<title>pims</title>
	<link rel="stylesheet" href="style/style.css">
</head>
<body bgcolor=white>
<table align=center width=1300 border=0 cellpadding=0 cellspacing=1>
	<tr bgcolor=#9999BB>
		<td><br><h1><center>.........................</center></h1></td>
	</tr>
	<tr bgcolor=#BBBBDD>
		<td align=center>
			<table width=90% cellpadding=0 cellspacing=1 border=0>
				<tr align=center>
					<td><a href="index.php"><button class="button">All User</button></a></td>
					<td><a href="alljob.php"><button class="button">All Jobs</button></a></td>
					
							<style>
										.button {
										  padding: 5px 10px;
										  font-size: 16px;
										  text-align: center;
										  cursor: pointer;
										  outline: none;
										  color: #fff;
										  background-color: #4CAF50;
										  border: none;
										  border-radius: 15px;
										  box-shadow: 0 3px #999;
										}

										.button:hover {background-color: #3e8e41}

										.button:active {
										  background-color: #3e8e41;
										  box-shadow: 0 5px #666;
										  transform: translateY(4px);
										}
							</style>

					</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<table width=100% height=400 border=0 cellpadding=10 cellspacing=0>
			<tr valign=top>
				<td width=160 bgcolor=#BBBBDD>
				<center>
						<b>Section</b><br>
						<?php
							$link = connect_db();
							//$sql = "select * from section order by 'section_id' ASC";
							$sql = "SELECT *FROM section";
							$result = mysql_query($sql, $link);
										
							while($row = mysql_fetch_array($result))
							{
								echo "<a href='secuser.php?sec_id=$row[section_id]'>$row[section_name]</a><br>";

							}
						?>
				</center>
				<td bgcolor=#EDEDDC>