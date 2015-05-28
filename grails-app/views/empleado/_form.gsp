<%@ page import="nomina.Empleado" %>


<div class="form-horizontal">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'identificacion', 'error')} ">
            <label for="identificacion" class="control-label col-xs-3">
                <g:message class="form-control" code="empleado.identificacion.label" default="Identificacion" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="identificacion" maxlength="30" value="${empleadoInstance?.identificacion}"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} ">
            <label for="nombre" class="control-label col-xs-3">
                <g:message class="form-control" code="empleado.nombre.label" default="Nombre" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="nombre" maxlength="20" value="${empleadoInstance?.nombre}"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'direccion', 'error')} ">
            <label for="direccion" class="control-label col-xs-3">
                <g:message class="form-control" code="empleado.direccion.label" default="Direccion" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="direccion" maxlength="20" value="${empleadoInstance?.direccion}"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} ">
            <label for="email" class="control-label col-xs-3">
                <g:message code="empleado.email.label" default="Email" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="email" maxlength="30" value="${empleadoInstance?.email}"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'telefono', 'error')} ">
            <label for="telefono" class="control-label col-xs-3">
                <g:message code="empleado.telefono.label" default="Telefono" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" class="form-control" name="telefono" value="${empleadoInstance?.telefono}"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'puesto', 'error')} ">
            <label for="puesto" class="control-label col-xs-3">
                <g:message code="empleado.puesto.label" default="Puesto" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="puesto" maxlength="20" value="${empleadoInstance?.puesto}"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'eliminado', 'error')} ">
            <label for="eliminado" class="control-label col-xs-3">
                <g:message code="empleado.eliminado.label" default="Eliminado" />

            </label>
            <div class="col-xs-7">
                <g:field class="form-control" name="eliminado" type="number" value="${empleadoInstance.eliminado}"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'registroNovedades', 'error')} ">
            <label for="registroNovedades" class="control-label col-xs-3">
                <g:message class="control-label" code="empleado.registroNovedades.label" default="Registro Novedades" />

            </label>
        </div>
        <ul class="one-to-many">
            <g:each in="${empleadoInstance?.registroNovedades?}" var="r">
                <li class="btn btn-default"><g:link class="add" controller="registroNovedad" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
                </g:each>
            <li class="add btn btn-default">
                <g:link class="control-label" controller="registroNovedad" action="create" params="['empleado.id': empleadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registroNovedad.label', default: 'RegistroNovedad')])}</g:link>
                </li>
            </ul>

    </div>
</div>

