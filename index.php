<?php
	session_start();
	 require_once('dbconfig/config.php');
	//phpinfo();
?>
<html>  
 <head>
    <meta charset="utf-8">
    <title>Weather records website</title>
    <link rel="stylesheet" type="text/css"  href="css/style.css">    
 </head>
<body>
   <header>
       <div class="main">
       <div class="logo">
           <img src="logo.png">
       </div>
       <ul>
           <li class="active"><a href="#">Home</a></li>
            <li><a href="about.html">About</a></li>
             <li><a href="archive.html">Archives</a></li>
             <li><a href="login.php">Login</a></li>
       </ul>
      </div>
      
      <div class="title">
          <h1>*Local Weather Records</h1>
      </div>
      
      <div class="desc">
          <h1>Welcome to BreezyCloud, a weather enthusiast's paradise.<br> <br>
              Click on the widget above for an expanded forecast.<br> <br>
              Login to Retrieve past data, enter new data and analyze trends, all in an integrated environment. It's a breeze, really!
              </h1>
      </div>
      
      <div class="button">
          <a href="https://blazepress.com/2015/01/18-insane-unusual-weather-phenomenas-actually-real/" target="_blank" class="btn">Interesting Weather Phenomenon</a>
      </div>
     <a class="weatherwidget-io" href="https://forecast7.com/en/12d9777d59/bengaluru/" data-label_1="BENGALURU" data-label_2="WEATHER" data-font="Times New Roman" data-icons="Climacons Animated" data-theme="sky" data-basecolor="rgba(2, 13, 3, 0.93)" data-textcolor="#FFD700" data-highcolor="rgba(255,0,0,1)" data-lowcolor="rgba(16, 241, 214, 0.81)" >BENGALURU WEATHER</a>
<script>
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
</script>
    
</header>
       
</body> 
</html>