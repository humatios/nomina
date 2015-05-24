package nomina

class RegistroNovedad {
    
    String nombreNovedad
    String descripcionNovedad
    String tipo
    int cantidad
    Date fechaInicio
    Date fechaFinal
    String estado
    byte eliminado
    
    static belongsTo = [empleados: Empleado]  
    
    static mapping ={
        table 'registro_novedad' 
        version false
    }

    static constraints = {
        nombreNovedad           nullable:true, maxSize:30, blanck:false
        descripcionNovedad      nullable:true, maxSize:50
        tipo                    nullable:true, maxSize:20
        fechaInicio             nullable:true, maxSize:20
        fechaFinal              nullable:true, maxSize:20
        estado                  nullable:true, maxSize:20
        cantidad                nullable:true, maxSize:20        
        eliminado               nullable:true
    }
    
    String toString () {
        return nombreNovedad + " " +  descripcionNovedad
    }
    
}//Registro Novedad
