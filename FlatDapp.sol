pragma solidity ^0.4.0;



contract FlatDapp {

    uint flatNum;

    bytes32 resident;

    

    event ResidentEvent(uint flatNum, bytes32 resident);

    

    constructor() public {

        flatNum=103;

        resident="Zain";

    }

    

    function setResident(uint _flatNum, bytes32 _resident) public {

        flatNum=_flatNum;

        resident=_resident;

        emit ResidentEvent(flatNum,resident);

    }

    

    function getResident() public view returns (uint,bytes32){

        return(flatNum,resident);

    }

}