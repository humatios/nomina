package nomina



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegistroNovedadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegistroNovedad.list(params), model:[registroNovedadInstanceCount: RegistroNovedad.count()]
    }

    def show(RegistroNovedad registroNovedadInstance) {
        respond registroNovedadInstance
    }

    def create() {
        respond new RegistroNovedad(params)
    }

    @Transactional
    def save(RegistroNovedad registroNovedadInstance) {
        if (registroNovedadInstance == null) {
            notFound()
            return
        }

        if (registroNovedadInstance.hasErrors()) {
            respond registroNovedadInstance.errors, view:'create'
            return
        }

        registroNovedadInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registroNovedadInstance.label', default: 'RegistroNovedad'), registroNovedadInstance.id])
                redirect registroNovedadInstance
            }
            '*' { respond registroNovedadInstance, [status: CREATED] }
        }
    }

    def edit(RegistroNovedad registroNovedadInstance) {
        respond registroNovedadInstance
    }

    @Transactional
    def update(RegistroNovedad registroNovedadInstance) {
        if (registroNovedadInstance == null) {
            notFound()
            return
        }

        if (registroNovedadInstance.hasErrors()) {
            respond registroNovedadInstance.errors, view:'edit'
            return
        }

        registroNovedadInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegistroNovedad.label', default: 'RegistroNovedad'), registroNovedadInstance.id])
                redirect registroNovedadInstance
            }
            '*'{ respond registroNovedadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RegistroNovedad registroNovedadInstance) {

        if (registroNovedadInstance == null) {
            notFound()
            return
        }

        registroNovedadInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegistroNovedad.label', default: 'RegistroNovedad'), registroNovedadInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registroNovedadInstance.label', default: 'RegistroNovedad'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
