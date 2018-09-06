<?php>
	include("include/header.php");
?>

<?php
        $pcuser_id = $_GET['job_user'];
        //$link = connect_db();
        //$sql = mysql_query("SELECT * FROM user where user_id = $pcuser_id");
        $sql = mysql_query("SELECT user.user_id, user.user_name, section.section_id, section.section_name
        FROM user
        JOIN section ON user.section_id = section.section_id
        where user_id = $pcuser_id");
        $result = mysql_fetch_array($sql); 
          
?>


<h3 align="center"> Job Records</h3>


<table border="0" width="100%">
	<tr>
		<td width=480>
			

<div class="container">
  <form action="">
    <div class="row">
      <div class="col-25">
        <label for="fname">Problem Caller</label>
      </div>
      <div class="col-75">
        <input type="text" id="uname"  value="<?php echo $result['user_name'];?>" >
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Section</label>
      </div>
      <div class="col-75">
        <input type="text" id="section"  value="<?php echo $result['section_name'];?>" >
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="country">Others</label>
      </div>
      <div class="col-75">
        <select id="country" name="country" >
          <option value="australia">  </option>
          <option value="australia">Buyer / QC</option>
          <option value="canada">CC Camera</option>
          <option value="usa">Attendance Reader</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="problems">Problems</label>
      </div>
      <div class="col-75">
        <textarea id="problems" name="problems" placeholder="Write Problem Details.." style="height:100px"></textarea>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="solve">Solve Procedure</label>
      </div>
      <div class="col-75">
        <textarea id="solve" name="solve" placeholder="Write Solve Procedure.." style="height:100px"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>

  </form>
</div>

			<p>&nbsp;
		</td>
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