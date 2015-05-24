<%@ page import="nomina.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'identificacion', 'error')} ">
	<label for="identificacion">
		<g:message code="empleado.identificacion.label" default="Identificacion" />
		
	</label>
	<g:textField name="identificacion" maxlength="30" value="${empleadoInstance?.identificacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="20" value="${empleadoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="empleado.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" maxlength="20" value="${empleadoInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="empleado.email.label" default="Email" />
		
	</label>
	<g:textField name="email" maxlength="30" value="${empleadoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="empleado.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${empleadoInstance?.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="empleado.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" maxlength="20" value="${empleadoInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'eliminado', 'error')} ">
	<label for="eliminado">
		<g:message code="empleado.eliminado.label" default="Eliminado" />
		
	</label>
	<g:field name="eliminado" type="number" value="${empleadoInstance.eliminado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'registroNovedades', 'error')} ">
	<label for="registroNovedades">
		<g:message code="empleado.registroNovedades.label" default="Registro Novedades" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empleadoInstance?.registroNovedades?}" var="r">
    <li><g:link controller="registroNovedad" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registroNovedad" action="create" params="['empleado.id': empleadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registroNovedad.label', default: 'RegistroNovedad')])}</g:link>
</li>
</ul>

</div>

