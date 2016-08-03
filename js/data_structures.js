var colors = ['blue', 'green', 'red', 'purple'];

var names = ['Dan', 'Jake', 'Batman', 'Robin'];


console.log(names);
console.log(colors);


names.push('Ed');

colors.push('fucia');

console.log(names);
console.log(colors);

var horses = {};

for (var i = 0; i < colors.length; i++){
  var horseName = names[i];
  var horseColor = colors[i];
  horses[horseName] = horseColor;
}

console.log(horses);


function Car(make, model, color){
  console.log("Our new car:", this);
  
  this.make = make;
  this.model = model;
  this.color = color;
  
  this.honk = function(int) {  for (var i = 0; i < int; i++){
                                console.log("BEEP!")
                            }};
  
}

console.log("------------");
var car1 = new Car("Nissan", "Altima", "Smoke Grey");
console.log(car1);
car1.honk(3);

console.log("------------");
var car2 = new Car("Subaru", "Impreza", "Dark Blue");
console.log(car2);
car2.honk(5);