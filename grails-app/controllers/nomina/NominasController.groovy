package nomina



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NominasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nominas.list(params), model:[nominasInstanceCount: Nominas.count()]
    }

    def show(Nominas nominasInstance) {
        respond nominasInstance
    }

    def create() {
        respond new Nominas(params)
    }

    @Transactional
    def save(Nominas nominasInstance) {
        if (nominasInstance == null) {
            notFound()
            return
        }

        if (nominasInstance.hasErrors()) {
            respond nominasInstance.errors, view:'create'
            return
        }

        nominasInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nominasInstance.label', default: 'Nominas'), nominasInstance.id])
                redirect nominasInstance
            }
            '*' { respond nominasInstance, [status: CREATED] }
        }
    }

    def edit(Nominas nominasInstance) {
        respond nominasInstance
    }

    @Transactional
    def update(Nominas nominasInstance) {
        if (nominasInstance == null) {
            notFound()
            return
        }

        if (nominasInstance.hasErrors()) {
            respond nominasInstance.errors, view:'edit'
            return
        }

        nominasInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nominas.label', default: 'Nominas'), nominasInstance.id])
                redirect nominasInstance
            }
            '*'{ respond nominasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nominas nominasInstance) {

        if (nominasInstance == null) {
            notFound()
            return
        }

        nominasInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nominas.label', default: 'Nominas'), nominasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nominasInstance.label', default: 'Nominas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
