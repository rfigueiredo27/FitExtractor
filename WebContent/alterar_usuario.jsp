<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.cefetrj.fitextractor.PolarFlow.model.PolarFlow" %>

		<c:set var="id" value="${ polar.id }" />
		
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Usuário</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script src="js/bootstrap.js"></script>
</head>
<body>
	
	<c:import url="cabecalho.jsp" />
	<br />
	<br />
	<br />
	<br />
	<div class="contact-section">
		<div class="container">
			<div class="row">
				<form class="contact-form" action="AlteraUsuarioController"
					method="POST">
					<h3>Formulário de Cadastro</h3>

					<div class="form-group">
						<input type="text" name="idUsuario" class="form-control"
							required="required" value="${id}">
					</div>
					
					<div class="form-group">
						<input type="text" name="loginUsuario" class="form-control"
							required="required" value="${login }">
					</div>
					<div class="form-group">
						<input type="password" name="senhaUsuario" class="form-control"
							required="required" value="${senha }">
					</div>
					<div class="form-group">
						<input type="text" name="nomeUsuario" class="form-control"
							required="required" value="${nome }">
					</div>
					<div class="form-group">
						<input type="text" name="emailUsuario" class="form-control"
							required="required" value="${email }">
					</div>
					<input class="btn btn-info" type="submit" value="Cadastrar" /> <input
						class="btn btn-warning" type="reset" value="Limpar" /> <a
						class="btn btn-danger" href="ListarUsuarios">Voltar</a>
				</form>
			</div>
		</div>
	</div>
	<c:import url="rodape.jsp" />
</body>
</html>