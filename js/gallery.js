
// Get the modal
var modal = document.getElementById('myModal');
console.log("var mymodel");
// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
console.log("var myImg");
var modalImg = document.getElementById("img01");
console.log("var img");
var captionText = document.getElementById("caption");
console.log("caption");
img.onclick = function(){
    modal.style.display = "block";
    console.log("display block");
    modalImg.src = this.src;
     console.log("display srcImage");
    modalImg.alt = this.alt;
    console.log("this alt");
    captionText.innerHTML = this.alt;
    console.log("caption text");
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

 console.log("closeThis");
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}
