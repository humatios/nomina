
<%@ page import="nomina.Nominas" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainb">
        <g:set var="entityName" value="${message(code: 'nominas.label', default: 'Nominas')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
                <li><a class="home" href="${createLink(uri: '/')}"><i class="glyphicon glyphicon glyphicon-home" aria-hidden="true"></i> <g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><span class="glyphicon glyphicon-sort-by-alphabet" aria-hidden="true"> </span> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"> </span><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
            <div id="show-nominas" class="content scaffold-show" role="main">
                <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list nominas list-group">

                <g:if test="${nominasInstance?.nombreDeNomina}">
                    <li class="fieldcontain list-group-item">
                        <span id="nombreDeNomina-label" class="property-label"><g:message code="nominas.nombreDeNomina.label" default="Nombre De Nomina" /></span>

                        <span class="property-value" aria-labelledby="nombreDeNomina-label"><g:fieldValue bean="${nominasInstance}" field="nombreDeNomina"/></span>

                    </li>
                </g:if>

                <g:if test="${nominasInstance?.descripcionNomina}">
                    <li class="fieldcontain list-group-item">
                        <span id="descripcionNomina-label" class="property-label"><g:message code="nominas.descripcionNomina.label" default="Descripcion Nomina" /></span>

                        <span class="property-value" aria-labelledby="descripcionNomina-label"><g:fieldValue bean="${nominasInstance}" field="descripcionNomina"/></span>

                    </li>
                </g:if>

                <g:if test="${nominasInstance?.sueldo}">
                    <li class="fieldcontain list-group-item">
                        <span id="sueldo-label" class="property-label"><g:message code="nominas.sueldo.label" default="Sueldo" /></span>

                        <span class="property-value" aria-labelledby="sueldo-label"><g:fieldValue bean="${nominasInstance}" field="sueldo"/></span>

                    </li>
                </g:if>

                <g:if test="${nominasInstance?.totalPagar}">
                    <li class="fieldcontain list-group-item">
                        <span id="totalPagar-label" class="property-label"><g:message code="nominas.totalPagar.label" default="Total Pagar" /></span>

                        <span class="property-value" aria-labelledby="totalPagar-label"><g:fieldValue bean="${nominasInstance}" field="totalPagar"/></span>

                    </li>
                </g:if>

                <g:if test="${nominasInstance?.eliminado}">
                    <li class="fieldcontain list-group-item">
                        <span id="eliminado-label" class="property-label"><g:message code="nominas.eliminado.label" default="Eliminado" /></span>

                        <span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${nominasInstance}" field="eliminado"/></span>

                    </li>
                </g:if>

                <g:if test="${nominasInstance?.empleados}">
                    <li class="fieldcontain list-group-item">
                        <span id="empleados-label" class="property-label text-right"><g:message code="nominas.empleados.label" default="Empleados" /></span>

                        <span class="property-value text-left" aria-labelledby="empleados-label"><g:link controller="empleado" action="show" id="${nominasInstance?.empleados?.id}">${nominasInstance?.empleados?.encodeAsHTML()}</g:link></span>

                    </li>
                </g:if>

            </ol>
            <g:form url="[resource:nominasInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-success" action="edit" resource="${nominasInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
