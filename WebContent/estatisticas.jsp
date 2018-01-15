<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'/>
<title>Pós Processamento</title>
<style>
.linha-vertical {
	height: 450px; /*Altura da linha*/
	border-left: 1px solid;
	margin-left: 60px;
	margin-right: -60px;
	color: black;
	
}
h1, h2, h4, h3, h5, body{
color: black;
}
</style>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<h1>Análises Estatísticas</h1>
			<br>
			
			<h3>Total de Atividades Extraídas:
						<jsp:useBean id="total"	class="br.cefetrj.fitextractor.dao.ListarDao" />
						<c:set var="items" value="${total.getTotal()}" />
						<c:forEach var="lista" items="${items}"><strong>${lista.total_atividades}</strong></c:forEach>
			</h3>
			<hr>
			<h3>Total de Atividades por Aplicativos</h3>
				<table id="tabela2" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${total_app.getTotalPorApps()}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Aplicativo</th>
							<th>Total de Atividades</th>
						</tr>
					</thead>
					<tbody>
					<%int i=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i+"º" %></td>
							<td>${lista.nome_app}</td>
							<td>${lista.total_atividades}</td>
						<tr>
						<% i++; %>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			<h3>Percentual de Atividades por Período do Dia</h3>
			<div class="dataTables_wrapper">
			<table id="tabela3" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="percent_hora"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${percent_hora.getPercentPeriodo()}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período do Dia</th>
							<th>Porcentagem (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i2=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i2+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.percentual}</td>
						<tr>
						<% i2++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
			<hr>
		</div>
	</div>
	<a class="btn btn-primary" href="index.jsp" style="margin-top: -5px;">Voltar a Página Inicial</a>
	<c:import url="rodape.jsp" />
	
</body>