pragma solidity ^0.5.0;

/*programa de Juan Manuel Diaz Y Fernando Ruiz*/

contract fotos{
    
    struct Foto{
        string hash;
        string url;
    }
    
    struct Reunion{
        
        uint id;
        Foto[] foticos;
        string tema;
        string fecha;
        
        
        
    }
    
    mapping(uint => Reunion)reuniones;
    
    function resgistarReunion(uint id,string memory tema,string memory fecha) public{
        reuniones[id].id=id;
        reuniones[id].tema=tema;
        reuniones[id].fecha=fecha;
        
    }
    
    function consultarReunion(uint id)public view returns(uint ,string memory ,string memory){
        return(reuniones[id].id,reuniones[id].tema,reuniones[id].fecha);
        
    }
    function annadirFotoReunion (uint id,string memory hashf, string memory urlf) public{
        
      reuniones[id].foticos.push(Foto({hash: hashf,url: urlf }));
        
    }
    
    function consultarNumFotosReunion(uint id)public view returns(uint){
        
        uint u= reuniones[id].foticos.length;
        return(u);
        
    }
    
    function consltarFotoDeReunion(uint id, uint pos)public view returns(string memory, string memory){
        return (reuniones[id].foticos[pos].hash, reuniones[id].foticos[pos].url);
    }
    
    
}
    
    