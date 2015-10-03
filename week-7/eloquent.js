// Did you learn anything new about JavaScript or programming in general?
// Yes. I learned about the idea that a program can be constructed in significantly different ways while still achieving the same output.

// Are there any concepts you feel uncomfortable with?
// No.

// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// Difference:
// In Ruby, 0 evaluates to truthy; in Javascript, 0 evaluates to falsy.
// In Javascript, a string containing solely of number can be coerced into a numeric when used in subtraction operation with another numeric. However, in addition, a numeric in String form will be joined with another numeric and output a concatenated String. In Ruby, numeric in string form cannot be joined or calculated directly with a numeric. 
//Similarity:
// In both languages string are represented in pairing quotation marks.
// In both languages special characters in strings are escaped using backslash.

// What is an expression?
// Code that produces a value.

// What is the purpose of semicolons in JavaScript? Are they always required?
// Semicolons separate one command from another. It is not always required but always recommended.

// What causes a variable to return undefined?
// When a variable is declared but not defined.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// It outputs to browser console in a way similar to p in Ruby.


// Describe while and for loops
// while statements are included within a pair of curly braces, and there is no end key phrase.
// for loop includes three specifications that specify a initial counter variable, condition that needs to be checked, and command that needs to be executed after every time statements inside the loop are executed.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// in Javascript, for loop and while loop do not have to include statements in braces if there is only one line of statement, which is different in Ruby.
// Javascript has ++ and --

// What are the differences between local and global variables in JavaScript?
// local variables can only be accessed inside its containing object or method. Global variable can be accessed in any method within the object/class.

// When should you use functions?
// When you need to reuse a block of function or want to create a local scope in order to avoid naming conflict.

// What is a function declaration?
// A function declaration is a another way to declare a function, which can be accessed anywhere in the class. 

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// bracket notation can be used to look up property whose name needs to be looked up from external information. Dot notation can be used to directly access such information.

// What is a JavaScript object with a name and value property similar to in Ruby?
// A hash.

// What are the biggest similarities and differences between JavaScript and Ruby?
// The biggest similarity is that both languages have the same basic variable types including integer, string, floate, and boolean. The biggest difference is that Ruby is more strongly typed than Javascript.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// No.

// How do you feel about diving into JavaScript after reading these chapters?
// I feel comfortable.


// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var greeting="hello world";
console.log(greeting);

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
prompt("What's your favorite food?");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
Looping a Triangle 
for(var i=1; i<8;i++){
	var temp=i;
	while(temp>0){
		console.log("#");
		temp--;
	}
	console.log("\n");
}


// Functions

// Complete the `minimum` exercise.
function min(first,second){
	if first<second{
		return first;
	}else{
		return second;
	}
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me={
	name:"zino hu",
	age:22,
	"favorite food":["salad","lemonade","fruit"],
	quirk:undefined
};