<%@ page import="nomina.Nominas" %>


<div class="form-horizontal">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'nombreDeNomina', 'error')} ">
            <label for="nombreDeNomina" class="control-label col-xs-3">
                <g:message code="nominas.nombreDeNomina.label" default="Nombre De Nomina" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="nombreDeNomina" maxlength="30" value="${nominasInstance?.nombreDeNomina}"/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'descripcionNomina', 'error')} ">
            <label for="descripcionNomina" class="control-label col-xs-3">
                <g:message class="form-control"  code="nominas.descripcionNomina.label" default="Descripcion Nomina" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control"  name="descripcionNomina" maxlength="50" value="${nominasInstance?.descripcionNomina}"/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'sueldo', 'error')} required">
            <label for="sueldo" class="control-label col-xs-3">
                <g:message class="form-control" code="nominas.sueldo.label" default="Sueldo" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-xs-7">
                <g:field class="form-control" name="sueldo" type="number" value="${nominasInstance.sueldo}" required=""/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'totalPagar', 'error')} required">
            <label for="totalPagar" class="control-label col-xs-3">
                <g:message code="nominas.totalPagar.label" default="Total Pagar" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-xs-7">
                <g:field class="form-control" name="totalPagar" type="number" value="${nominasInstance.totalPagar}" required=""/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'eliminado', 'error')} required">
            <label for="eliminado" class="control-label col-xs-3">
                <g:message code="nominas.eliminado.label" default="Eliminado" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-xs-7">
                <g:field class="form-control" name="eliminado" type="number" value="${nominasInstance.eliminado}" required=""/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'empleados', 'error')} required">
            <label for="empleados" class="control-label col-xs-3">
                <g:message code="nominas.empleados.label" default="Empleados" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-xs-7">
                <g:select class="many-to-one form-control" id="empleados" name="empleados.id" from="${nomina.Empleado.list()}" optionKey="id" required="" value="${nominasInstance?.empleados?.id}" />
            </div>
        </div>
    </div>
</div>

