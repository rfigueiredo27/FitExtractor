<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pós Processamento</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
</head>
<body>
	<br />
	<br />
	<br />
	<br />
	<br />
	<div class="container">
		<div class="row">
			<center>
			<h2>Análises de Desempenho das Atividades</h2>
			<br>
			<h4>Total de Atividades de ${param.atividade}:
				<jsp:useBean id="total"	class="br.cefetrj.fitextractor.dao.UrlDAO" />
				<c:set var="items" value="${total.getTotalAtiv(param.atividade)}" />
				<c:forEach var="lista" items="${items}"><strong>${lista.total_atividades}</strong></c:forEach>
			</h4>
			<hr>
			<h3>Análise das Médias de Parâmetros separados por Períodos</h3>
			<h6>Manhã: 06:00 - 11:59</h6>
			<h6>Tarde: 12:00 - 17:59</h6>
			<h6>Noite: 18:00 - 23:59</h6>
			<h6>Madrugada: 00:00 - 05:59</h6>
			</center>
			<hr>
			<h5 align="center"><strong>Análise de Dados Exatos (Distância, Duração, Velocidade Média e Ritmo Médio)</strong></h5>
			<hr>
			<div class="col-sm-6">
			<h5>Período X Distância</h5>
				<table id="tabela1" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app"	class="br.cefetrj.fitextractor.dao.UrlDAO" />
					<c:set var="items" value="${total_app.getMediaDistancia(param.atividade)}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período</th>
							<th>Média Distância - Km (${param.atividade})</th>
						</tr>
					</thead>
					<tbody>
					<%int i=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.kmedia}</td>
						<tr>
						<% i++; %>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			</div>
			<div class="col-sm-6">
			<h5>Período X Duração</h5>
				<table id="tabela2" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app2"	class="br.cefetrj.fitextractor.dao.UrlDAO" />
					<c:set var="items" value="${total_app.getMediaDuracao(param.atividade)}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período</th>
							<th>Média Duração - hh:mm:ss (${param.atividade})</th>
						</tr>
					</thead>
					<tbody>
					<%int i2=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i2+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.kmedia_tempo}</td>
						<tr>
						<% i2++; %>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			</div>
			
			<div class="col-sm-6">
			<h5>Período X Velocidade</h5>
				<table id="tabela3" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app3"	class="br.cefetrj.fitextractor.dao.UrlDAO" />
					<c:set var="items" value="${total_app3.getMediaVelocidadeMedia(param.atividade)}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período</th>
							<th>Média Velocidade - Km/h (${param.atividade})</th>
						</tr>
					</thead>
					<tbody>
					<%int i3=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i3+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.kmedia}</td>
						<tr>
						<% i3++; %>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			</div>
			<div class="col-sm-6">
			<h5>Período X Ritmo</h5>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app4"	class="br.cefetrj.fitextractor.dao.UrlDAO" />
					<c:set var="items" value="${total_app4.getMediaRitmo(param.atividade)}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período</th>
							<th>Média de Ritmo - min/km (${param.atividade})</th>
						</tr>
					</thead>
					<tbody>
					<%int i4=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i4+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.kmedia_tempo}</td>
						<tr>
						<% i4++; %>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			</div>
			<hr>
			<div class="col-sm-12" align="center">
			<h5 align="center"><strong>Análise de Dados Aproximados (Gasto médio de Calorias)</strong></h5>
			<h5>Período X Calorias (≈)</h5>
				<table id="tabela5" class="table-striped table-bordered table-hover" style="width: 50%">
					<jsp:useBean id="total_app5"	class="br.cefetrj.fitextractor.dao.UrlDAO" />
					<c:set var="items" value="${total_app5.getMediaCalorias(param.atividade)}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período</th>
							<th>Média de Calorias (≈) - Kcal (${param.atividade})</th>
						</tr>
					</thead>
					<tbody>
					<%int i5=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i5+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.kmedia}</td>
						<tr>
						<% i5++; %>
					</c:forEach>
					</tbody>
				</table>
			<hr>
			</div>
		</div>
	</div>
	
	<c:import url="rodape.jsp" />
</body>