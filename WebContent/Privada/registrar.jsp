<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>RegistrarContacto</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="/ProyectoEV/config/styles/assets/css/main.css" />
<link rel="stylesheet"
	href="/ProyectoEV/config/styles/assets/css/noscript.css" />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" href="/ProyectoEV/config/styles/stylesRT.css">
<script type="text/javascript"
	src="/ProyectoEV/config/JS/validaciones.js"></script>
</head>
<body class="index is-preload">
	<c:set var="p1" value="${requestScope['usuario']}" />
	<c:set var="p2" value="${requestScope['idc']}" />
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1 id="logo">
				<a href="/ProyectoEV/IndexController?id=2&idU=${p1.cedula}">
					Contactos</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="current"><a href="index.html"> ${p1.nombres}
							${p1.apellidos}</a></li>

					<li><a href="/ProyectoEV/CerrarSesion" class="button primary">Salir</a></li>
				</ul>
			</nav>
		</header>

		<!-- Banner -->
		<section id="banner">

			<!--
						".inner" is set up as an inline-block so it automatically expands
						in both directions to fit whatever's inside it. This means it won't
						automatically wrap lines, so be sure to use line breaks where
						appropriate (<br />).
					-->
			<div class="inner">

				<div class="container">
					<div class="contenido">

						<div class="contenedor">

							<form action="/ProyectoEV/RegistrarContacto?ced=${p2}"
								method="POST" onsubmit="return validarCamposObligatorios()">
								<div class="container">
									<h1>Registrar contacto:</h1>
									<hr>

									<label for="tipo"><b>Tipo</b></label>
									<div class="container mt-3">
										<select name="tip" id="seleccion" class="custom-select mb-3">
											<option selected>Seleccionar</option>
											<option value="Celular">Celular</option>
											<option value="Telefono">Telefono</option>
										</select>
									</div>


									<label for="numero"><b>Numero</b></label> <input id="numerosID"
										type="text" placeholder="Ingresar el numero" name="numerotxt"
										onkeypress="ValidarTelefono(event, 'mensajeTelefono', this)"
										required><span id="mensajeTelefono"></span> <label
										for="operadora"><b>Operadora</b></label> <input type="text"
										id="operadoraID" placeholder="Ingresar operadora"
										name="operadoratxt"
										onkeypress="ValidarLetras(event, 'operadoramss', this)"
										required><span id="operadoramss"></span>

									<hr>

									<button type="submit" value="registrarTelf"
										name="registrartelf" class="registerbtn">Registrar</button>
								</div>

							</form>

						</div>

					</div>



				</div>


			</div>

		</section>



		<!-- Footer -->
		<footer id="footer">

			<ul class="icons">
				<li><a href="#" class="icon brands circle fa-twitter"><span
						class="label">Twitter</span></a></li>
				<li><a href="#" class="icon brands circle fa-facebook-f"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon brands circle fa-google-plus-g"><span
						class="label">Google+</span></a></li>
				<li><a href="#" class="icon brands circle fa-github"><span
						class="label">Github</span></a></li>
				<li><a href="#" class="icon brands circle fa-dribbble"><span
						class="label">Dribbble</span></a></li>
			</ul>

			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>

		</footer>

	</div>

	<!-- Scripts -->
	<script src="/ProyectoEV/config/styles/assets/js/jquery.min.js"></script>
	<script
		src="/ProyectoEV/config/styles/assets/js/jquery.dropotron.min.js"></script>
	<script src="/ProyectoEV/config/styles/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="/ProyectoEV/config/styles/assets/js/jquery.scrollex.min.js"></script>
	<script src="/ProyectoEV/config/styles/assets/js/browser.min.js"></script>
	<script src="/ProyectoEV/config/styles/assets/js/breakpoints.min.js"></script>
	<script src="/ProyectoEV/config/styles/assets/js/util.js"></script>
	<script src="/ProyectoEV/config/styles/assets/js/main.js"></script>

</body>
</html>