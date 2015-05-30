package nomina

class BaseController {

    def beforeInterceptor = [action: this.&auth]
    def seguridadService
    def grailsApplication
    
    private auth() {
       
        if (!session["id_session"]) {
            if (actionUri == "/panel/index"){
                redirect(controller:"Login",action:"index",params:[estado:1])
                return false
            }else{
                redirect(controller:"Login",action:"index",params:[estado:2,uriAnterior:actionUri])
                return false
                
            }
        }

        def tipo = seguridadService.tipoOpcion(actionUri)
       
        def acceso = seguridadService.validarOpcion(session["idUsuario"],actionUri)
        
        if (!acceso){
            if(tipo == "M"){
                redirect(controller:"Login",action:"acceso")
                return false 
            }else{
                render text: message(code: 'seguridad.accesoDenegado', default: "Acceso denegado!")
                return false 
            }
                
        }

        def operaciones = seguridadService.operacionesPorOpcion(session["idUsuario"],actionUri)        
        
        if(operaciones != null){
            session["operaciones"] = operaciones
        }else{
            session["operaciones"] = []        
        }
       
    }
    
}