// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: create a game where people can cheat on others. 
// Overall mission:create person class and method where they can fall in love with each other and maintain love index.
// Goals: Have one person successfully cheats on his love.
// Characters: john, emily, kathy
// Objects: john, emily, kathy
// Functions:flirt, date, check

// Pseudocode
//person class should have properties: firstname, love, and love index. And three methods:
//flirt method should allow two people to define each other as their love and initialize their love index to zero. 
//date method should increase the love index of the two people by ten.
//check method should print out a person's name, love, and love index.
//

// Initial Code
// var Person=function(firstName){
// 	this.firstName=firstName;
// 	this.love=undefined;
// 	this.loveIndex=undefined;
// };

// Person.prototype.flirt=function(target){
// 	this.love=target;
// 	this.loveIndex=0;
// 	target.love=this;
// 	target.loveIndex=0;
// 	console.log("Hey,"+this.firstName+"has a crush on "+this.love.firstName+", and they are in love.");
// };
// Person.prototype.date=function(target){
// 	this.loveIndex+=10;
// 	target.loveIndex+=10;
// 	console.log("Happy date! "+this.firstName+" has a love level of "+this.loveIndex+"; "+target.firstName+" has a love level of "+target.loveIndex);
// }
// Person.prototype.check=function(){
// 	console.log("This is "+this.firstName+", and love target is "+this.love.firstName+", and the love index is "+this.loveIndex);
// }

// Refactored Code
var Person=function(firstName){
	this.firstName=firstName;
	this.love=undefined;
	this.loveIndex=undefined;
};

Person.prototype.flirt=function(target){
	this.love=target;
	this.loveIndex=0;
	target.love=this;
	target.loveIndex=0;
	console.log("Hey,"+this.firstName+"has a crush on "+this.love.firstName+", and they are in love.");
};
Person.prototype.date=function(target){
	this.loveIndex+=10;
	target.loveIndex+=10;
	console.log("Happy date! "+this.firstName+" has a love level of "+this.loveIndex+"; "+target.firstName+" has a love level of "+target.loveIndex);
}
Person.prototype.check=function(){
	console.log("This is "+this.firstName+", and love target is "+this.love.firstName+", and the love index is "+this.loveIndex);
}

var john=new Person("John");
var emily=new Person("Emily");
var kathy=new Person("Kathy");

john.flirt(emily);
john.date(emily);
john.date(emily);
john.flirt(kathy);
john.check();
emily.check();
kathy.check();

// Reflection
//
//What was the most difficult part of this challenge?
// n/a

// What did you learn about creating objects and functions that interact with one another?
// I learned that the "class" concept can be created by using function and prototype methods.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// No.

// How can you access and manipulate properties of objects?
// By using the dot notation.
//