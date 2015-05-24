package nomina

class Nominas {
    
    String nombreDeNomina
    String descripcionNomina
    long sueldo    
    long totalPagar
    byte eliminado
   
    static belongsTo = [empleados: Empleado] 
    
    static mapping ={
        table 'registro_nomina' 
        version false
    }

    static constraints = {
        nombreDeNomina          nullable:true, maxSize:30, blanck:false
        descripcionNomina       nullable:true, maxSize:50
        sueldo                  nullable:true, maxSize:30, blanck:false
        totalPagar              nullable:true, maxSize:30, blanck:false
        eliminado       nullable:true
    }
    
    String toString () {
        return nombreDeNomina + " " +  descripcionNomina
    }
    
}
