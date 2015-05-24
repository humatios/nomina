package nomina



import grails.test.mixin.*
import spock.lang.*

@TestFor(NominasController)
@Mock(Nominas)
class NominasControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.nominasInstanceList
            model.nominasInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.nominasInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def nominas = new Nominas()
            nominas.validate()
            controller.save(nominas)

        then:"The create view is rendered again with the correct model"
            model.nominasInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            nominas = new Nominas(params)

            controller.save(nominas)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/nominas/show/1'
            controller.flash.message != null
            Nominas.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def nominas = new Nominas(params)
            controller.show(nominas)

        then:"A model is populated containing the domain instance"
            model.nominasInstance == nominas
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def nominas = new Nominas(params)
            controller.edit(nominas)

        then:"A model is populated containing the domain instance"
            model.nominasInstance == nominas
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/nominas/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def nominas = new Nominas()
            nominas.validate()
            controller.update(nominas)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.nominasInstance == nominas

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            nominas = new Nominas(params).save(flush: true)
            controller.update(nominas)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/nominas/show/$nominas.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/nominas/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def nominas = new Nominas(params).save(flush: true)

        then:"It exists"
            Nominas.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(nominas)

        then:"The instance is deleted"
            Nominas.count() == 0
            response.redirectedUrl == '/nominas/index'
            flash.message != null
    }
}
