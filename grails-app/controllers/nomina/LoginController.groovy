package nomina
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsWebRequest

class LoginController {

    def index() {
      
        if(!params.estado) params.estado = 1       

        if (session["id_session"]) {
            redirect(controller:"Panel",action:"index")
            return false 
        }else{
            render view: 'index',  model:[estado:params.estado,uriAnterior:params.uriAnterior]
        }
    }
    
    def acceso () {     render view: 'acceso' }
    
    def autenticacion(){
        
        def password=params.password.encodeAsMD5()
        println password
        
        def query = Usuario.where {
            usuario == params.usuario.toString()
            contrasena == password
            eliminado == 0
            idEstadoUsuario == "A"
        }
        
        def user = query.find()
        if (user){
            println "Entre"
            session["usuario"]  = user.usuario
            session["nombre"]= user.nombre
            session["idUsuario"]  = user.id
            session["id_session"]  = 123
            
            if(params.estado==1){              
                redirect  url: "/Panel/index"
            }else{
                redirect url: params.uriAnterior             
            }
        }else{
            
            flash.message = "Error en autenticación,Verifique"
            redirect  url: "/login/index"           
        }
        
     
    }
    
    def cerrarSesion() { 
        session.invalidate()
        GrailsWebRequest.lookup(request).session = null        
        redirect(controller:"Login",action:"index")
    }
    
}
