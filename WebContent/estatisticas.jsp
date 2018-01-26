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
			<div class="col-sm-12">
			<h3><strong>Total de Atividades por Aplicativos</strong></h3>
				<table id="tabela2" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_app"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${total_app.getTotalPorApps()}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Aplicativo</th>
							<th>Total de Atividades</th>
							<th>Percentual</th>
						</tr>
					</thead>
					<tbody>
					<%int i=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i+"º" %></td>
							<td>${lista.nome_app}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
			<hr>
				<div class="col-sm-6">
				<h3><strong>Total de Atividades por Gênero</strong></h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="total_genero"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${total_genero.getAtivGenero()}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Gênero</th>
							<th>Total</th>
							<th>Percentual</th>
							
						</tr>
					</thead>
					<tbody>
					<%int i3=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i3+"º" %></td>
							<td>${lista.genero}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i3++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-7">
				<h3><strong>Percentual de Atividades por Faixa Etária (Global)</strong></h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="faixa"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${faixa.getTotalFaixa()}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i4=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i4+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i4++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<hr class="my-4">
				<div class="col-sm-12">
				<h3> <strong>Percentual de Atividades, divididos em Faixa Etária e separados por Modalidade </strong></h3>
				</div>
				<div class="col-sm-4">
				<h3>Corrida</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="corrida" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${corrida.getTotalFaixaAtiv('CORRIDA')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i5=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i5+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i5++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-4">
				<h3>Ciclismo</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="ciclismo" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${ciclismo.getTotalFaixaAtiv('CICLISMO')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i6=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i6+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i6++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-4">
				<h3>Caminhada</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="caminhada" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${caminhada.getTotalFaixaAtiv('CAMINHADA')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i7=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i7+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i7++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-12">
				<h3><strong>Percentual de Atividades por Faixa Etária e Modalidade quando o Gênero for Feminino</strong></h3>
				</div>
				<div class="col-sm-4">
				<h3>Corrida</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="fem1" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${fem1.getTotalFaixaGeneroAtiv('CORRIDA','F')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i8=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i8+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i8++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-4">
				<h3>Ciclismo</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="fem2" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${fem2.getTotalFaixaGeneroAtiv('CICLISMO','F')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i9=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i9+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i9++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-4">
				<h3>Caminhada</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="fem3" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${fem3.getTotalFaixaGeneroAtiv('CAMINHADA', 'F')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i10=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i10+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i10++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-12">
				<h3><strong>Percentual de Atividades por Faixa Etária e Modalidade quando o Gênero for Masculino</strong></h3>
				</div>
				<div class="col-sm-4">
				<h3>Corrida</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="mas1" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${mas1.getTotalFaixaGeneroAtiv('CORRIDA','M')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i11=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i11+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i11++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-4">
				<h3>Ciclismo</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="mas2" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${mas2.getTotalFaixaGeneroAtiv('CICLISMO','M')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i12=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i12+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i12++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-4">
				<h3>Caminhada</h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="mas3" class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${mas3.getTotalFaixaGeneroAtiv('CAMINHADA', 'M')}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i13=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i13+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i13++; %>
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