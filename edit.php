<?php
	session_start();
?>
<!doctype html>
<html lang="se">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">  
	<title>Redigera</title>
	<link href="https://fonts.googleapis.com/css?family=Merriweather|Merriweather+Sans" rel="stylesheet"> 
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<nav class="navbar navbar-primary navbar-expand-lg bg-light border border-dark">

	<a class="btn btn-dark mx-2 py-1" href="index.php">Hem</a>
	<a class="btn btn-dark mx-2 py-1" href="play.php?page=1">Spela</a>
	<a class="btn btn-dark mx-2 py-1" href="edit.php">Redigera</a>
</nav>	
<main class="container-fluid text-center">
	<section>
		<h1>Redigera</h1>

		<table class="editTable">
			<tr>
					<th>ID</th>
					<th>Text</th>
					<th>Place</th>
					<th></th>
			</tr>
			
		
<?php
// TODO protect with your login
// add, edit, delete pages & events
// skriv ut en lista över sidor

	include_once 'include/dbinfo.php';
	$dbh = new PDO('mysql:host=localhost;dbname=latriviatarp;charset=utf8mb4', $dbuser, $dbpass);
	if(isset($_GET['delete'])) {
		$filteredId = filter_input(INPUT_GET, "delete", FILTER_VALIDATE_INT);
		$stmt = $dbh->prepare("DELETE FROM story WHERE id = :id");
		$stmt->bindParam(':id', $filteredId);
		$stmt->execute();
		echo "deleted id: " . $filteredId;
	}

	$stmt = $dbh->prepare("SELECT * FROM story");
	$stmt->execute();

	$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
	foreach ($row as $value) {
		echo "<div class='container-fluid text-center'<tr>";
		echo "<div class='container-fluid text-center'<td>" . $value['id'] . "</td>";
		echo "<div class='container-fluid text-center'<td>" . substr($value['text'], 0, 40) . "...</td>";
		echo "<div class='container-fluid text-center'<td>" . $value['place'] . "</td>";
		echo "<div class='container-fluid text-center'<td><a href=\"edit.php?edit=" . $value['id'] . "\"><i class=\"material-icons m-center\">edit</i></a>";
		echo "<div class='container-fluid text-center'<a href=\"edit.php?delete=" . $value['id'] . "\"><i class=\"material-icons m-center\">delete_forever</i></a></td>";
		echo "<div class='container-fluid text-center'</tr>";
	}

?>
	</table>	
	</section>
	<section class="forms">

<?php
	echo "<div class='container-fluid text-center'<form action=\"edit.php\" method=\"post\">";
	echo "<div class='container-fluid text-center'<label for=\"text\">Story</label>";
	echo "<div class='container-fluid text-center'<textarea name=\"text\" id=\"text\" rows=\"5\" cols=\"50\">";
	if(isset($_GET['edit'])) {
		$filteredId = filter_input(INPUT_GET, "edit", FILTER_VALIDATE_INT);
		$stmt = $dbh->prepare("SELECT * FROM story WHERE id = :id");
		$stmt->bindParam(':id', $filteredId);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);
		echo $row['text'];
	}
	echo "<div class='container-fluid text-center'</textarea>";
	echo "<div class='container-fluid text-center'<label for=\"place\">Place</label>";
	if(isset($_GET['edit'])) {
		echo "<div class='container-fluid text-center'<input type=\"text\" name=\"place\" id=\"place\" value=\"" . $row['place'] . "\">";	
		echo "<div class='container-fluid text-center'<input type=\"hidden\" name=\"id\" id=\"id\" value=\"" . $row['id'] . "\">";	
		echo "<div class='container-fluid text-center'<input type=\"submit\" name=\"update\" id=\"update\" value=\"Uppdatera\">";		
	}
	else {
		echo "<div class='container-fluid text-center'<input type=\"text\" name=\"place\" id=\"place\">";
		echo "<div class='container-fluid text-center'<input type=\"submit\" name=\"add\" id=\"add\" value=\"Lägg till\">";
	}
	echo "<div class='container-fluid text-center'</form>";
	echo "<div class='container-fluid text-center'</section>";
	if(isset($_POST['add'])) {
		$filteredText = filter_input(INPUT_POST, "text", FILTER_SANITIZE_SPECIAL_CHARS);
		$filteredPlace = filter_input(INPUT_POST, "place", FILTER_SANITIZE_SPECIAL_CHARS);
		$stmt = $dbh->prepare("INSERT INTO story (text, place) VALUES (:text, :place)");
		$stmt->bindParam(':text', $filteredText);
		$stmt->bindParam(':place', $filteredPlace);
		$stmt->execute();
		header('location: edit.php');
	}
	elseif(isset($_POST['update'])) {
		$filteredText= filter_input(INPUT_POST, "text", FILTER_SANITIZE_SPECIAL_CHARS);
		$filteredPlace = filter_input(INPUT_POST, "place", FILTER_SANITIZE_SPECIAL_CHARS);
		$filteredId = filter_input(INPUT_POST, "id", FILTER_VALIDATE_INT);
		$stmt = $dbh->prepare("UPDATE story SET text = :text, place = :place WHERE id = :id");
		$stmt->bindParam(':text', $filteredText);
		$stmt->bindParam(':place', $filteredPlace);
		$stmt->bindParam(':id', $filteredId);
		$stmt->execute();
		header('location: edit.php');
	}
?>
	<section>
<?php
	
	if(isset($_GET['edit'])) {
		$filteredId = filter_input(INPUT_GET, "edit", FILTER_VALIDATE_INT);
		$stmt = $dbh->prepare("SELECT * FROM storylinks WHERE storyid = :id");
		$stmt->bindParam(':id', $filteredId);
		$stmt->execute();
		$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
		foreach ($row as $value) {
			echo "<div class='container-fluid text-center'<pre>" . print_r($value,1) . "</pre></div>";
		}
	}
?>	
	</section>

</main>
<script src="js/navbar.js"></script>
</body>
</html>