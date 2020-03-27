function connectDb(){
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "dbname";

	$con = mysqli_connect($servername, $username, $password, $dbname);

	if(!$con){
		die("Connection failed: " . mysqli_conect_error());
	}

	return $con;
}

function closeDb($mysql){
	mysqli_close($mysql);
}

function getObjects(){
	$conn = connectDb();
	$sql = "SELECT name, unit, quantity, price, country FROM Fruit";
	$result = mysqli_query($con, $sql);
	closeDb($con)
	return $result;
}

<?php
	require_once "util.php";

	$result = getObjects();

	if(mysql_num_rows($result) > 0){
		while ($row = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			echo "<td>" . $row[""] . "<td>";
			echo "<td>" . $row[""] . "<td>";
			echo "<td>" . $row[""] . "<td>";
			echo "<td>" . $row[""] . "<td>";
			echo "<td>" . $row[""] . "<td>";
			echo "<tr>";
		}
	}
?>

