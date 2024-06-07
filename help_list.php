<?php
session_start();
if (!isset($_SESSION['id'])){
	header("location:login.html");
}
else
{
	$userid=$_SESSION['id'];
	// $username1=$_SESSION['adname'];
	$alusername=$_SESSION['alname'];
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/forum_list.css" />
<title>Help</title>
<?php 
include_once"connect_database.php";
if (strchr("$userid","AD")==true)
	{
		include_once"setting/adminhelplist_navigation.php";
	}
	else
	{	
		include_once"setting/alumnihelplist_navigation.php";
	}
?>
</head>

<body>
<br /><br /><br />
<div align="center">
<table cellspacing="10" class="tb1">
<th class="th1" >Help</th>
<?php
	$sql = "SELECT * FROM helpdata";
	$result = $conn->query($sql);
	while($row = $result->fetch_assoc()) 
	{
        echo "<tr>";
		echo "<td class=td1><span class=sp3>#".$row["help_id"]."&nbsp;".$row["help_title"]."</span>";
		echo "<br /><br /><span class=sp2>".$row["help_content"]."</span>";
		echo "<br /><br /><span class=sp1> | Author: ".$row["help_author"]." | Time: ".$row["help_time"]."</span></td></tr>";
		// echo "<tr><td class=td3><br /> | <a class=a1 href=#replyhere>reply</a> | <td></tr>";
    }
?>
</table><br /><br />
</body>
</html>