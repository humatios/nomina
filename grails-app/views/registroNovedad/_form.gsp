<%@ page import="nomina.RegistroNovedad" %>



<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'nombreNovedad', 'error')} ">
	<label for="nombreNovedad">
		<g:message code="registroNovedad.nombreNovedad.label" default="Nombre Novedad" />
		
	</label>
	<g:textField name="nombreNovedad" maxlength="30" value="${registroNovedadInstance?.nombreNovedad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'descripcionNovedad', 'error')} ">
	<label for="descripcionNovedad">
		<g:message code="registroNovedad.descripcionNovedad.label" default="Descripcion Novedad" />
		
	</label>
	<g:textField name="descripcionNovedad" maxlength="50" value="${registroNovedadInstance?.descripcionNovedad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="registroNovedad.tipo.label" default="Tipo" />
		
	</label>
	<g:textField name="tipo" maxlength="20" value="${registroNovedadInstance?.tipo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'fechaInicio', 'error')} ">
	<label for="fechaInicio">
		<g:message code="registroNovedad.fechaInicio.label" default="Fecha Inicio" />
		
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${registroNovedadInstance?.fechaInicio}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'fechaFinal', 'error')} ">
	<label for="fechaFinal">
		<g:message code="registroNovedad.fechaFinal.label" default="Fecha Final" />
		
	</label>
	<g:datePicker name="fechaFinal" precision="day"  value="${registroNovedadInstance?.fechaFinal}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="registroNovedad.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" maxlength="20" value="${registroNovedadInstance?.estado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="registroNovedad.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${registroNovedadInstance.cantidad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="registroNovedad.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${registroNovedadInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'empleados', 'error')} required">
	<label for="empleados">
		<g:message code="registroNovedad.empleados.label" default="Empleados" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleados" name="empleados.id" from="${nomina.Empleado.list()}" optionKey="id" required="" value="${registroNovedadInstance?.empleados?.id}" class="many-to-one"/>
</div>

