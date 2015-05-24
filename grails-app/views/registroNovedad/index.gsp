
<%@ page import="nomina.RegistroNovedad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'registroNovedad.label', default: 'RegistroNovedad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-registroNovedad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-registroNovedad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreNovedad" title="${message(code: 'registroNovedad.nombreNovedad.label', default: 'Nombre Novedad')}" />
					
						<g:sortableColumn property="descripcionNovedad" title="${message(code: 'registroNovedad.descripcionNovedad.label', default: 'Descripcion Novedad')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'registroNovedad.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'registroNovedad.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="fechaFinal" title="${message(code: 'registroNovedad.fechaFinal.label', default: 'Fecha Final')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'registroNovedad.estado.label', default: 'Estado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registroNovedadInstanceList}" status="i" var="registroNovedadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${registroNovedadInstance.id}">${fieldValue(bean: registroNovedadInstance, field: "nombreNovedad")}</g:link></td>
					
						<td>${fieldValue(bean: registroNovedadInstance, field: "descripcionNovedad")}</td>
					
						<td>${fieldValue(bean: registroNovedadInstance, field: "tipo")}</td>
					
						<td><g:formatDate date="${registroNovedadInstance.fechaInicio}" /></td>
					
						<td><g:formatDate date="${registroNovedadInstance.fechaFinal}" /></td>
					
						<td>${fieldValue(bean: registroNovedadInstance, field: "estado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${registroNovedadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
