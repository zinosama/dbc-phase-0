// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:Awilda.

// Pseudocode
// turn input number into string
// if length of the string is shorter than 3, return the string
// if not:
// create an output array
// split the string into an input array
// go through the input array from back to front and unshift every value to the ouptut array:
// for every three values unshifted, if there is still remaining values to be unshifted, add a comma to the output array.
// join the output array into output string.
// return the output string. 



// Initial Solution
// function separateComma(input){
// 	if (input.toString().length<=3){
// 		console.log(input);
// 		return input;
// 	}else{
// 		var outputArray=[];
// 		inputArray=input.toString().split("");
// 		// console.log(inputArray.toString());
// 		var index=inputArray.length-1;
// 		var counter=0;
// 		while (index>=0){
// 			outputArray.unshift(inputArray[index]);
// 			index--;
// 			counter++;
// 			if ((counter%3==0)&&(counter!=0)&&(index>=0)){
// 				outputArray.unshift(",");
// 				// console.log("counter at:"+counter+";");
// 			}
// 		}
// 		var outputString=outputArray.join("");
// 		console.log(outputString);
// 		return outputString;
// 	}
// }
// separateComma(1245678);



// Refactored Solution
function separateComma(input){
	if (input.toString().length<=3){
		console.log(input);
		return input;
	}else{
		var outputArray=[];
		inputArray=input.toString().split("");
		// console.log(inputArray.toString());
		var index=inputArray.length-1;
		var counter=0;
		while (index>=0){
			outputArray.unshift(inputArray[index]);
			index--;
			counter++;
			if ((counter%3==0)&&(counter!=0)&&(index>=0)){
				outputArray.unshift(",");
				// console.log("counter at:"+counter+";");
			}
		}
		var outputString=outputArray.join("");
		console.log(outputString);
		return outputString;
	}
}
separateComma(1245678);

// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// No.

// What did you learn about iterating over arrays in JavaScript?
// It's basically the same with Ruby.

// What was different about solving this problem in JavaScript?
// I used basically the same approach.

// What built-in methods did you find to incorporate in your refactored solution?
// split, join, unshift, toString, and length.