<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Polar</title>
<link rel="stylesheet" type="text/css"
	href="DataTable/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" language="javascript"
	src="DataTable/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="DataTable/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript"
	src="DataTable/js/tabela.js"></script>
</head>
</head>
<body>
	<br />
	<br />
	<br />
	<br />
	<br />
	<h3 align="center">Detalhes da Atividade</h3>
	<div class="contact-section">
	<div class="container">
		<div class="row"><br>
			
			<form class="form-horizontal">
				<c:forEach items="${ tabela }" var="pf">
										<div class="form-group">
					<label class="control-label col-sm-4">Código do Usuario:</label>
					<div class="col-sm-8"> 
						<input type="text" name="id_usu"	class="form-control"  value="${pf.id_usuario}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Nome do Usuário:</label>
					<div class="col-sm-8"> 
						<input type="text" name="nome_usu"	class="form-control "  value="${pf.nome_usuario}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Id Aplicativo:</label> 
					<div class="col-sm-8">
						<input type="text" name="id_app"	class="form-control"  value="${pf.id_app}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Nome do APP:</label> 
					<div class="col-sm-8">
						<input type="text" name="nome_app"	class="form-control"  value="${pf.nome_app}">
					</div>
					</div>
										
					<div class="form-group">
					<label class="control-label col-sm-4">Modalidade:</label> 
					<div class="col-sm-8">
						<input type="text" name="modalidade" class="form-control"  value="${pf.tipo_atividade}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Data da Atividade:</label> 
					<div class="col-sm-8">
						<input type="text" name="data"	class="form-control"  value="${pf.data_atividade}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Hora da Atividade:</label> 
					<div class="col-sm-8">
						<input type="text" name="hora"	class="form-control"  value="${pf.hora_atividade}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Duracao:</label> 
					<div class="col-sm-8">
						<input type="text" name="duracao"	class="form-control"  value="${pf.duracao}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Distância (Km):</label> 
					<div class="col-sm-8">
						<input type="number" name="distancia"	class="form-control"  value="${pf.distancia}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Calorias:</label> 
					<div class="col-sm-8">
						<input type="number" name="calorias" class="form-control"  value="${pf.calorias}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Ritmo Medio:</label> 
					<div class="col-sm-8">
						<input type="text" name="ritmo_medio" class="form-control"  value="${pf.ritmo_medio}">
					</div>
					</div>
					
					<div class="form-group">
					<label class="control-label col-sm-4">Velocidade Média (Km/h):</label> 
					<div class="col-sm-8">
						<input type="number" name="vel_media"	class="form-control"  value="${pf.velocidade_media}">
					</div>
					</div>
					
 					</c:forEach>

					<a class="btn btn-danger" onClick="history.go(-1)">Voltar</a>
					<br>
				
			</form>
				<br>
		</div>
	</div>
	</div>
	

	<c:import url="rodape.jsp" />

</body>