// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Ian:
// This challenge took me [1] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}


var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// 1.
//   CREATE a function called tally that takes an object of objects as an argument
//   COUNT each time a given name is voted for a given position
//   INSERT those tallies into voteCount

// 2.

// __________________________________________
// Initial Solution

// function winner() {
//   var leader;
//   var highestCount=0;
//   for (var prop in voteCount.president) {
//     if (voteCount.president[prop]>highestCount) {
//       highestCount=voteCount.president[prop];
//       leader=prop;
//     } //if
//   }; //for
//   officers.president=leader;
  
//   //VP
//   highestCount=0;
//   for (var prop in voteCount.vicePresident) {
//     if (voteCount.vicePresident[prop]>highestCount) {
//       highestCount=voteCount.vicePresident[prop];
//       leader=prop;
//     } //if
//   }; //for
//   officers.vicePresident=leader;
  
//   //secretary
//   highestCount=0;
//   for (var prop in voteCount.secretary) {
//     if (voteCount.secretary[prop]>highestCount) {
//       highestCount=voteCount.secretary[prop];
//       leader=prop;
//     } //if
//   }; //for
//   officers.secretary=leader;
  
//   //Treasurer
//   highestCount=0;
//   for (var prop in voteCount.treasurer) {
//     if (voteCount.treasurer[prop]>highestCount) {
//       highestCount=voteCount.treasurer[prop];
//       leader=prop;
//     } //if
//   }; //for
//   officers.treasurer=leader;
// }; //function



// function tally() {
// //     is "votes[i][0]" present in voteCount[0] ?
//   //president
//   for (var prop in votes) {
//     if(voteCount.president.hasOwnProperty(votes[prop]["president"])){
//       voteCount.president[votes[prop]["president"]]++;
//     }
//     else{
//       voteCount.president[votes[prop]["president"]]=1;
//     }
//   };//for 
  
//   //vp
//   for (var prop in votes) {
//     if(voteCount.vicePresident.hasOwnProperty(votes[prop]["vicePresident"])){
//       voteCount.vicePresident[votes[prop]["vicePresident"]]++;
//     }
//     else{
//       voteCount.vicePresident[votes[prop]["vicePresident"]]=1;
//     }
//   };//for 
  
//   //secretary
//   for (var prop in votes) {
//     if(voteCount.secretary.hasOwnProperty(votes[prop]["secretary"])){
//       voteCount.secretary[votes[prop]["secretary"]]++;
//     }
//     else{
//       voteCount.secretary[votes[prop]["secretary"]]=1;
//     }
//   };//for 
  
//   //treasurer
//   for (var prop in votes) {
//     if(voteCount.treasurer.hasOwnProperty(votes[prop]["treasurer"])){
//       voteCount.treasurer[votes[prop]["treasurer"]]++;
//     }
//     else{
//       voteCount.treasurer[votes[prop]["treasurer"]]=1;
//     }
//   };//for 
  
// };

// tally();

// // console.log(voteCount);

// winner()
// console.log(officers);

// __________________________________________
// Refactored Solution

function winner() {
  for (var position in officers){
    var leader;
    var highestCount=0;
    for (var prop in voteCount[position]) {
      if (voteCount[position][prop]>highestCount) {
        highestCount=voteCount[position][prop];
        leader=prop;
      } //if
    }; //for
    officers[position]=leader;
  };//master for
}; //function


function tally() {
  for (var position in voteCount){
//     is "votes[i][0]" present in voteCount[0] ?
  //president
    for (var prop in votes) {
      if(voteCount[position].hasOwnProperty(votes[prop][position])){
        voteCount[position][votes[prop][position]]++;
      }
      else{
        voteCount[position][votes[prop][position]]=1;
      }
    };//for 
  }; //for
}

tally();

// console.log(voteCount);

winner();
console.log(officers);




// __________________________________________
// Reflection






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)