<?php
	require_once('dbconfig/config.php');
	//phpinfo();'
    if(!empty($_SESSION['username']))
    {
?>
<head> 
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<div class="menu-bar">
        <ul>
            <li><i class="fa fa-home"></i><a href="homepage.php">Home</a></li>
            <li><i class="fa fa-arrow-up"></i><a href="#">Insert</a>
                <div class="sub-menu-1">
                    <ul>
                        <li class="hover-me"><a href="#">Temperature</a>

                            <div class="sub-menu-2">
                                <ul>
                                    <li><a href="insert_records_t.php">Data</a></li>
                                    <li><a href="insert_records_tr.php">Records</a></li>
                                </ul>
                            </div>
                        </li>


                        <li class="hover-me"><a href="#">Rainfall</a>
                            <div class="sub-menu-2">
                                <ul>
                                    <li><a href="insert_records_r.php">Data</a></li>
                                    <li><a href="insert_records_rr.php">Records</a></li>
                                </ul>
                            </div>
                        </li>



                        <li class="hover-me"><a href="#">External Conditions</a>
                                <div class="sub-menu-2">
                                <ul>
                                    <li><a href="insert_records_ec.php">Data</a></li>
                                    <li><a href="insert_records_ecr.php">Records</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul> 
                </div>
            </li>
            
            
            <li><i class="fa fa-line-chart"></i><a href="trends.php">Trends</a></li>
            <li><i class="fa fa-search-plus"></i><a href="#">View</a>
                <div class="sub-menu-1">
                    <ul>
                        <li><a href="view_records.php">Records</a></li>
                        <li><a href="view_deleted_records.php">Deleted Records</a></li>
                    </ul>
                </div>
            </li>
            <li><i class="fa fa-trash"></i><a href="adminpg_dr.php">Delete</a></li>
            <li><i class="fa fa-exchange"></i><a href="adminpg_mr.php">Modify</a></li>
            <form action="homepage.php" method="post">
                <li><i class="fa fa-sign-out"></i><button id="btn" name="logout" type="submit">Logout</button></li>
            </form>
        </ul>
</div>
<?php
        if(isset($_POST['logout']))
        {
            echo '<script>window.location.href="index.php";</script>';
            unset($_SESSION['username']);
            session_destroy();
            exit;
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