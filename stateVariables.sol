// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// contract StateVariables {
//     string public myState;
//     uint256 public mynum;

//     string public defaultText = "Hey default text";
//     uint256 public defaultNum = 7;

//     bytes public defaultBytes = "hey Happy";

//     uint256[] public myNumber;

//     constructor(string memory _text, uint _num) {
//         myState = _text;
//         mynum = _num;
//     }
// }

// /////////////////////////////////////////////////////////////////

// contract LocalVariables {
//     uint256 public myNumber;

//     // function local() public pure returns(uint256) {
//     //     uint256 i = 567;
//     //     return i;
//     // }

//     function local()
//         public
//         returns (
//             address,
//             uint256,
//             uint256
//         )
//     {
//         uint256 i = 567;
//         myNumber = i;
//         i += 45;
//         address myAddress = address(1);
//         return (myAddress, myNumber, i);
//     }
// }

// //////////////////////////////////////////////////////
// contract GlobalVariables {
//     address public owner;
//     address public myBlockhash;
//     uint256 public difficulty;
//     uint256 public gasLimit;
//     uint256 public number;
//     uint256 public timestamp;
//     uint256 public value;
//     uint256 public nowOn;
//     address public origin;
//     uint256 public gasPrice;
//     uint256 public callData;

//     constructor() {
//         owner = msg.sender;
//         //By this you can see whos is the sender: Address of the sender

//         myBlockhash = block.coinbase;
//         difficulty = block.difficulty;
//         gasLimit = block.gaslimit;
//         number = block.number;
//         timestamp = block.timestamp;
//         gasPrice = tx.gasprice;
//         origin = tx.origin;
//     }
// }

// /////////////////////////////////////////////////////////////////////
// VIEW Keyword
// contract ViewKeyword {
//     uint256 num1 = 7;
//     uint256 num2 = 77;

//     // Using view to check state variables
//     // function getResults() public view returns (uint256, uint256) {
//     //     return (num1, num2);
//     // }

//     // to calculate
//     // WIth view you can see or read the state variables not alter their values
//     function getResult() public view returns (uint256 product, uint256 total) {
//         product = num1 * num2;
//         total = num1 + num2;

//         // num1 += 9; //THis will give error
//     }
// }

// ///////////////////////////////////////////////////////////////////
// PURE Keyword
// contract PureKeyword {
//     uint256 num1 = 7;
//     uint256 num2 = 77;

//     function getData() public pure returns (uint256, uint256) {
//         // return (num1, num2); //THis'll give error because pure can't return state variables,
//         //only local variables can be accessed

//         uint256 myNum1 = 20;
//         uint256 myNum2 = 30;

//         return (myNum1 * myNum2, myNum1 + myNum2);
//     }
// }

////////////////////////////////////////////////////////////
// EVENT Tickets
// contract EventTicket {
//     uint256 public numberOfTicket;
//     uint256 public ticketPrice;
//     uint256 public totalAmount;
//     uint256 public startAt;
//     uint256 public endAt;
//     uint256 public timeRange;
//     string public message = "Buy your first EVENT Ticket";

//     constructor (uint256 _ticketPrice) {
//         ticketPrice = _ticketPrice;
//         startAt = block.timestamp;
//         endAt = block.timestamp + 7 days;
//         timeRange = (endAt - startAt) / 60 / 60 / 24;
//     }

//     function buyTicket (uint256 _value) public returns (uint256 ticketId) {
//         numberOfTicket++;
//         totalAmount += _value;
//         ticketId = numberOfTicket;
//     }

//     function getAmount() public view returns(uint256) {
//         return totalAmount;
//     }
// }

// //////////////////////////////////////////////////////////////////////
// CONSTANtS
// contract Constants {
//     // Executed at high gas value
//     address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

//     // Executed at low gas value
//     address public constant MY_ADDR =
//         0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

//     function getConstant() public pure returns (address) {
//         return MY_ADDR;
//     }
// }

// ////////////////////////////////////////////////////////////////////////////////////
// contract IfElse {
//     uint256 public num1 = 5;
//     string public str;

//     // function get(uint256 _num) public returns (string memory) {
//     //     if (_num == 5) {
//     //         str = "Value of num is 5";
//     //     } else if (_num == 4) {
//     //         str = " Value is 4";
//     //     } else {
//     //         str = " Not 5";
//     //     }
//     // }

//     function shortHand(uint256 _num) public returns (string memory) {
//         str = _num == 7 ? "John Wick" : "Nobody";
//         return str;
//     }
// }

// //////////////////////////////////////////////////////////////////////////////
// While loop
// contract WhileLoop {
//     uint256[] data;
//     uint8 k = 0;

//     function loop() public returns(uint256[] memory) {
//         while (k < 5) {
//             k++;
//             data.push(k);
//         }
//         return data;
//     }
// }

// //////////////////////////////////////////////////////////////////////////////
// DoWhile loop
// contract DoWhileLoop {
//     uint256[] data;
//     uint8 i = 0;

//     function loop() public returns(uint256[] memory) {
//         do {
//             i++;
//             data.push(i);
//         } while (i <= 7);

//         return data;
//     }
// }

// ///////////////////////////////////////////////////////////////////////////////
// FOR loop
// contract ForLoop {
//     uint256[] data;
//     uint8 i = 0;

//     function loop() public returns (uint256[] memory) {
//         for (i = 0; i<=7 ; i++) {
//             data.push(i);
//         }
//         return data;
//     }
// }

// /////////////////////////////////////////////////////////////////////////////////
// Error handlers (require statement)
// contract RequireStatement {
//     function checkInput (uint256 _input) public pure returns (string memory) {
//         require(_input >= 0, "Invalid uint8");
//         require(_input <= 255, "Invalid uint");

//         return "Input is Uint8";
//     }
// }
// Error handlers (assert keyword)
// contract AssertKeyword {
//     function checkInput (uint256 _input) public pure returns (string memory) {
//         require(_input >= 0, "Invalid uint8");
//         require(_input <= 255, "Invalid uint");

//         return "Input is Uint8";
//     }
// }

// Error handlers (assert keyword)
// contract AssertKeyword {
//     bool result;
//     function checkOverflow (uint256 _num1, uint256 _num2) public {
//         uint256 sum = _num1 + _num2;
//         assert(sum <= 255);
//         result = true;
//     }

//     function getResult() public view returns(string memory) {
//         if (result) {
//             return "No overflow";
//         } else {
//             return "Overflow";
//         }
//     }
// }

// Error handlers (revert keyword)
// contract RevertKeyword {
//     function checkOverflow(uint256 _num1, uint256 _num2) public pure returns(string memory, uint256) {
//         uint256 sum = _num1 + _num2;

//         if (sum < 0 || sum > 255) {
//             revert ("Overflow Exists");
//         } else {
//             return ("No overflow ", sum);
//         }
//     }
// }
