var heading = document.getElementById("heading");

heading.style.color='blue';

var newElement = document.createElement('strong');
newElement.innerHTML = 'whatever';
document.body.appendChild(newElement);


var var_class = document.getElementsByClassName('newclass');
for ( i = 0; i < var_class.length; i++) {
  var_class[i].style.backgroundColor = "red";
}

var button = document.getElementById('buttonid');

function Button() {
  var button = event.target;
  for ( i = 0; i < var_class.length; i++) {
    var_class[i].style.backgroundColor = "blue";
  }
}

button.addEventListener("click", Button);