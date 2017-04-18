

	var logo = document.querySelector("#logo");
	console.log("logo fetch");
	var photo2 = document.querySelector(".tagLine");
	var btn1 = document.querySelector("#btn01");
	var btn2 = document.querySelector("#btn02");
	console.log("photo fetch");
	var tl = new TimelineLite();
	
	
	function init() {
	tl.to(logo,1.5,{top:"12vw",opacity:1,delay:1});
	tl.to(photo2,0.5,{top:"12vw",opacity:1});
	tl.to(btn1,0.5,{left:"0px",opacity:1});
	tl.to(btn2,0.5,{left:"0px",opacity:1});
	 
	}
	
	function init2() {

}

window.addEventListener("load", init, false);
window.addEventListener("load", init2, false);

// JavaScript Document