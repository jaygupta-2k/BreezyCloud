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
<title>Insert Rainfall Records</title>
<link rel="stylesheet" type="text/css" href="css/insertstyle.css">
</head>

<body>
<?php include 'navbar.php';?>
<!-- <div class="gohome">
<a href="homepage.php" class="gohome">Home</a>
</div>
<div class="goview">
    <a href="view_records.php" class="goview">View</a>
</div> -->
<h2>Insert Rainfall Records(Day Number)</h2>
<hr/>
<br><br>
<form id="insert_form" name="insert_form" action="insert_records_rr.php" method="post">
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
Max Rainfall Date:
<input id="MAX_RAINFALL_DAY" name="mrd" type="floatnumber" placeholder="Enter numeric values only" required>
<br><br>
<button type="submit" class="btn" name="insert">Insert</button>
<br><br>
</form>
</body>
</html>
<?php
        if(isset($_POST['insert']))
        {
            @$year=$_POST['year'];
            @$month=$_POST['month'];
            @$mrd=$_POST['mrd'];
            $q="insert into rainfall_records values($year,'$month',$mrd) ";
            $qr=$con->query($q);
            if($qr)
            {
                echo '<script type="text/javascript">alert("Record inserted successfully.")</script>';
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