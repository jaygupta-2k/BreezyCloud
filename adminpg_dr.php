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
<title>Admin Access</title>
<link rel="stylesheet" href="css/adminstyle.css">
</head>
<body>
	<div id="main-wrapper">
	<center><h2>Admin Access</h2></center>
			<div class="imgcontainer">
				<img src="avatar.png" alt="Avatar" class="avatar">
			</div>
		<form action="adminpg_dr.php" method="post">
		
			<div class="inner_container">
				<label><b>Password</b></label>
				<input type="password" placeholder="Enter Admin Password" name="password" required>
				<button class="login_button" name="login" type="submit">Login</button>
			</div>
            <br><br>
		</form>
		<?php
			if(isset($_POST['login']))
			{
				@$pass=$_POST['password'];
				if($pass=='dbms2019')
                    echo '<script>window.location.href="delete_records.php";</script>';
                else
                {
					echo '<script type="text/javascript">';
                    echo 'alert("Access denied.");';
                    echo 'window.location.href="homepage.php";';
                    echo '</script>';
                }
            }
		?>
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