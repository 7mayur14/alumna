<?php
session_start();
if (!isset($_SESSION['id'])){
	header("location:login.html");
}
else
{
	$userid=$_SESSION['id'];
	$username1=$_SESSION['adname'];
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Delete job/Internship Post</title>
<link rel="stylesheet" href="css/delete_forum_post.css" />
<?php 
include_once"connect_database.php";
include_once"setting/admindeletejob_navigation.php"
?>
</head>

<body>
<br /><br />
<form method="post">
<?php
	$sql="SELECT job_title FROM jobsdata";
	$result=$conn->query($sql);
	echo "<table class=tb1 align=center>";
	echo "<tr>";
	echo "<td>";
	echo "<h2>Select Post: &nbsp;&nbsp;&nbsp;&nbsp;</h2>";
	echo "</td>";
	echo "<td>";
	echo "<select name='title'>";
	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc()) 
		{
			echo "<option value='".$row['job_title']."'>".$row['job_title']."</option>";
		}
	}
	echo "</select>";
	echo "</td>";
	echo "</tr>";
	echo "<tr>";
	echo "<td colspan=2 align=right><button class=bt1 type=submit formaction=delete_job_post.php>Refresh</button>
	&nbsp;&nbsp;&nbsp;&nbsp;<button class=bt1 type=submit name=search>Search</button></td>";
	echo "</tr>";
	echo "</table>";
?>
<br /><br />
<hr color="peru" size="3"/>
<br />
<h2 class="dh2">Search Result: </h2>
<br />
<?php
if(isset($_POST['search']))
{
	$title=$_POST['title'];
	$sql2="SELECT * FROM jobsdata WHERE job_title='$title'";
	$result2=$conn->query($sql2);
	echo "<table class=tb2 align=center cellspacing=10>";
	while($row = mysqli_fetch_assoc($result2))
	{
		echo "<tr><th class=th1>Post ID: </th><td class=td1>
		<input class=i1 type=text readonly=readonly name=jobid size=45 value='".$row['job_id']."'</td></tr>";
		echo "<tr><th class=th1>Post Title:  </th><td class=td1>".$row['job_title']."</td></tr>";
		echo "<tr><th class=th1>Post Author:  </th><td class=td1>".$row['job_author']."</td></tr>";
		echo "<tr><th class=th1>Post Content: </th><td class=td1> ".$row['job_content']."</td></tr>";
		echo "<tr><th class=th1>Post Tags:  </th><td class=td1>".$row['job_tags']."</td></tr>";
		echo "<tr><th class=th1>Post Time:  </th><td class=td1>".$row['job_time']."</td></tr>";
		echo "<tr><td colspan=2 align=right><button class=bt1 type=submit name=delete>Delete</button></td>";
	}
	echo "</table>";
}
?>
<?php
if(isset($_POST['delete']))
{
	$eforum_id=$_POST['jobid'];
	$sql3="DELETE FROM jobsdata WHERE job_id='$eforum_id'";
	$result3=$conn->query($sql3);
	if($result3==true)
	{
		echo "<script>alert('Delete job success.')</script>";
	}
	else
	{
		echo "<script>alert('Fail to delete job.')</script>";
	}
}
?>
</form>
<br /><br /><br /><br /><br /><br />
</body>
</html>