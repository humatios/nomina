
<%@ page import="nomina.Empleado" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainb">
        <g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
                <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><span class="glyphicon glyphicon-sort-by-alphabet" aria-hidden="true"> </span><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"> </span><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="show-empleado" class="content scaffold-show" role="main">
                <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list empleado list-group">

                <g:if test="${empleadoInstance?.identificacion}">
                    <li class="fieldcontain list-group-item">
                        <span id="identificacion-label" class="property-label"><g:message code="empleado.identificacion.label" default="Identificacion" /></span>

                        <span class="property-value" aria-labelledby="identificacion-label"><g:fieldValue bean="${empleadoInstance}" field="identificacion"/></span>

                    </li>
                </g:if>

                <g:if test="${empleadoInstance?.nombre}">
                    <li class="fieldcontain list-group-item">
                        <span id="nombre-label" class="property-label"><g:message code="empleado.nombre.label" default="Nombre" /></span>

                        <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoInstance}" field="nombre"/></span>

                    </li>
                </g:if>

                <g:if test="${empleadoInstance?.direccion}">
                    <li class="fieldcontain list-group-item">
                        <span id="direccion-label" class="property-label"><g:message code="empleado.direccion.label" default="Direccion" /></span>

                        <span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${empleadoInstance}" field="direccion"/></span>

                    </li>
                </g:if>

                <g:if test="${empleadoInstance?.email}">
                    <li class="fieldcontain list-group-item">
                        <span id="email-label" class="property-label"><g:message code="empleado.email.label" default="Email" /></span>

                        <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empleadoInstance}" field="email"/></span>

                    </li>
                </g:if>

                <g:if test="${empleadoInstance?.telefono}">
                    <li class="fieldcontain list-group-item">
                        <span id="telefono-label" class="property-label"><g:message code="empleado.telefono.label" default="Telefono" /></span>

                        <span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${empleadoInstance}" field="telefono"/></span>

                    </li>
                </g:if>

                <g:if test="${empleadoInstance?.puesto}">
                    <li class="fieldcontain list-group-item">
                        <span id="puesto-label" class="property-label"><g:message code="empleado.puesto.label" default="Puesto" /></span>

                        <span class="property-value" aria-labelledby="puesto-label"><g:fieldValue bean="${empleadoInstance}" field="puesto"/></span>

                    </li>
                </g:if>

                <g:if test="${empleadoInstance?.eliminado}">
                    <li class="fieldcontain list-group-item">
                        <span id="eliminado-label" class="property-label"><g:message code="empleado.eliminado.label" default="Eliminado" /></span>

                        <span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${empleadoInstance}" field="eliminado"/></span>

                    </li>
                </g:if>

                <g:if test="${empleadoInstance?.registroNovedades}">
                    <li class="fieldcontain list-group-item">
                        <span id="registroNovedades-label" class="property-label"><g:message code="empleado.registroNovedades.label" default="Registro Novedades" /></span>

                        <g:each in="${empleadoInstance.registroNovedades}" var="r">
                            <span class="property-value" aria-labelledby="registroNovedades-label"><g:link controller="registroNovedad" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
                        </g:each>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:empleadoInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-success" action="edit" resource="${empleadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
