<!DOCTYPE html>
<html lang="es">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Administrador</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                <link  href="${resource(dir: 'js/AdminTemplate/css', file: 'bootstrap.min.css')}" rel="stylesheet" />
		
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
                 <link  href="${resource(dir: 'js/AdminTemplate/css', file: 'styles.css')}" rel="stylesheet" />		
                <g:layoutHead/>		
	</head>
	<body>
         
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">SI Nomina</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i> ${session["nombre"]} <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="">Perfil</a></li>
                    </ul>
                </li>
                <li><a href="/Nomina/Login/cerrarSesion"><i class="glyphicon glyphicon-lock"></i> Salir</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <a href="#"><strong><i class="glyphicon glyphicon-wrench"></i> Principal</strong></a>

            <hr>

            <ul class="nav nav-stacked">
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#userMenu">Propiedades <i class="glyphicon glyphicon-chevron-down"></i></a>
                    <ul class="nav nav-stacked collapse in" id="userMenu">
                        <li class="active"> <a href="empleado"><i class="glyphicon glyphicon-triangle-right"></i> Empleados</a></li>
                        <li class="active"> <a href="nominas"><i class="glyphicon glyphicon-triangle-right"></i> Nominas</a></li>
                        <li class="active"> <a href="registroNovedad"><i class="glyphicon glyphicon-triangle-right"></i> Registro de novedades</a></li>
                        
                    </ul>
                </li>
                
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#menu2"> Avanzado <i class="glyphicon glyphicon-chevron-right"></i></a>

                    <ul class="nav nav-stacked collapse" id="menu2">
                        <li><a href="Usuario"><i class="glyphicon glyphicon-triangle-right"></i> Usuario</a></li>
                        <li><a href="RolUsuario"><i class="glyphicon glyphicon-triangle-right"></i> Rol Usuario</a></li>
                        <li><a href="RolOpcionOperacion"><i class="glyphicon glyphicon-triangle-right"></i> Rol Opcion Operacion</a></li>
                        <li><a href="Rol"><i class="glyphicon glyphicon-triangle-right"></i> Rol </a></li>
                        <li><a href="Operacion"><i class="glyphicon glyphicon-triangle-right"></i> Operacion </a></li>
                        <li><a href="Opcion"><i class="glyphicon glyphicon-triangle-right"></i> Opcion </a></li>
                    </ul>
                </li>
            </ul>

       

       
        </div>
        <!-- /col-3 -->
        <div class="col-sm-9">

            <!-- column 2 -->
            
            <a href="#"><strong><i class="glyphicon glyphicon-dashboard"></i> Administrador</strong></a>
            <hr>

            <div class="row">
                <!-- center left-->
                <div class="col-md-9">
                     <g:layoutBody/>
                </div>
                <!--/col-->              
            </div>
            <!--/row-->

            <hr>

         
        </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<footer class="text-center">Marlon Guerra, Leonardo Romero, Hugo Tilano</strong></a></footer>


               <script src="${resource(dir: 'js', file: 'jquery-2.1.4.js')}"></script>		
	       <script src="${resource(dir: 'js/AdminTemplate/js', file: 'bootstrap.min.js')}"></script>
               <script src="${resource(dir: 'js/AdminTemplate/js', file: 'scripts.js')}"></script>              
	</body>
</html>