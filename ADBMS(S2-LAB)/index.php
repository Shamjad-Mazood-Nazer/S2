<html>
	<head>
		<title>MyForm</title>
	</head>
	<body color="black">
		<center>
			<font size="10px" color="gold">FILL THE FORM BELOW!<br><br></font>
			<table border="0">
				<form name="MyForm" action="#" method="POST">
					<tr>
						<td>Employ-ID :</td>
						<td>
							<input type="number" name="empid" placeholder="Enter Employee ID!">
						</td>
					</tr>
					<tr>
						<td>Emp Code :</td>
						<td>
							<input type="text" name="empcode" placeholder="Enter Employee Code!">
						</td>
					</tr>
					<tr>
						<td>Employee Name :</td>
						<td>
							<input type="text" name="name" placeholder="Enter Employee Name!">
						</td>
					</tr>
					<tr>
						<td>Salary :</td>
						<td>
							<input type="number" name="salary" placeholder="Enter Salary!">
						</td>
					</tr>
					<tr>
						<td colspan = "2" align=  "center">
							<input type = "SUBMIT" name = "submit" value = "INSERT!">
						</td>
					</tr>
				</form>
			</table>
		</center>
	</body>
</html>

<?php
	$con=new MongoDB\Driver\Manager('mongodb://localhost:27017');
	if($con===false)
			echo "Can't Connect at this Moment! Error(404)";
	if(isset($_POST['submit']))
	{
		$empid = $_POST['empid'];
		$empcode = $_POST['empcode'];
		$name = $_POST['name'];
		$salary = $_POST['salary'];
		global $con;
		$writer = new MongoDB\Driver\BulkWrite;
		$writer->insert(["_id"=>$empid, "empcode"=>$empcode, "name"=>$name, "salary"=>$salary]);
		$con->executeBulkWrite('QUE2.Data',$writer);
		header('location:success.html');
		die();
	}
?>