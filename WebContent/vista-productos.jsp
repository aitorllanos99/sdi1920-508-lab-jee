<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Vista Productos</title>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- Contenido -->
	<div class="container" id="contenedor-principal">
		<h2>Vista-Productos</h2>
		<div>
			<jsp:useBean id="productosService"
				class="com.uniovi.sdi.ProductosService" />
			<c:forEach var="producto" begin="0"
				items="${productosService.productos}">
				<div>
					<img src="<c:out value="${producto.imagen}"/>" />

					<c:out value="${producto.nombre}" />

					<c:out value="${producto.precio}" />
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>