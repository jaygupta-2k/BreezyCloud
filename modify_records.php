<?php
    session_start();
    require_once('dbconfig/config.php');
    //phpinfo();
    if(!empty($_SESSION['username']))
    {
?>
<!DOCTYPE html>
<html>
<head>
<title>Modify Records</title>
<link rel="stylesheet" type="text/css" href="css/modifystyle.css">
<script>
function populate(s1,s2){
	var s1 = document.getElementById(s1);
	var s2 = document.getElementById(s2);
	s2.innerHTML = "";
	if(s1.value == "temperature"){
		var optionArray = ["|Record Name","HIGHEST_MAX_TEMP|Highest Max Temp","LOWEST_MAX_TEMP|Lowest Max Temp","HIGHEST_MIN_TEMP|Highest Min Temp","LOWEST_MIN_TEMP|Lowest Min Temp","AVG_MAX_TEMP|Avg Max Temp","AVG_MIN_TEMP|Avg Min Temp","HUMIDITY|Humidity"];
	} else if(s1.value == "temperature_records"){
		var optionArray = ["|Record Name","HIGHEST_MAX_DAY|Highest Max Date","LOWEST_MAX_DAY|Lowest Max Date","HIGHEST_MIN_DAY|Highest Min Date","LOWEST_MIN_DAY|Lowest Min Date"];
	} else if(s1.value == "rainfall"){
		var optionArray = ["|Record Name","NO_OF_RAINY_DAYS|Number of Rainy Days","TWENTYFOUR_HOURS_MAX|24 Hrs Max","TOTAL_MONTHLY_RAINFALL|Total Monthly Rainfall"];
	} else if(s1.value=="rainfall_records"){
        var optionArray=["|Record Name","MAX_RAINFALL_DAY|Max Rainfall Date(number)"];
    } else if(s1.value=="external_conditions"){
        var optionArray=["|Record Name","VISIBILITY|Visibility","AVG_WIND_SPEED|Avg Wind Speed","MAX_WIND_SPEED|Max Wind Speed"];
    } else if(s1.value=="external_conditions_records"){
        var optionArray=["|Record Name","WINDIEST_DAY|Windiest Date"];
    }
	for(var option in optionArray){
		var pair = optionArray[option].split("|");
		var newOption = document.createElement("option");
		newOption.value = pair[0];
		newOption.innerHTML = pair[1];
		s2.options.add(newOption);
	}
} 
</script>
</head>


<body>
    <?php include 'navbar.php';?>
<!-- <div class="gohome">
<a href="homepage.php" class="gohome">Home</a>
</div>
<div class="goview">
    <a href="view_records.php" class="goview">View</a>
</div> -->
<h2>Modify Records</h2>
<hr/>
<br><br>
<form id="modify_form" name="modify_form" action="modify_records.php" method="post">
Table:
<select id="Table" name="Table" onchange="populate(this.id,'record')" required>
  <option value="">Select Table</option>
   <option value="temperature">Temperature</option>
  <option value="temperature_records">Temperature Records</option>
  <option value="rainfall">Rainfall</option>
  <option value="rainfall_records">Rainfall Records</option>
  <option value="external_conditions">External Conditions</option>
  <option value="external_conditions_records">External Condition Records</option>
</select>
<br><br>
Choose Record Name:
<select id="record" name="record" required></select>
<br><br>
Enter New Value For the Selected Record(s):
<input id="updated_record" name="ur" type="floatnumber" placeholder="Enter numeric values only" required>
<br><br>
Year:
<select id="year" name="year" required>
    <option value="">Select Year</option>
    <option value="2001">2001</option>
    <option value="2002">2002</option>
    <option value="2003">2003</option>
    <option value="2004">2004</option>
    <option value="2005">2005</option>
    <option value="2006">2006</option>
    <option value="2007">2007</option>
    <option value="2008">2008</option>
    <option value="2009">2009</option>
    <option value="2010">2010</option>
    <option value="2011">2011</option>
    <option value="2012">2012</option>
    <option value="2013">2013</option>
    <option value="2014">2014</option>
    <option value="2015">2015</option>
    <option value="2016">2016</option>
    <option value="2017">2017</option>
    <option value="2018">2018</option>
    <option value="2019">2019</option>
    <option value="2020">2020</option>
</select>
<br><br>
Month:
<select id="month" name="month" required>
    <option value="">Select Month</option>
    <option value="January">January</option>
    <option value="February">February</option>
    <option value="March">March</option>
    <option value="April">April</option>
    <option value="May">May</option>
    <option value="June">June</option>
    <option value="July">July</option>
    <option value="August">August</option>
    <option value="September">September</option>
    <option value="October">October</option>
    <option value="November">November</option>
    <option value="December">December</option>
</select>
<br><br>
<button type="submit" class="btn" name="modify">Modify</button>
<br><br>
</form>
</body>
</html>
<?php
        if(isset($_POST['modify']))
        {
            @$table=$_POST['Table'];
            @$record=$_POST['record'];
            @$year=$_POST['year'];
            @$month=$_POST['month'];
            @$ur=$_POST['ur'];
            $q="update $table set $record=$ur where YEAR=$year and MONTH='$month' ";
            $qr=$con->query($q);
            if($qr)
            {
                echo '<script type="text/javascript">alert("Record updated successfully.")</script>';
            }
            else
            {
                echo '<script type="text/javascript">alert("Error. Try again.")</script>';
            }
        }
    }
    else
    {
        echo '<script type="text/javascript">';
        echo 'alert("You are not logged in. Log in first.");';
        echo 'window.location.href="login.php";';
        echo '</script>';
    }
?>