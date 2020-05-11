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
<title>Index</title>
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

</head>
<body class="index is-preload">
	<c:set var="p1" value="${requestScope['telefono']}" />
	<c:set var="p2" value="${requestScope['usuario']}" />
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<h1 id="logo">
				<a href="/ProyectoEV/IndexController?id=2&idU=${p2.cedula}"> Contactos</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="current"><a href="index.html">
							${p2.nombres} ${p2.apellidos}</a></li>

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

					<div class="containe">
						
						<a href="/ProyectoEV/IndexController?id=1&c=${p2.cedula}"><button
								type="button" class="btn btn-secondary">Registrar</button></a>

					</div>

					<div class="container mt-3">

						<br>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Email</th>
									<th>Tipo</th>
									<th>Operadora</th>
									<th>Numero</th>
									<th>Accion</th>
								</tr>
							</thead>
							<tbody id="myTable">

								<c:forEach var="telf" items="${p1}">
									<tr>
										<td>${p2.correo}</td>
										<td>${telf.tipo}</td>
										<td>${telf.operadora}</td>
										<td>${telf.numero}</td>
										<td><a
											href="/ProyectoEV/EditarContacto?id=${telf.telf_id}&idUser=${p2.cedula}"
											class="btn btn-info">Editar</a> <a
											href="/ProyectoEV/EliminarContacto?id=${telf.telf_id}&idUser=${p2.cedula}"
											class="btn btn-outline-danger">Eliminar</a></td>
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