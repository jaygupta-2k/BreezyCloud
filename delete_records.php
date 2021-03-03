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
<title>Delete Records</title>
<link rel="stylesheet" type="text/css" href="css/deletestyle.css">
</head>
<body>
    <?php include 'navbar.php';?>
<!-- <div class="gohome">
<a href="homepage.php" class="gohome">Home</a>
</div>
<div class="goview">
    <a href="view_records.php" class="goview">View</a>
</div> -->
<h2>Delete Records</h2>
<hr/>
<br><br>
<form id="delete_form" name="delete_form" action="delete_records.php" method="post">
Table:
<select id="Table" name="Table" required>
  <option value="">Select Table</option>
  <option value="temperature">Temperature</option>
  <option value="temperature_records">Temperature Records</option>
  <option value="rainfall">Rainfall</option>
  <option value="rainfall_records">Rainfall Records</option>
  <option value="external_conditions">External Conditions</option>
  <option value="external_conditions_records">External Condition Records</option>
</select>
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
<button type="submit" class="btn" name="delete">Delete</button>
<br><br>
</form>
</body>
</html>

<?php
        if(isset($_POST['delete']))
        {
            @$table=$_POST['Table'];
            @$year=$_POST['year'];
            @$month=$_POST['month'];
            @$user=$_SESSION['username'];
            $qd="insert into deleted_records values('$user','$table',$year,'$month')";
            $qdr=$con->query($qd);
            $q="DELETE FROM $table WHERE YEAR=$year and MONTH='$month' ";
            $qr=$con->query($q);
            if($qr)
                echo '<script type="text/javascript">alert("Record deleted successfully.")</script>';
            else
                echo '<script type="text/javascript">alert("No such record exists.")</script>';
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