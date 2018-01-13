<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'/>
<title>Pós Processamento</title>
<link rel="stylesheet" type="text/css"	href="DataTable/css/jquery.dataTables.css">
<script type="text/javascript" language="javascript" src="DataTable/js/jquery.dataTables.js"></script>
<style>
.linha-vertical {
	height: 450px; /*Altura da linha*/
	border-left: 1px solid;
	margin-left: 60px;
	margin-right: -60px;
	color: black;
	
}
h1, h1, h2, h4, h5, body{
color: black;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			 <br>

			<div class="dataTables_wrapper">
				<table id="tabela"
					class="tableIndexLista table-striped table-bordered table-hover">
					<thead>
						<tr>

							<tr>
							<th>Data</th>
							<th>Nome Usuário</th>
							<th>NOME_APP</th>
							<th>Modalidade</th>
							<th>AÇÃO</th>

						</tr>

					</thead>
					<tbody>
						<%int cont = 0; %>
						<c:forEach items="${ urls }" var="urls">
							<tr>
								<td>${urls.data_publicacao}</td>
								<td>${urls.nome_usuario}</td>
								<td>${urls.nome_app}</td>
								<td>${urls.modalidade}</td>	
								<td><a class='btn btn-success' href="ListaPolar?url=${urls.url_atividade }&nome=${urls.nome_usuario }&id_usu=${urls.id_usuario}
								&id_app=${urls.id_app}&nome_app=${urls.nome_app}&modalidade=${urls.modalidade}&id_atividade=${urls.id_atividade}
								&data=${urls.data_publicacao}">Extração</a></td>
							</tr>
							<% cont++; %>
						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
	</div>

	<h4 align="center">
		<strong>Total de Registros: <%out.print(cont); %></strong>
	</h4>
	<a class="btn btn-primary" href="index.jsp" style="margin-top: -5px;">voltar a página inicial</a>
	<c:import url="rodape.jsp" />

</body>