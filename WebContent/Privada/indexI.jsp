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
<title>Contactos</title>
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
<script type="text/javascript" src="/ProyectoEV/config/JS/validaciones.js"></script>	
</head>
<body class="index is-preload">
	<c:set var="p1" value="${requestScope['telefono']}" />
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1 id="logo">
				<a href="/ProyectoEV/IndexController?id=3">
					Contactos</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="current"><a href="index.html"> </a></li>

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
					<div class="container mt-3">



						<form action="/ProyectoEV/Buscar?id=1" method="POST" >
							<div class="input-group mb-3 input-group-sm">
								<div class="input-group-prepend">
									<button class="input-group-text" name="buscarCorreo"
										value="correoB" type="submit">Buscar</button>

								</div>
								<input type="text" class="form-control" name="correo"
									placeholder="Buscar por correo....." required>
							</div>
						</form>




						<form action="/ProyectoEV/Buscar?id=2" method="POST" >
							<div class="input-group mb-3 input-group-sm">
								<div class="input-group-prepend">
									<button class="input-group-text" name="buscarCed"
										value="cedulaB" type="submit">Buscar</button>

								</div>
								<input type="text" id="cedulaID" class="form-control" name="cedula"
									placeholder="Buscar por cedula....." >
							</div>
						</form>


						<br>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Nombres</th>
									<th>Email</th>
									<th>Tipo</th>
									<th>Operadora</th>
									<th>Numero</th>
								</tr>
							</thead>
							<tbody id="myTable">

								<c:forEach var="telf" items="${p1}">
									<tr>
										<td>${telf.nombres}${telf.apellidos}</td>
										<td>${telf.correo}<a href="mailto:${telf.correo} "><img
												width="25px" height="25px"
												src="https://img.icons8.com/flat_round/64/000000/secured-letter--v1.png" /></a></td>
										<td>${telf.tipo}</td>
										<td>${telf.operadora}</td>
										<td>${telf.numero}<a href="tel:${telf.numero} "><img
												width="25px" height="25px"
												src="https://img.icons8.com/ultraviolet/40/000000/phone.png" /></a>
										</td>
									</tr>

								</c:forEach>
							</tbody>
						</table>
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