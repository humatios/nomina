<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="perfectum">
        <g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>         
        <g:if test="${flash.message}">
            <div  class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="col-lg-12">
            <h1 class="text-center alert alert-success"><strong>Acceso Denegado</strong></h1>
            <div class="panel panel-success">
                <div class="panel-heading">
                    <i class="fa fa-fw fa-check"></i>Sistema de seguridad de opciones y responsabilidades
                </div>
                <div class="panel-body">
                    <p class="text-justify">
                    <h1> Por favor contacte al Administrador de sitemas para verificar sus opciones de acceso.</h1>
                    </p>                    
                </div>
            </div>
        </div>
    </body>
</html>