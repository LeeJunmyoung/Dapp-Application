pragma solidity ^0.4.25;

contract Vote{
    
    struct candidator{
        string name;
        uint upVote;
    }
    bool live;
    address owner;
    
    mapping (address=>bool) Voted;
    
    candidator[] public candidatorList; 
    
    event AddCandidator(string name);
    
    event UpVote(string name,uint upVote);
    
    event FinishVote(bool live);
    
    event Voting(address owner);
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    constructor() public{
        owner = msg.sender;
        live = true;
        
        emit Voting(owner);
    }
    
    
    //candidator add
    function addCandidator(string _name) public onlyOwner{
        require(live==true);
        require(candidatorList.length<5);
        candidatorList.push(candidator(_name,0));
        
        emit AddCandidator(_name);
    }
    
    //vote ++
    function upVote(uint _indexOfCodidator) public {
        require(live==true);
        require(_indexOfCodidator<candidatorList.length);
        require(Voted[msg.sender]==false);
        
        candidatorList[_indexOfCodidator].upVote++;
        Voted[msg.sender]=true;
        
        emit UpVote(candidatorList[_indexOfCodidator].name,candidatorList[_indexOfCodidator].upVote);
    }
    
    //finish vote
    function finishVote() public onlyOwner{
        require(live==true);
        live = false;
        
        emit FinishVote(live);
    }
    
    
}
