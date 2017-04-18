<?php
	
	function redirect_to($location) {
		if($location != NULL) {
			header("Location: {$location}");
			exit;
		}
	}

	function addMovie($fimg,$thumb,$title,$storyline,$runtime,$trailer,$price,$cat) {
		include('connect.php');
		$fimg = mysqli_real_escape_string($link, $fimg); //cleans the string and applies cancelling characters before storing entry in database. It's a safety measure

		if($_FILES['movie_fimg']['type'] == "image/jpg" || $_FILES['movie_fimg']['type'] == "image/jpeg") {
			$targetpath = "../images/{$fimg}";

			if(move_uploaded_file($_FILES['movie_fimg']['tmp_name'],$targetpath)) {
				$orig = "../images/".$fimg;
				$th_copy = "../images/".$thumb;

				if(!copy($orig,$th_copy)) {
					echo "Failed to copy...";
				}

				//$size = getimagesize($orig);
				//echo $size[0]." x ".$size[1]; //image size stored in array because it has 2 dimensions (width x height)
				
				$qstring = "INSERT INTO tbl_movies VALUES(NULL,'{$thumb}','{$fimg}','noBG.jpg','{$title}','{$year}','{$storyline}','{$runtime}','{$trailer}','{$price}')";
				
				$result = mysqli_query($link,$qstring);
				
				if($result==1) { //flag element
					
					$qstring2 = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
					$result2 = mysqli_query($link, $qstring2);
					
					$row = mysqli_fetch_array($result2);
					$lastID = $row['movies_id'];
					
					$qstring3 ="INSERT INTO tbl_l_mc VALUES(NULL, '{$lastID}','{$cat}')";   //declaring query
					$result3 = mysqli_query($link, $qstring3);    //running query
				}
				redirect_to("admin_index.php"); // redirecting 
		
		
		
			}
		}

		mysqli_close($link);
	}
	
?>