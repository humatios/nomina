package nomina

class Empleado {
    
    String identificacion
    String nombre 
    String direccion
    String email
    String telefono
    String puesto    
    Byte eliminado
    
    static hasMany = [registroNovedades: RegistroNovedad]
    
    static mapping ={
        table 'empleados' 
        version false
    }

    static constraints = {               
        identificacion  nullable:true, maxSize:30, blanck:false
        nombre          nullable:true, maxSize:20, blanck:false
        direccion       nullable:true, maxSize:20
        email           maxSize:30
        telefono        nullable:true
        puesto          nullable:true, maxSize:20, blanck:false
        eliminado       nullable:true
    }
    
    String toString () {
        return nombre + " " +  puesto
    }
    
}// Empleado
