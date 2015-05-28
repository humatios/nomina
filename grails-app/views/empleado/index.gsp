
<%@ page import="nomina.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills">
				<li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"> </span><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empleado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="identificacion" title="${message(code: 'empleado.identificacion.label', default: 'Identificacion')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'empleado.direccion.label', default: 'Direccion')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'empleado.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'empleado.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="puesto" title="${message(code: 'empleado.puesto.label', default: 'Puesto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoInstanceList}" status="i" var="empleadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "identificacion")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "puesto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
