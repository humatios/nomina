package nomina

import grails.transaction.Transactional

@Transactional
class SeguridadService {

    def excepciones = []
    
    def menuPorUsuario(long idUsuario) {
        
        def opciones = Opcion.executeQuery(""" 
            select o from Opcion as o 
            where o.id in 
            (   select ro.opcion.id from RolOpcionOperacion as ro 
                join ro.rol as r where r.id in 
                (   select rol.id from RolUsuario as ru 
                    where ru.usuario.id = ${idUsuario} 
                    and ru.estadoRolUsuario = 'A'
                    and ru.eliminado = 0
                ) 
                and ro.operacion.id = 1 
                and ro.estadoRolOpcionOperacion = 'A'
                and ro.rol.eliminado = 0
                and ro.opcion.eliminado = 0
                and ro.operacion.eliminado = 0  
                and ro.eliminado = 0
                and o.eliminado = 0
            ) 
            and o.estadoOpcion = 'A'           
            and (o.idPadre=null or idPadre !=0)
            and o.eliminado = 0
            order by orden
        """) 
        println opciones
        return opciones
    }
    
    def validarOpcion (long idUsuario, String uri){
  
        if(excepciones.contains(uri)){            
            return true;
        }
        else{
            def vec = uri.split("/")
            if(vec.size()==3){
                def controlador = vec[1].toString()                
                def accion = vec[2].toString()
                  
                if (controlador != 'panel') {            
                                                        
                    def roo = RolOpcionOperacion.executeQuery(""" 
                        select o from RolOpcionOperacion as o
                        where  o.operacion.acciones like '%${accion},%'
                        and o.opcion.controlador='${controlador}' 
                        and o.estadoRolOpcionOperacion = 'A'
                        and o.opcion.estadoOpcion = 'A'
                        and o.operacion.estadoOperacion = 'A'  
                        and o.rol.id in (
                            select ru.rol.id from RolUsuario ru
                            where ru.usuario.id = ${idUsuario} 
                            and ru.estadoRolUsuario = 'A' 
                            and ru.eliminado=0) 
                        and o.rol.eliminado=0                                                                                         
                        and o.opcion.eliminado = 0
                        and o.operacion.eliminado = 0
                        and o.eliminado = 0
                    """);                    
                    if(roo.size()>0){
                        return true 
                    }
                }else{
                    return true;
                }
            }
            return false;
        }
    }

    def tipoOpcion (String uri){
      
        def vec = uri.split("/")
        if(vec.size()==3){
            def controlador = vec[1].toString()
            def accion = vec[2].toString()
            if (controlador != 'panel') {
                def roo = Opcion.executeQuery(""" 
                    select o.idTipoOpcion from Opcion as o 
                    where o.controlador = '${controlador}'
                    and o.url like '%${accion}%'
                    and o.estadoOpcion = 'A'
                    and o.eliminado = 0
                """); 
                 
                if(roo.size()>0) return roo[0] else return 'D'
            }
        }
        return "D";
    }
    
    def operacionesPorOpcion (long idUsuario, String uri) {   
        
        def vec = uri.split("/")
       
        if(vec.size()==3){
            def controlador = vec[1].toString()
            if (controlador != 'panel') {
                def roo = RolOpcionOperacion.executeQuery(""" 
                    select distinct o.operacion.nombreOperacion from RolOpcionOperacion as o 
                    where o.opcion.controlador = '${controlador}'
                    and o.estadoRolOpcionOperacion = 'A'
                    and o.opcion.estadoOpcion = 'A'
                    and o.operacion.estadoOperacion = 'A'
                    and o.rol.id in (
                         select rol.id from RolUsuario  ru where ru.usuario.id = ${idUsuario} 
                         and ru.estadoRolUsuario = 'A' and ru.eliminado=0                        
                    )
                    and o.rol.eliminado = 0
                    and o.opcion.eliminado = 0
                    and o.operacion.eliminado = 0
                    and o.eliminado = 0
                """); 
        
                return roo
            }else{
                return ["VER"]
            }
        }
        return null;
    }
    
}
