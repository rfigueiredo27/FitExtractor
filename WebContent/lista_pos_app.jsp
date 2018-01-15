<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'/>
<link rel="stylesheet" type="text/css"	href="DataTable/css/jquery.dataTables.css">
<script type="text/javascript" language="javascript" src="DataTable/js/jquery.dataTables.js"></script>
<title>Pós Processamento</title>
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
			<h2>Lista de Atividades que já foram extraídas</h2>

			<br>
			
			<div class="dataTables_wrapper">
				<table id="tabela"
					class="tableIndexLista table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>Data</th>
							<th>Nome Usuário</th>
							<th>NOME_APP</th>
							<th>Modalidade</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%int cont = 1; %>
						<c:forEach items="${ atividade }" var="atividade">
							<tr>
								<td>${atividade.data_publicacao}</td>
								<td>${atividade.nome_usuario}</td>
								<td>${atividade.nome_app}</td>
								<td>${atividade.modalidade}</td>
								<td align="center"><a class='btn btn-success' href="detalhes?url=${atividade.url_atividade }&nome=${atividade.nome_usuario }&id_usu=${atividade.id_usuario}
								&id_app=${atividade.id_app}&nome_app=${atividade.nome_app}&modalidade=${atividade.modalidade}&id_atividade=${atividade.id_atividade}
								&distancia=${atividade.distancia_percorrida}&duracao=${atividade.duracao}&data=${atividade.data_publicacao}&hora=${atividade.horario}&calorias=${atividade.calorias}
								&ritmo=${atividade.ritmo_medio}&velocidade=${atividade.velocidade_media}">Detalhes</a></td>
							</tr>
							<% cont++; %>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<h4 align="center">
		<strong>Total de Registros: <%=cont-1%></strong>
	</h4>
	<a class="btn btn-primary" href="index.jsp" style="margin-top: -5px;">Voltar a Página Inicial</a>
	<c:import url="rodape.jsp" />

<script type="text/javascript">
$(document)
.ready(
		function tabela_dinamica () {
			$("#tabela")
			.DataTable(
					{
						"oLanguage": {
							"sEmptyTable": "Nenhum registro encontrado",
						    "sInfo": "Mostrando de _START_ at\u00e9 _END_ de _TOTAL_ registros",
						    "sInfoEmpty": "Mostrando 0 at\u00e9 0 de 0 registros",
						    "sInfoFiltered": "(Filtrados de _MAX_ registros)",
						    "sInfoPostFix": "",
						    "sInfoThousands": ".",
						    "sLengthMenu": "Exibir _MENU_ Resultados por p\u00e1gina",
						    "sLoadingRecords": "Carregando...",
						    "sProcessing": "Processando...",
						    "sZeroRecords": "Nenhum registro encontrado",
						    "sSearch": "Filtro",
						    "oPaginate": {
						        "sNext": "Pr\u00f3ximo",
						        "sPrevious": "Anterior",
						        "sFirst": "Primeiro",
						        "sLast": "\u00daltimo"
							}
						},

						"order": [[ 0, "desc" ]],

					});
		});


</script>

</body>