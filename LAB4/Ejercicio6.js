// Creates a new list item when clicking on the "ADD TASK" button
function addTask() {
  //creates a <li> tag in which the input will be stored
  let li = document.createElement("li");
  //retrieves the text entered by the user
  let inputValue = document.getElementById("taskInput").value;
  let t = document.createTextNode(inputValue);
  li.appendChild(t);

  //if the placeholder is empty it reminds the user to write something
  if (inputValue === '') {
    alert("Enter a task first please :)");
  } else {
    document.getElementById("myTasks").appendChild(li);
  }
  //adds the task entered to the bottom of the list set in the html file
  document.getElementById("taskInput").value = "";

  //prints the close button in the right place
  let span = document.createElement("SPAN");
  let txt = document.createTextNode("x");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  //adds functionality to the close button append to each list item
  let close = document.getElementsByClassName("close");

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      let div = this.parentElement;
      div.style.display = "none";
    }
  }
    //crosses out the tasks when clicked on them
    let list = document.querySelector('ul');
    list.addEventListener('click', function(ev) {
        if (ev.target.tagName === 'LI') {
            ev.target.classList.add('checked');
        }
    });
}
