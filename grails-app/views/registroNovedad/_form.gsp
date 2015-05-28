<%@ page import="nomina.RegistroNovedad" %>

<div class="form-horizontal">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'nombreNovedad', 'error')} ">
            <label for="nombreNovedad" class="control-label col-xs-3">
                <g:message code="registroNovedad.nombreNovedad.label" default="Nombre Novedad" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="nombreNovedad" maxlength="30" value="${registroNovedadInstance?.nombreNovedad}"/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'descripcionNovedad', 'error')} ">
            <label for="descripcionNovedad" class="control-label col-xs-3">
                <g:message class="form-control" code="registroNovedad.descripcionNovedad.label" default="Descripcion Novedad" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="descripcionNovedad" maxlength="50" value="${registroNovedadInstance?.descripcionNovedad}"/>
            </div> 
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'tipo', 'error')} ">
            <label for="tipo" class="control-label col-xs-3">
                <g:message class="form-control" code="registroNovedad.tipo.label" default="Tipo" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="tipo" maxlength="20" value="${registroNovedadInstance?.tipo}"/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'fechaInicio', 'error')} ">
            <label for="fechaInicio" class="control-label col-xs-3">
                <g:message class="form-control" code="registroNovedad.fechaInicio.label" default="Fecha Inicio" />

            </label>
            <div class="col-xs-7">
                <g:datePicker class="form-control" name="fechaInicio" precision="day"  value="${registroNovedadInstance?.fechaInicio}" default="none" noSelection="['': '']" />
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'fechaFinal', 'error')} ">
            <label for="fechaFinal" class="control-label col-xs-3">
                <g:message  class="form-control" code="registroNovedad.fechaFinal.label" default="Fecha Final" />

            </label>
            <div class="col-xs-7">
                <g:datePicker name="fechaFinal" precision="day" value="${registroNovedadInstance?.fechaFinal}" default="none" noSelection="['': '']" class="form-control" />
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'estado', 'error')} ">
            <label for="estado" class="control-label col-xs-3">
                <g:message class="form-control" code="registroNovedad.estado.label" default="Estado" />

            </label>
            <div class="col-xs-7">
                <g:textField class="form-control" name="estado" maxlength="20" value="${registroNovedadInstance?.estado}"/>
            </div>
        </div>
    </div>

    <div class="form-group">    
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'cantidad', 'error')} required">
            <label for="cantidad" class="control-label col-xs-3">
                <g:message class="form-control" code="registroNovedad.cantidad.label" default="Cantidad" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-xs-7">
                <g:field class="form-control" name="cantidad" type="number" value="${registroNovedadInstance.cantidad}" required=""/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'eliminado', 'error')} required">
            <label for="eliminado" class="control-label col-xs-3">
                <g:message class="form-control" code="registroNovedad.eliminado.label" default="Eliminado" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-xs-7">
                <g:field class="form-control" name="eliminado" type="number" value="${registroNovedadInstance.eliminado}" required=""/>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: registroNovedadInstance, field: 'empleados', 'error')} required">
            <label for="empleados" class="control-label col-xs-3">
                <g:message class="form-control" code="registroNovedad.empleados.label" default="Empleados" />
                <span class="required-indicator">*</span>
            </label>
            <div class="col-xs-7">
                <g:select class="many-to-one form-control" id="empleados" name="empleados.id" from="${nomina.Empleado.list()}" optionKey="id" required="" value="${registroNovedadInstance?.empleados?.id}"/>
            </div>
        </div>
    </div>
</div>

