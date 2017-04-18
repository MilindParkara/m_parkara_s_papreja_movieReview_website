
<?php
//search query
//refrence link
//http://stackoverflow.com/questions/41656638/mysql-php-search-query
    if($_GET['keyword'] && !empty($_GET['keyword']))
    {
        include 'phpscripts/connect.php';

        $keyword = $_GET['keyword']; //search through keyword
        $keyword="%$keyword%";  //fetching keywords
        $query = "SELECT movies_title from tbl_movies where movies_title like ?";
        //echo '$query'
        $statement = $link->prepare($query);
        //echo 'statment'
        $statement->bind_param('s',$keyword);
        $statement->execute();
        $statement->store_result();
        // store result to diplay
        if($statement->num_rows() == 0) // so if we have 0 records acc. to keyword display no records found
        {
            echo '<div id="item">Darn, we don\'t have that movie. No results found :(</div>';
            $statement->close(); //placing stat,ments
            $link->close();

        }
        else {
            $statement->bind_result($name);
            while ($statement->fetch()) //outputs the records
            {
                echo "<div id='item'>$name</div>"; //names
            };
            $statement->close();
            $link->close();
        };
    };
?>
