<?php

	ini_set('display_errors',1);
    error_reporting(E_ALL);

	   require_once('admin/phpscripts/init.php');

	   if(isset($_GET['filter'])) {
		          $tbl1 = "tbl_movies";
		          $tbl2 = "tbl_cat";
		          $tbl3 = "tbl_l_mc";
		          $col1 = "movies_id";
		          $col2 = "cat_id";
		          $col3 = "cat_name";
		          $filter = $_GET['filter'];
		          $getMovies = filterType($tbl1, $tbl2, $tbl3, $col1, $col2, $col3, $filter);
	   }else{
		          $tbl = "tbl_movies";
		          $getMovies = getAll($tbl);
	   }

?>

<!doctype html>
<html>
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="">
      <title>Bollywood Movies</title>
      <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

      <link href="css/main2.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="css/foundation.css" />
      <link rel="stylesheet" href="css/app_start.css" />
      <link rel="stylesheet" href="css/menu.css" />
      <script src="greensock/src/minified/TweenMax.min.js"></script>
      <script src="js/TweenMax.min.js"></script>
      <link rel="stylesheet" href="css/menu.css" />
</head>
<body>

<!-- ========================================================
                      Header Starts Here
   ======================================================== */ -->

  <header id="menuBg"><h2 class="hidden">Audi Nav bar</h2> 
      <div data-hide-for="large" data-responsive-toggle="main-menu" class="title-bar">
          <button data-toggle="" type="button" class="menu-icon float-right"></button>
      </div>
      
      <nav id="main-menu" class="row"><h2 class="hidden">Main Navigation</h2> 
          <ul  id="mainNav" class="small-12 medium-12 large-12 list-unstyled">
             <li><a id="1" class="movieType" href="index.php?filter=action">Action</a></li>
				     <li><a id="2" class="movieType" href="index.php?filter=comedy">Comedy</a></li>
				     <li><a id="3" class="movieType" href="index.php?filter=family">Family</a></li>
				     <li><a  id="4" class="movieType" href="index.php?filter=horror">Horror</a></li>
				     <li><a id="5" href="index.php">All</a></li>  
          </ul>
      </nav>

  </header>
   <!-- ========================================================
                      Header Ends Here
   ======================================================== */ -->

   <!-- ========================================================
                     Search Box
   ======================================================== */ -->


<section class="row"><h2 class="hidden">Movie Search area</h2>
    <div class="large-8 large-offset-2 columns">
        <div class="button_box2">
            <form class="form-wrapper-2 cf" style="padding-top: 1rem;padding-left: 2rem;padding-right: 2rem;padding-bottom: 0rem;">
                <input type="search" name="keyword" placeholder="Search Movies" id="searchbox" required>
                <button type="submit">Search</button>
                <div id="results" class="displayResult1" style="background-color: white;width: 19rem;font-family: sans-serif;font-style: italic;text-align: left;text-transform: capitalize;text-shadow: brown;letter-spacing: 1px;">
                  
                </div>
            </form>
        </div>
    </div>
</section>

   <!-- ========================================================
                       Search Box
   ======================================================== */ -->


<!--<div class="box">
	<a class="button" href="#popup1">Let me Pop up</a>
</div> -->
<div id="popup1" class="overlay">
      <div class="popup">
          <h2>Watch Movie Trailer</h2>
          <a class="close" href="#">&times;</a>
          <div class="content">
              <section class="row text-center vidCon">
                    <div class="container text-center">
                    <h2 class="hidden"> Media Player </h2>
                          <div id="mediaPlayer" class="col-xs-12 col-md-12">
                                <video controls id="mainVideo" >
                                    <source src="images/trailers/meatballs.mp4" type="video/mp4">
                                    Your browser does not support Video. Please consider using Chrome or Firefox.
                                </video>
                                <div id='mediaControls' class="col-xs-12 col-md-12">
                                <progress id='progress-bar' max='100' value='0'>0% played</progress> <br>
                                 </div> <!--end media controls-->
                          </div><!--end media player-->
            </section>
            <form action="/action_page.php" id="usrform">
                  Give Your Comments: 
                  <input type="text" name="usrname">
                  <input type="submit">
            </form>
        </div>
      </div>
    </div>



<div class="row small-up-2 large-up-5">

<?php
  if(!is_string($getMovies)){
    while($row = mysqli_fetch_array($getMovies)){
      echo "<div id=\"moviesCon\" class=\"column productBG\">
          <a href=\"#popup1\"><img src=\"images/{$row['movies_thumb']}\" alt=\"{$row['movies_title']}\" id=\"{$row['movies_id']}\" class=\"thumbnail\"></a>
          <h6>{$row['movies_title']}</h6>
          <p>{$row['movies_year']}</p><br>
          </div>";
          }
          }else{
          echo "<p>{$getMovies}</p>";
          }
?>
</div>
</div>
</div>


<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
function saveToDatabase(comment)
    {
        var select = comment;
        select = $(this).serialize();
        $('#comment').live("commentarea", function ()
        {
            // POST to database
            $.ajax
            ({
                type: 'POST',
                url: 'index.php',
                data:{comment:comment}
            }).then(function(data){alert(data)});
        });
    }

$(document).ready(function() {
$('#comment').keyup(function(e)
    {
        if(e.keyCode == 13)
        {
        var comment = $('#comment').val()
				var date = $('#date').val()
        var sid = $('#sid').val()
            if(comment == "")
            {
                alert("Please write something in comment.");
            }
            else
            {
                $("#commentbox").append("<div class=\'commentarea\'>"+comment+"<br>"+date+"</div>");
                $.post("index.php", {sid:sid,comment:comment,date:date},function(data)
                {
                })
                $('#comment').val("");
            }
        }
    });
});
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#searchbox").on('keyup',function () {
            var key = $(this).val();

            $.ajax({
                url:'admin/searchQuery.php',
                type:'GET',
                data:'keyword='+key,
                beforeSend:function () {
                    $("#results").slideUp('fast');
                },
                success:function (data) {
                    $("#results").html(data);
                    $("#results").slideDown('fast');
                }
            });
        });
    });
</script>
<script type="text/javascript">



</script>




 

      <script src="js/vendor/jquery.min.js"></script>
      <script src="js/vendor/what-input.min.js"></script>
      <script src="js/foundation.min.js"></script>
      <script src="js/app.js"></script>
      <script src="js/main.js"></script>
      <script src="js/vid.js."></script>
    
    
    
    
    


</body>
</html>
