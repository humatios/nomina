
<%@ page import="nomina.Nominas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'nominas.label', default: 'Nominas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills">
				<li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"> </span><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-nominas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreDeNomina" title="${message(code: 'nominas.nombreDeNomina.label', default: 'Nombre De Nomina')}" />
					
						<g:sortableColumn property="descripcionNomina" title="${message(code: 'nominas.descripcionNomina.label', default: 'Descripcion Nomina')}" />
					
						<g:sortableColumn property="sueldo" title="${message(code: 'nominas.sueldo.label', default: 'Sueldo')}" />
					
						<g:sortableColumn property="totalPagar" title="${message(code: 'nominas.totalPagar.label', default: 'Total Pagar')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'nominas.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="nominas.empleados.label" default="Empleados" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${nominasInstanceList}" status="i" var="nominasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${nominasInstance.id}">${fieldValue(bean: nominasInstance, field: "nombreDeNomina")}</g:link></td>
					
						<td>${fieldValue(bean: nominasInstance, field: "descripcionNomina")}</td>
					
						<td>${fieldValue(bean: nominasInstance, field: "sueldo")}</td>
					
						<td>${fieldValue(bean: nominasInstance, field: "totalPagar")}</td>
					
						<td>${fieldValue(bean: nominasInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: nominasInstance, field: "empleados")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${nominasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
