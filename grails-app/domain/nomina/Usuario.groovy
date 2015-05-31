package nomina

class Usuario {

    String usuario
    String nombre
    String idEstadoUsuario   
    String contrasena
    Byte   eliminado
         
    static mapping = {
        table 'usuarios'
        version false
        eliminado defaultValue:"0"
    }
    
    static constraints = {
        
        usuario nullable: false, maxSize: 50, blank:false
        nombre nullable: true, maxSize: 150, blank:false
        contrasena nullable: true, maxSize: 100, password:true    
        idEstadoUsuario  inList:['A','I'] 
    }
    
    String toString(){
        return usuario
    }
    
}
