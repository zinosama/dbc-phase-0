// Release 1
function bulkup(array){
//   console.log("hello");
  for(var i = 0; i < array.length; i++ ){
    array[i]["win"] = function(){
      console.log(this.name + " won the " + this.event);
    }
  }
}

var inputArray=[{name:"john",event:"tennis"},{name:"Richard",event:"soccer"}];

bulkup(inputArray);
inputArray[1]["win"]();

//Release 2
function reverseString(inputString){
  return inputString.split("").reverse().join("");
}

console.log(reverseString("Hello World"));

//Release 3
function even(number){
    return number%2==0; 
}

var filered = [2, 4, 7, 6].filter(even);
console.log(filered.toString());

// Release 4
var Athlete =function(name, age, sport,quote){
  this.name=name;
  this.age=age;
  this.sport=sport;
  this.quote=quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// declaring function and assigning it to variables.

// What are constructor functions?
// Functions that define the class concept in Javascript.

// How are constructors different from Ruby classes (in your research)?
// Ruby constructors are called initialize and they assign values to instance variables that start with @; Javascript constructors using a capitlized object name and assign value to instance variables using this key word.
