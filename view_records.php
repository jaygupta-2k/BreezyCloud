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
<title>View Records</title>
<link rel="stylesheet" type="text/css" href="css/viewstyle.css">
<script>
function populate(s1,s2){
    var s1 = document.getElementById(s1);
    var s2 = document.getElementById(s2);
    s2.innerHTML = "";
    if(s1.value == "temperature"){
        var optionArray = ["|Record name","HIGHEST_MAX_TEMP|Highest Max Temp","LOWEST_MAX_TEMP|Lowest Max Temp","HIGHEST_MIN_TEMP|Highest Min Temp","LOWEST_MIN_TEMP|Lowest Min Temp","AVG_MAX_TEMP|Avg Max Temp","AVG_MIN_TEMP|Avg Min Temp","HUMIDITY|Humidity","*|All"];
    } else if(s1.value == "temperature_records"){
        var optionArray = ["|Record name","HIGHEST_MAX_DAY|Highest Max Date","LOWEST_MAX_DAY|Lowest Max Date","HIGHEST_MIN_DAY|Highest Min Date","LOWEST_MIN_DAY|Lowest Min Date","*|All"];
    } else if(s1.value == "rainfall"){
        var optionArray = ["|Record name","NO_OF_RAINY_DAYS|Number of Rainy Days","TWENTYFOUR_HOURS_MAX|24 Hrs Max","TOTAL_MONTHLY_RAINFALL|Total Monthly Rainfall","*|All"];
    } else if(s1.value=="rainfall_records"){
        var optionArray=["|Record name","MAX_RAINFALL_DAY|Max Rainfall Date(number)"];
    } else if(s1.value=="external_conditions"){
        var optionArray=["|Record name","VISIBILITY|Visibility","AVG_WIND_SPEED|Avg Wind Speed","MAX_WIND_SPEED|Max Wind Speed","*|All"];
    } else if(s1.value=="external_conditions_records"){
        var optionArray=["|Record name","WINDIEST_DAY|Windiest Date"];
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
</div> -->
<h2>View Record</h2>
<hr/>
<br><br>
<form id="retrieve_form" name="retrieve_form" action="view_records.php" method="post">
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
    <option value="all">All</option>
</select>
<br><br>
<button name="view" type="submit" class="btn">View</button>
<br><br>
</form>
<br><br>
    <?php
        if(isset($_POST['view']))
        {
            @$table=$_POST['Table'];
            @$record=$_POST['record'];
            @$year=$_POST['year'];
            @$month=$_POST['month'];
            $x='all';
            if($month==$x)
            {
                $query="select * from $table where YEAR=$year order by case when MONTH = 'January' then 1
                when MONTH = 'February' then 2
                when MONTH = 'March' then 3
                when MONTH = 'April' then 4
                when MONTH = 'May' then 5
                when MONTH = 'June' then 6
                when MONTH = 'July' then 7
                when MONTH = 'August' then 8
                when MONTH = 'September' then 9
                when MONTH = 'October' then 10
                when MONTH = 'November' then 11
                when MONTH = 'December' then 12
                else NULL end"; 
                $query_run= $con->query($query);
                if($record=='*')
                {
    ?>
                    <style>
                        table
                        {
                            width: 99%;
                            margin: auto;
                            table-layout: fixed;
                            text-align: center;
                            font-family: sans-serif;
                            border: 1px black;
                            border-collapse: collapse;
                            color: #fff;
                        }
                        table, th, td 
                        {
                            border: 2px solid black;
                            border-collapse: collapse;
                            padding: 10px;
                            font-size: 15px;
                            background: rgba(0, 0, 0, 0.30);
                            color: goldenrod;
                        }
                    </style>
    <?php
                    switch($table)
                    {
                        case "temperature":
                            echo $record;
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>Highest_Max_Temp</th>
                                    <th>Lowest_Max_Temp</th>   
                                    <th>Highest_Min_Temp</th>
                                    <th>Lowest_Min_Temp</th>
                                    <th>Avg_Max_Temp</th>
                                    <th>Avg_Min_Temp</th>
                                    <th>Humidity</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MAX_TEMP"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MAX_TEMP"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MIN_TEMP"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MIN_TEMP"];  ?> </td>
                                    <td><?php echo $rows["AVG_MAX_TEMP"];  ?> </td>
                                    <td><?php echo $rows["AVG_MIN_TEMP"];  ?> </td>
                                    <td><?php echo $rows["HUMIDITY"];  ?> </td>
                                </tr>
                            
    <?php
                            }
    ?>
                            </table>
    <?php
                            break;
                        case "temperature_records":
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>Highest_Max_Date</th>
                                    <th>Lowest_Max_Date</th>   
                                    <th>Highest_Min_Date</th>
                                    <th>Lowest_Min_Date</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {   
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MAX_DAY"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MAX_DAY"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MIN_DAY"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MIN_DAY"];  ?> </td>
                                </tr>
    <?php
                            }
    ?>
                             </table>
    <?php
                            break;
                        case "rainfall":
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>No_of_Rainy_Days</th>
                                    <th>Twentyfour_Hours_Max</th>   
                                    <th>Total_Monthly_Rainfall</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {   
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["NO_OF_RAINY_DAYS"];  ?> </td>
                                    <td><?php echo $rows["TWENTYFOUR_HOURS_MAX"];  ?> </td>
                                    <td><?php echo $rows["TOTAL_MONTHLY_RAINFALL"];  ?> </td>
                                </tr>
    <?php
                            }
    ?>
                            </table>
    <?php
                            break;
                        case "external_conditions":
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>Visibility</th>
                                    <th>Avg_Wind_Speed</th>   
                                    <th>Max_Wind_Speed</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {   
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["VISIBILITY"];  ?> </td>
                                    <td><?php echo $rows["AVG_WIND_SPEED"];  ?> </td>
                                    <td><?php echo $rows["MAX_WIND_SPEED"];  ?> </td>
                                </tr>
                           
    <?php
                            }
    ?>
                             </table>
    <?php
                            break;
                        default:
                            echo " ";
    
                    }
                }
                else
                {
    ?>
                    <style>
                        table
                        {
                            width: 900px;
                            margin: auto;
                            table-layout: fixed;
                            text-align: center;
                            font-family: sans-serif;
                            border: 1px black;
                            border-collapse: collapse;
                            color: #fff;
                        }
                        table, th, td 
                        {
                            border: 2px solid black;
                            border-collapse: collapse;
                            padding: 10px;
                            font-size: 15px;
                            background: rgba(0, 0, 0, 0.30);
                            color: goldenrod;
                        }
                    </style>
                    <table>
                        <tr>
                            <th> Year</th>
                            <th> Month</th>
                            <th> <?php echo $record ?> </th>
                        </tr>
    <?php
                    while($rows=$query_run->fetch_assoc())
                    {
    ?>
                        <tr>
                            <td><?php echo $rows["YEAR"];  ?> </td>
                            <td><?php echo $rows["MONTH"];  ?> </td>
                            <td><?php echo $rows["$record"];  ?> </td>
                        </tr>
    <?php
                    }
    ?>
                    </table>
    <?php
                }
            }
            else
            {
                $query="select * from $table where YEAR=$year and MONTH='$month' ";
                $query_run= $con->query($query);
                if($record=='*')
                {
    ?>
                    <style>
                        table
                        {
                            width: 99%;
                            margin: auto;
                            table-layout: fixed;
                            text-align: center;
                            font-family: sans-serif;
                            border: 1px black;
                            border-collapse: collapse;
                            color: #fff;
                        }
                        table, th, td 
                        {
                            border: 2px solid black;
                            border-collapse: collapse;
                            padding: 10px;
                            font-size: 15px;
                            background: rgba(0, 0, 0, 0.30);
                            color: goldenrod;
                        }
                    </style>
    <?php
                    switch($table)
                    {
                        case "temperature":
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>Highest_Max_Temp</th>
                                    <th>Lowest_Max_Temp</th>   
                                    <th>Highest_Min_Temp</th>
                                    <th>Lowest_Min_Temp</th>
                                    <th>Avg_Max_Temp</th>
                                    <th>Avg_Min_Temp</th>
                                    <th>Humidity</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {   
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MAX_TEMP"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MAX_TEMP"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MIN_TEMP"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MIN_TEMP"];  ?> </td>
                                    <td><?php echo $rows["AVG_MAX_TEMP"];  ?> </td>
                                    <td><?php echo $rows["AVG_MIN_TEMP"];  ?> </td>
                                    <td><?php echo $rows["HUMIDITY"];  ?> </td>
                                </tr>
    <?php
                            }
    ?>
                            </table>
    <?php
                            break;
                        case "temperature_records":
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>Highest_Max_Date</th>
                                    <th>Lowest_Max_Date</th>   
                                    <th>Highest_Min_Date</th>
                                    <th>Lowest_Min_Date</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {   
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MAX_DAY"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MAX_DAY"];  ?> </td>
                                    <td><?php echo $rows["HIGHEST_MIN_DAY"];  ?> </td>
                                    <td><?php echo $rows["LOWEST_MIN_DAY"];  ?> </td>
                                </tr>
    <?php
                            }
    ?>
                            </table>
    <?php
                            break;
                        case "rainfall":
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>No_of_Rainy_Days</th>
                                    <th>Twentyfour_Hours_Max</th>   
                                    <th>Total_Monthly_Rainfall</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {   
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["NO_OF_RAINY_DAYS"];  ?> </td>
                                    <td><?php echo $rows["TWENTYFOUR_HOURS_MAX"];  ?> </td>
                                    <td><?php echo $rows["TOTAL_MONTHLY_RAINFALL"];  ?> </td>
                                </tr>
    <?php
                            }
    ?>
                            </table>
    <?php
                            break;
                        case "external_conditions":
    ?>
                            <table>
                                <tr>
                                    <th>Year</th>
                                    <th>Month</th>
                                    <th>Visibility</th>
                                    <th>Avg_Wind_Speed</th>   
                                    <th>Max_Wind_Speed</th>
                                </tr>
    <?php
                            while($rows=$query_run->fetch_assoc())
                            {   
    ?>                          
                                <tr>
                                    <td><?php echo $rows["YEAR"];  ?> </td>
                                    <td><?php echo $rows["MONTH"];  ?> </td>
                                    <td><?php echo $rows["VISIBILITY"];  ?> </td>
                                    <td><?php echo $rows["AVG_WIND_SPEED"];  ?> </td>
                                    <td><?php echo $rows["MAX_WIND_SPEED"];  ?> </td>
                                </tr>
    <?php
                            }
    ?>
                            </table>
    <?php
                            break;
                        default:
                            echo " ";
    
                    }
                }
                else
                {
    ?>
                    <style>
                        table
                        {
                            width: 900px;
                            margin: auto;
                            table-layout: fixed;
                            text-align: center;
                            font-family: sans-serif;
                            border: 1px black;
                            border-collapse: collapse;
                            color: #fff;
                        }
                        table, th, td 
                        {
                            border: 2px solid black;
                            border-collapse: collapse;
                            padding: 10px;
                            font-size: 15px;
                            background: rgba(0, 0, 0, 0.30);
                            color: goldenrod;
                        }
                    </style>
                    <table>
                        <tr>
                            <th> Year</th>
                            <th> Month</th>
                            <th> <?php echo $record ?> </th>
                        </tr>
    <?php
                    while($rows=$query_run->fetch_assoc())
                    {
    ?>
                        <tr>
                            <td><?php echo $rows["YEAR"];  ?> </td>
                            <td><?php echo $rows["MONTH"];  ?> </td>
                            <td><?php echo $rows["$record"];  ?> </td>
                        </tr>
    <?php
                    }
    ?>
                    </table>
    <?php
                }
            }
        }
    ?>
    <br><br>
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