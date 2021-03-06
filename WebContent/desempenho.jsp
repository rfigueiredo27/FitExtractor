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
h1, h2, h3, h4, h5, body{
color: black;
}
</style>
</head>

<body>
	
	<div class="container">
		<div class="row">
			<center>
			<h1>Análises de Desempenho das Atividades</h1>
			<br>
			<h4>Total de Atividades de ${param.atividade}:
				<jsp:useBean id="total"	class="br.cefetrj.fitextractor.dao.ListarDao" />
				<c:set var="items" value="${total.getTotalAtiv(param.atividade)}" />
				<c:forEach var="lista" items="${items}"><strong>${lista.total_atividades}</strong></c:forEach>
			</h4>
			<hr>
			<h2>Análise das Médias de Parâmetros separados por Períodos</h2>
			<p>Leva-se em consideração o horário em que a atividade é <strong>iniciada</strong> nos períodos a seguir:</p>
			<h4>Manhã: 06:00 - 11:59</h4>
			<h4>Tarde: 12:00 - 17:59</h4>
			<h4>Noite: 18:00 - 23:59</h4>
			<h4>Madrugada: 00:00 - 05:59</h4>
			</center>
			<hr>
			<h3>Percentual de Atividades por Período do Dia (Todas as atividades)</h3>
			<table id="tabela3" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="percent_hora"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${percent_hora.getPercentPeriodo()}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período do Dia</th>
							<th>Total</th>
							<th>Porcentagem (%)</th>
							
						</tr>
					</thead>
					<tbody>
					<%int i22=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i22+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
							
						<tr>
						<% i22++; %>
					</c:forEach>
					</tbody>
			</table>
			<h3>Percentual de Atividades por Período do Dia (${param.atividade})</h3>
			<table id="tabela3" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="percent_hora2"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${percent_hora2.getPercentPeriodoAtiv(param.atividade)}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Período do Dia</th>
							<th>Total</th>
							<th>Porcentagem (%)</th>
							
						</tr>
					</thead>
					<tbody>
					<%int i23=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i23+"º" %></td>
							<td>${lista.desc_periodo}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
							
						<tr>
						<% i23++; %>
					</c:forEach>
					</tbody>
			</table>
			<h3 align="center"><strong>Análise de Dados Exatos (Distância, Duração, Velocidade Média e Ritmo Médio)</strong></h3>
			<hr>
			<div class="col-sm-6">
			<h3>Período X Distância</h3>
				<table id="tabela1" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app"	class="br.cefetrj.fitextractor.dao.ListarDao" />
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
			<h3>Período X Duração</h3>
				<table id="tabela2" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app2"	class="br.cefetrj.fitextractor.dao.ListarDao" />
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
			<h3>Período X Velocidade</h3>
				<table id="tabela3" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app3"	class="br.cefetrj.fitextractor.dao.ListarDao" />
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
			<h3>Período X Ritmo</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app4"	class="br.cefetrj.fitextractor.dao.ListarDao" />
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
			<h3 align="center"><strong>Análise de Dados Aproximados (Gasto médio de Calorias)</strong></h3>
			<h3>Período X Calorias (≈)</h3>
				<table id="tabela5" class="table-striped table-bordered table-hover" style="width: 50%">
					<jsp:useBean id="total_app5"	class="br.cefetrj.fitextractor.dao.ListarDao" />
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
	<a class="btn btn-primary" href="index.jsp" style="margin-top: -5px;">Voltar a Página Inicial</a>
	<c:import url="rodape.jsp" />
</body>