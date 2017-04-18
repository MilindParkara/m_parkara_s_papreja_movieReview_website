(function() {
	"use strict";

//var catCon = document.querySelector("#categoryCon");
var cats = document.querySelectorAll('#categories li a');
var currentVid = 1;
var showCat;


//console.log('working');
//console.log(cats.length);

$('#moviesCon img').on('click', function() {
		currentVid = this.id;
   console.log(this.id);

$.getJSON('admin/ajaxQuery.php', {movies_id : currentVid}, function(data) {
	console.log(data);
	$('#mainVideo').attr('src', "images/trailers/" + data.movies_trailer);
});

});


$('#categoryCon ul li a').on('click', function() {
		showCat = this.id;
   //console.log(this.id);

$.getJSON('admin/filterQuery.php', {cat_id : showCat}, function(data) {
	console.log(data);
	//console.log(data.cat_id);
if(showCat == '1') {
console.log('Showing Action');      //this is where the ajax would filter the results
	}if(showCat == '2') {
console.log('Showing Comedy');   //it consoles the correct data from the database

	}if(showCat == '3') {
console.log('Showing Family'); //but we were unable to figure out how to get the results to display from a particular row without using php

	}if (showCat == '4') {
console.log('Showing Horror');
	}else if (showCat == '5') {
console.log('Showing All');
	}
});

});


//Tried to get the live search to work with ajax

    $('.search-box input[type="text"]').on("keyup input", function(){
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.getJSON("admin/ajaxSearch.php", {movies_title: inputVal}).done(function(data){
              	console.log(data);
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });


})();
