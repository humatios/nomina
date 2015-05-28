
<%@ page import="nomina.RegistroNovedad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'registroNovedad.label', default: 'RegistroNovedad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills">
				<li><a class="home" href="${createLink(uri: '/')}"><i class="glyphicon glyphicon glyphicon-home" aria-hidden="true"></i> <g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><span class="glyphicon glyphicon-sort-by-alphabet" aria-hidden="true"> </span> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"> </span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-registroNovedad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list registroNovedad list-group">
			
				<g:if test="${registroNovedadInstance?.nombreNovedad}">
				<li class="fieldcontain list-group-item">
					<span id="nombreNovedad-label" class="property-label"><g:message code="registroNovedad.nombreNovedad.label" default="Nombre Novedad" /></span>
					
						<span class="property-value" aria-labelledby="nombreNovedad-label"><g:fieldValue bean="${registroNovedadInstance}" field="nombreNovedad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.descripcionNovedad}">
				<li class="fieldcontain list-group-item">
					<span id="descripcionNovedad-label" class="property-label"><g:message code="registroNovedad.descripcionNovedad.label" default="Descripcion Novedad" /></span>
					
						<span class="property-value" aria-labelledby="descripcionNovedad-label"><g:fieldValue bean="${registroNovedadInstance}" field="descripcionNovedad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.tipo}">
				<li class="fieldcontain list-group-item">
					<span id="tipo-label" class="property-label"><g:message code="registroNovedad.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${registroNovedadInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.fechaInicio}">
				<li class="fieldcontain list-group-item">
					<span id="fechaInicio-label" class="property-label"><g:message code="registroNovedad.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${registroNovedadInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.fechaFinal}">
				<li class="fieldcontain list-group-item">
					<span id="fechaFinal-label" class="property-label"><g:message code="registroNovedad.fechaFinal.label" default="Fecha Final" /></span>
					
						<span class="property-value" aria-labelledby="fechaFinal-label"><g:formatDate date="${registroNovedadInstance?.fechaFinal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.estado}">
				<li class="fieldcontain list-group-item">
					<span id="estado-label" class="property-label"><g:message code="registroNovedad.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${registroNovedadInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.cantidad}">
				<li class="fieldcontain list-group-item">
					<span id="cantidad-label" class="property-label"><g:message code="registroNovedad.cantidad.label" default="Cantidad" /></span>
					
						<span class="property-value" aria-labelledby="cantidad-label"><g:fieldValue bean="${registroNovedadInstance}" field="cantidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.eliminado}">
				<li class="fieldcontain list-group-item">
					<span id="eliminado-label" class="property-label"><g:message code="registroNovedad.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${registroNovedadInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${registroNovedadInstance?.empleados}">
				<li class="fieldcontain list-group-item">
					<span id="empleados-label" class="property-label"><g:message code="registroNovedad.empleados.label" default="Empleados" /></span>
					
						<span class="property-value" aria-labelledby="empleados-label"><g:link controller="empleado" action="show" id="${registroNovedadInstance?.empleados?.id}">${registroNovedadInstance?.empleados?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:registroNovedadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-success" action="edit" resource="${registroNovedadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
