package nomina

class PooController {

    def index() { 
        render text: "Nomina"    
    }
    
    abstract class Nomina {
        
        int idNomina
        String puesto
        long sueldo
        long totalPago 
        
        def registrarNovedad () {

        }
        
        def calcularNomina () {
            
        }
        
        def registrarEmpleado () {
            
        }
         
    }// Fin nomina
    
    
    class RegistrarNovedad extends Nomina {
        int idNovedad
        String empleado
        String tipo
        String tiempo
    }
    
    class CalcularNomina extends Nomina {
        String empleado
        String novedad       
    }
    
    class RegistrarEmpleado extends Nomina {
        int idRegistro
        String nombre
        String direccion
        String telefono
        String puesto
        long sueldo        
    }    
    
}//fin del Controlador
