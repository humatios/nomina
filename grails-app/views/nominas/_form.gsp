<%@ page import="nomina.Nominas" %>



<div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'nombreDeNomina', 'error')} ">
	<label for="nombreDeNomina">
		<g:message code="nominas.nombreDeNomina.label" default="Nombre De Nomina" />
		
	</label>
	<g:textField name="nombreDeNomina" maxlength="30" value="${nominasInstance?.nombreDeNomina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'descripcionNomina', 'error')} ">
	<label for="descripcionNomina">
		<g:message code="nominas.descripcionNomina.label" default="Descripcion Nomina" />
		
	</label>
	<g:textField name="descripcionNomina" maxlength="50" value="${nominasInstance?.descripcionNomina}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'sueldo', 'error')} required">
	<label for="sueldo">
		<g:message code="nominas.sueldo.label" default="Sueldo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sueldo" type="number" value="${nominasInstance.sueldo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'totalPagar', 'error')} required">
	<label for="totalPagar">
		<g:message code="nominas.totalPagar.label" default="Total Pagar" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalPagar" type="number" value="${nominasInstance.totalPagar}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="nominas.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${nominasInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: nominasInstance, field: 'empleados', 'error')} required">
	<label for="empleados">
		<g:message code="nominas.empleados.label" default="Empleados" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleados" name="empleados.id" from="${nomina.Empleado.list()}" optionKey="id" required="" value="${nominasInstance?.empleados?.id}" class="many-to-one"/>
</div>

