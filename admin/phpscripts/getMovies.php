<?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);
	require_once('connect.php');

	if(isset($_GET['srch'])) {
		$srch = $_GET['srch'];
		// Now we are writing query for searching movies name
		//http://stackoverflow.com/questions/41656638/mysql-php-search-query (Tutorial Link)
		$movieQuery = "SELECT movies_id, movies_title, movies_thumb, movies_year FROM tbl_movies WHERE movies_title LIKE '$srch%' ORDER BY movies_title ASC";
		$getMovies = mysqli_query($link, $movieQuery);
	}else{
		$movieQuery = "SELECT movies_id, movies_title, movies_thumb, movies_year FROM tbl_movies ORDER BY movies_title ASC";
		$getMovies = mysqli_query($link, $movieQuery);
	}

	$jsonResult = "[";
	while($movResult = mysqli_fetch_assoc($getMovies)) {
		$jsonResult .= json_encode($movResult).",";
	}

	$jsonResult .= "]";
	$jsonResult = substr_replace($jsonResult,'',-2,1);//subtract replace $jsonResult with nothing (''), starting from the end (0), move left 2 spaces and replace with 1 character
	echo $jsonResult;
?>