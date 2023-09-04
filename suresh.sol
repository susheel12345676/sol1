// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;



contract MyToken {

    // public variables here
    string public Token_name ="SUSHEEL";
    string public Token_abbrev="SUS";
    uint public Total_supply=3000;
    // mapping variable here
    mapping(address => uint)public balance;
    // mint function
    function mint(address mintaddress, uint  mintvalue)public {
      Total_supply += mintvalue;
      balance[mintaddress] += mintvalue;
   }
    // burn function
   function burn(address burnaddress, uint burnvalue)public {
      if(balance[burnaddress]>= burnvalue){
        Total_supply -= burnvalue;
        balance[burnaddress] -= burnvalue;
      }
     }
  }