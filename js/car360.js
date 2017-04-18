(function(){
    "use strict";
    console.log("scipt loaded");
    
    var car1 = document.querySelector("#blueCAR");
     var car2 = document.querySelector("#redCAR");
    var car3 = document.querySelector("#blackCAR");
    var car4 = document.querySelector("#greyCAR");
     var h1 = document.querySelector("#btn1");
     var b1 = document.querySelector("#box1");
    var h2 = document.querySelector("#btn2");
     var b2 = document.querySelector("#box2");
    var h3 = document.querySelector("#btn3");
     var b3 = document.querySelector("#box3");
    console.log("var loaded");
    
   
    
    
    
   function changeBlue (){
       
     document.getElementById('imageCar').src="img/audi_PNG1742.png";
        
       
      } 
     function changeRed (){
       document.getElementById('imageCar').src="img/audi2.png";
        

    } 
    
   function changeBlack (){
        document.getElementById('imageCar').src="img/audi3.png";
    } 
    
    function changeGray (){
        
        document.getElementById('imageCar').src="img/audi4.png";

    } 
    function display1 (){b1.style.display = "block";} 
    function display1Out (){b1.style.display = "none";} 
    
     function display2 (){b2.style.display = "block";} 
    function display2Out (){b2.style.display = "none";} 
    
     function display3 (){b3.style.display = "block";} 
    function display3Out (){b3.style.display = "none";} 
    
    
    
    
    
    car1.addEventListener("click",changeBlue,false);
     car2.addEventListener("click",changeRed,false);
     car3.addEventListener("click",changeBlack,false);
      car4.addEventListener("click",changeGray,false);
    h1.addEventListener("mouseover",display1,false);
  h1.addEventListener("mouseout",display1Out,false);
    h2.addEventListener("mouseover",display2,false);
    h2.addEventListener("mouseout",display2Out,false);
    h3.addEventListener("mouseover",display3,false);
    h3.addEventListener("mouseout",display3Out,false);
   
     
    

})();
