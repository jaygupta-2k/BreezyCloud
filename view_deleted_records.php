<?php
	session_start();
	require_once('dbconfig/config.php');
	//phpinfo();
    if(!empty($_SESSION['username']))
    {
?>
<html>
    <head>
        <style>
            table
            {
                width: 900px;
                margin: auto;
                table-layout: fixed;
                text-align: center;
                font-family: sans-serif;
                border: 1px white;
                border-collapse: collapse;
                color: #fff;
            }
            table, th, td 
            {
                border: 2px solid white;
                border-collapse: collapse;
                padding: 10px;
                font-size: 15px;
                background: rgba(0, 0, 0, 0.30);
                color: goldenrod;
            }
        </style>
        <title>View Deleted Records</title>
        <link rel="stylesheet" type="text/css" href="css/viewdelstyle.css">
    </head>
    
    <body>
        <?php include 'navbar.php';?>
<!-- <div class="gohome">
<a href="homepage.php" class="gohome">Home</a>
</div> -->
<h2>View Deleted Records</h2>
<hr/>
<?php
    $q="select * from deleted_records";
    $qr=$con->query($q);
?>
        <br><br>
        <table>
            <tr>
                <th>Deleted by</th>
                <th>Table</th>
                <th>Year</th>
                <th>Month</th>
            </tr>
<?php
    while($rows=$qr->fetch_assoc())
    {
?>
            <tr>
                <td><?php echo $rows["USER"]; ?></td>
                <td><?php echo $rows["RECORD"]; ?></td>
                <td><?php echo $rows["YEAR"]; ?></td>
                <td><?php echo $rows["MONTH"]; ?></td>
            </tr>
<?php
    }
?>
        </table>
    </body>
</html>
<?php
    }
    else
    {
        echo '<script type="text/javascript">';
        echo 'alert("You are not logged in. Log in first.");';
        echo 'window.location.href="login.php";';
        echo '</script>';
    }
?>