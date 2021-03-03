<?php
	session_start();
	require_once('dbconfig/config.php');
	//phpinfo();
    if(!empty($_SESSION['username']))
    {
?>
<html>
    <head>
        <title>Weather Trends</title>
        <link rel="stylesheet" type="text/css" href="css/trendstyle.css">
    </head>
     <!-- <?php include 'navbar.php';?> -->
    <body>
      
       <!-- <?php include 'navbar.php';?> -->
       <a href="homepage.php" class="gohome">Home</a>
       <a href="homepage.php" class="gohome1">Home</a>
        <div class="txt">
            <p><b>W</b>elcome to BreezyTrends. You will find 9 charts in the section below. Different data points and parameters have been used for plotting to maximize versatility.<br><br>The graphs are interactive. Simply hover your cursor over a bar/line/point in order to view a specific data point. Temperature, humidity and rainfall have been analyzed to an adequate depth.<br><br>*In order to read the charts clearly, please note that the title is located at the top of every chart. The titles and legends are stylized to <b>bold</b> text. </p>
        </div>
                
        <div class="excel_sheet">
         <iframe width="1413.2" height="437" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=1949474578&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="441.7500000000002" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=1358592235&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="554" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=1196655284&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="420" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=980039096&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="477.5" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=526924735&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="462.5" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=612368688&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="462.5" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=855858010&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="437" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=121672544&amp;format=interactive"></iframe>
         
         <iframe width="1413.2" height="441.75000000000045" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vTht1HW8RPHhtVIana1GO4zRtdkBuqMfohhavhLoR-kjOgakswfkEiaAyCLeWZLIw/pubchart?oid=1805839430&amp;format=interactive"></iframe>
        </div>
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