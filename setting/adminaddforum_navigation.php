<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Add forum Navigation Bar</title>
<link rel="stylesheet" href="css/header_navigationbar.css" />

<body bgcolor="cornsilk">
<div>
<img src="image/home header.png" width="100%" height="250px" />
</div>
<table class="table">
<tr>
<td>
<ul class="ul1">
	
    <div class="dropdown">
    <li class="li1"><a href="admin_homepage.php"><span class="span1">Home</span></a></li>
    </div>
    <div class="dropdown">
  	<li class="li1"><a href="#"><span class="span1">News</span></a></li>
    	<div class="dropdown-content">
    		<a href="announcement.php">Announcement Board</a>
    		<a href="events.php">Events</a>
   		</div>
    </div>
    <div class="dropdown">
  	<li class="li1 active"><a href="forum_list.php"><span class="span1">Discussion Forum</span></a></li>
    <div class="dropdown-content">
    		<a href="add_forum_post.php">Add New Forum Post</a>
            <a href="delete_forum_post.php">Delete Forum Post</a>
   		</div>
    </div>
	<li class="li1"><a href="job_list.php"><span class="span1">Opportunities</span></a></li>
      <div class="dropdown-content">
    		<a href="add_job_post.php">Add New Job/Internship Post</a>
            <a href="delete_job_post.php">Delete Job/Internship Post</a>
   		</div>
    </div>
	<div class="dropdown">
  	<li class="li1"><a href="eforum.php"><span class="span1">Search Alumni</span></a></li>
    </div>
    <div class="dropdown">
    <li class="li1"><a href="help_list.php"><span class="span1">Help</span></a></li>
		<div class="dropdown-content">
		<a href="add_help_post.php">Add New Help Post</a>
          <a href="delete_help_post.php">Delete Help Post</a>
   		</div>
    </div>
	<div class="dropdown">
	<li class="li1"><a href="manage_alumni.php"><span class="span1">Alumni</span></a></li>
	</div><li class="li2">
	<span class="span1"><?php
	echo "Welcome"." Admin  ".$username1;
	?></span>
    <li class="li2"><a href="logout.php"><span class="span1">Logout</span></a></li>
</ul>
</td>
</tr>
</table>

<button id="addforum_totop" onclick="topFunction()"><img src="image/top.jpg" width="50px" height="50px"/></button>
<script src="javascript/addforum_totop"></script>
</body>
</html>
