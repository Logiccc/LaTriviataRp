<?php
	session_start();
?>
<!doctype html>
<html lang="se">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">  
	<title>Pasta Alfredos Äventyr - Spela</title>
	<link href="https://fonts.googleapis.com/css?family=Merriweather|Merriweather+Sans" rel="stylesheet"> 
	<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<nav class="navbar navbar-primary navbar-expand-lg bg-light border border-dark">

	<a class="btn btn-dark mx-2 py-1" href="index.php">Hem</a>
	<a class="btn btn-dark mx-2 py-1" href="play.php?page=1">Spela</a>
	<a class="btn btn-dark mx-2 py-1" href="edit.php">Redigera</a>
</nav>	
<main class="content">
	<section>
		
<?php
	include_once 'include/dbinfo.php';

	// PDO

	$dbh = new PDO('mysql:host=localhost;dbname=latriviatarp;charset=utf8mb4', $dbuser, $dbpass);

	//echo "<pre>" . print_r($dbh,1) . "</pre>";

	if (isset($_GET['page'])) {
		// TODO load requested page from DB using GET
		// prio before session
		// set session to remember
		$filteredPage = filter_input(INPUT_GET, "page", FILTER_VALIDATE_INT);

		$stmt = $dbh->prepare("SELECT * FROM story WHERE id = :id");
		$stmt->bindParam(':id', $filteredPage);
		$stmt->execute();

		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		//echo "<pre>" . print_r($row,1) . "</pre>";
		echo "<div class='container-fluid'>
    				<div class='row text-center'>
    				<div class='col-3'>
    				</div>
        				<div class='col-6'>
							<p class='mt-3'>" . $row['text'] . "</p> 
						</div>
						<div class='col-3'>
						</div>
					</div>
			</div>";
		$stmt = $dbh->prepare("SELECT * FROM storylinks WHERE storyid = :id");
		$stmt->bindParam(':id', $filteredPage);
		$stmt->execute();

		$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
		/*
				div class='container-fluid'>
    			<div class='row'>
        		<div class='col'>
        */

		foreach ($row as $val) {
			echo "<div class='container-fluid'>
    			<div class='row'>
    			<div class='col-3'>
    			</div>
        		<div class='col-6 text-center'>
			<a class='btn mb-3 btn-outline-dark' href= \" ?page=" . $val['target'] . "\"> " . $val['text'] . "<br></a>
			</div>
			<div class='col-3'>
			</div>
			</div>
			</div>";

		}

		//echo "<pre>" . print_r($row,1) . "</pre>";

		//echo "<p>Requested page " . $filteredPage . "</p>";
	} elseif(isset($_SESSION['page'])) {
		// TODO load page from db
		// use for returning player / cookie
	} else {
		// TODO load start of story from DB
	}

?>
</section>
</main>
<script src="js/navbar.js"></script>
</body>
</html>