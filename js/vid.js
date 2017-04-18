// JavaScript Document
(function (){
	"use strict";
	
	var mediaPlayer = document.querySelector("video");
 var progressBar = document.querySelector('#progress-bar');
  var playPauseBtn = document.querySelector('#play-pause-button');
document.addEventListener("DOMContentLoaded", function() { initialiseMediaPlayer(); }, false);

function initialiseMediaPlayer() {      //hide default browser controls
	 var mediaPlayer = document.querySelector('#mainVideo');
	 mediaPlayer.controls = false;
}


// play and pause button //

function togglePlayPause() {
	 var btn = document.querySelector('#play-pause-button');

	 if (mediaPlayer.paused | mediaPlayer.ended) {    //when "play-pause-button" clicked,if the media player is paused or ended, make the button play the video
			btn.title = 'Pause';
			btn.innerHTML = 'Pause';
			btn.className = 'Pause';
			mediaPlayer.play();
	 }
	 else {                          //when clicked, if the media player is playing, pause it
			btn.title = 'Play';
			btn.innerHTML = 'Play';
			btn.className = 'Play';
			mediaPlayer.pause();
	 }
}


function changeButtonType(btn, value) {
	 btn.title = value;
	 btn.innerHTML = value;
	 btn.className = value;
}


// stop button //

function stopPlayer() {       //Stop-button will pause video and reset play-time to 0
	 mediaPlayer.pause();
	 mediaPlayer.currentTime = 0;
}

// change volume //
function changeVolume(direction) {
	 if (direction === '+') mediaPlayer.volume += mediaPlayer.volume == 1 ? 0 : 0.1;   //if the direction is +, make media player volume increase by .1
	 else mediaPlayer.volume -= (mediaPlayer.volume == 0 ? 0 : 0.1);   //or, if the direction is -, make media player volume decrease by .1
	 mediaPlayer.volume = parseFloat(mediaPlayer.volume).toFixed(1);
}

// mute and unmute sound //
function toggleMute() {
	 var btn = document.querySelector('#mute-button');       //player is not muted, button says "mute"
	 if (mediaPlayer.muted) {
			changeButtonType(btn, 'Mute');
			mediaPlayer.muted = false;
	 }
	 else {
			changeButtonType(btn, 'Unmute');    //player is muted, button says "unmute"
			mediaPlayer.muted = true;
	 }
}

// replay video //
function replayMedia() {         //reset media to beginning and play
		mediaPlayer.currentTime = 0;
	 resetPlayer();
	 mediaPlayer.play();
}

//make player time return to 0 //
function resetPlayer() {
	 mediaPlayer.currentTime = 0;
	 changeButtonType(playPauseBtn, 'Play');
}


// progress bar //

mediaPlayer.addEventListener('timeupdate', updateProgressBar, false);

function updateProgressBar() {
	 var progressBar = document.querySelector('#progress-bar');
	 var percentage = Math.floor((100 / mediaPlayer.duration) *
	 mediaPlayer.currentTime);
	 progressBar.value = percentage;
	 progressBar.innerHTML = percentage + '% played';
}

function resetPlayer() {    //when media is reset to 0, also make progress bar return to 0
	 progressBar.value = 0;
	 mediaPlayer.currentTime = 0;
	 changeButtonType(playPauseBtn, 'Play');
}





mediaPlayer.addEventListener('Play', function() {              // if video is playing, make sure the button says pause.
	 var btn = document.querySelector('#play-pause-button');
	 changeButtonType(btn, 'Pause');
}, false);

mediaPlayer.addEventListener('Pause', function() {              // If it is paused, make sure it says play //
	 var btn = document.querySelector('#play-pause-button');
	 changeButtonType(btn, 'Play');
}, false);



mediaPlayer.addEventListener('volumechange', function(e) {   //change volume for media player if A or B

	 var btn = document.querySelector('#mute-button');

	 if (mediaPlayer.muted) changeButtonType(btn, 'Unmute');  // A: if player is muted, have button say unmute //

	 else changeButtonType(btn, 'Mute');   //B: If volume is playing and greater than .1, have button say mute //
}, false);
})();