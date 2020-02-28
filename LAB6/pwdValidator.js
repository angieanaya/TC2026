function validatePswd(){
	
	let password = document.getElementById("password");
	let confirmation = document.getElementById("confirmation");

	let letter = document.getElementById("letter");
	let capital = document.getElementById("capital");
	let number = document.getElementById("number");
	let length = document.getElementById("length");

	let message = document.getElementById("confirmationMsg");

	let safe = "#66cc66";
	let notSafe = "#ff6666";

	if (password.value == confirmation.value) {
		confirmationMsg.innerHTML = "&#10004; Passwords match";
	} else {
		confirmationMsg.innerHTML = "&#9888; Passwords do not match";
	}

	let lowercase = /[a-z]/g;
	if (password.value.match(lowercase)) {
		letter.classList.remove("invalid");
		letter.classList.add("valid");
	} else {
		letter.classList.remove("valid");
		letter.classList.add("invalid");
	}

	let numbers = /[0-9]/g;
	if (password.value.match(numbers)) {
		number.classList.remove("invalid");
		number.classList.add("valid");
	} else {
		number.classList.remove("valid");
		number.classList.add("invalid");
	}

	let uppercase= /[A-Z]/g;
	if (password.value.match(uppercase)) {
		capital.classList.remove("invalid");
		capital.classList.add("valid");
	} else {
		capital.classList.remove("valid");
		capital.classList.add("invalid");
	}

	if (password.value.length>=8) {
		length.classList.remove("invalid");
		length.classList.add("valid");
	} else {
		length.classList.remove("valid");
		length.classList.add("invalid");
	}
}
/*PARA CAMPOS EN FORMAS APARECER DE MANERA DINÁMICA INFO EXTRA*/
function showRestrictions(){
		document.getElementById("restrictions").style.display = "block";
	}

function hideRestrcitions(){
		document.getElementById("restrictions").style.display = "none";
	}
/*CAMBIA EL ESTILO DE LAS LETRAS*/
function changeColor()
{
 element=document.getElementById("color");
 let newColor= "#EA526F";
 let newFont = "Baloo Da";
 element.style.color= newColor;
 element.style.fontFamily = newFont;
}

/*INCORPORACIÓN DE SETINTERVAL*/
let myClock = setInterval(myTimer, 1000);

function myTimer() {
  let clock = new Date();
  document.getElementById("demoInterval").innerHTML = clock.toLocaleTimeString();
}

/*INCORPORA DRAG AND DROP*/
function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  let data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
}
