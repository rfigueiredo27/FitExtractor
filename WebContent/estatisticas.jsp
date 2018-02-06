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
<script src="js/load.js" type="text/javascript"></script>
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
				<h3><strong>Total de Atividades por Faixa Etária (Global)</strong></h3>
				<table id="tabela4" class="table-striped table-bordered table-hover" style="width: 100%">
					<jsp:useBean id="faixa"	class="br.cefetrj.fitextractor.dao.ListarDao" />
					<c:set var="items" value="${faixa.getTotalFaixa()}" />
					<thead>
						<tr>
							<th>Posição</th>
							<th>Faixa Etária</th>
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i4=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i4+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i4++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<hr class="my-4">
				<div class="col-sm-12">
				<h3> <strong>Atividades, divididos em Faixa Etária e separados por Modalidade </strong></h3>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i5=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i5+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i6=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i6+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i7=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i7+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i7++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-12">
				<h3><strong>Atividades por Faixa Etária e Modalidade quando o Gênero for Feminino</strong></h3>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i8=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i8+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i9=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i9+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i10=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i10+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i10++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
				<div class="col-sm-12">
				<h3><strong>Atividades por Faixa Etária e Modalidade quando o Gênero for Masculino</strong></h3>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i11=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i11+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i12=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i12+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
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
							<th>Total</th>
							<th>Percentual (%)</th>
						</tr>
					</thead>
					<tbody>
					<%int i13=1; %>
					<c:forEach var="lista" items="${items}">
						<tr>
							<td><%=i13+"º" %></td>
							<td>${lista.faixa_etaria}</td>
							<td>${lista.total_atividades}</td>
							<td>${lista.percentual}%</td>
						<tr>
						<% i13++; %>
					</c:forEach>
					</tbody>
				</table>
				</div>
			<hr>
		</div>
		<div class="row">
			<h3>Dados Agrupados na seguinte ordem: Gênero >> Faixa Etária >> Modalidade >> Período</h3>
			<p>Leva-se em consideração o horário em que a atividade é <strong>iniciada</strong> nos períodos a seguir:</p>
			<h4>Manhã: 06:00 - 11:59</h4>
			<h4>Tarde: 12:00 - 17:59</h4>
			<h4>Noite: 18:00 - 23:59</h4>
			<h4>Madrugada: 00:00 - 05:59</h4>
			<br>
			<div class="dataTables_wrapper">
				<div style="float: left;">
					<h3 style="margin-top: 2px;">
						Filtros:&nbsp&nbsp
					</h3>
				</div>
				<div style="float: left;">
					<table class="tableIndexLista table-striped table-hover">
						<tr id="filter_col1" data-column="0">
							<td align="right"><b>&nbsp&nbsp Genero:</b></td>
							<td align="left">
							<select class="column_filter"
								id="col0_filter">
								<option value="">Todos</option>
								<option value="F">Feminino</option>
								<option value="M">Masculino</option>
							 </select>	
							</td>
						</tr>
					</table>
				</div>
				<div style="float: left;">
					<table class="tableIndexLista table-striped table-hover">
						<tr id="filter_col2" data-column="1">
							<td align="right"><b>&nbsp&nbsp Faixa Etária:</b></td>
							<td align="left">
							<select class="column_filter"
								id="col1_filter">
								<option value="">Todas</option>
								<option value="0-30">0-30</option>
								<option value="31-50">31-50</option>
								<option value="51 ou mais">51 ou mais</option>
							</select>
							</td>
								
						</tr>
					</table>
				</div>
				
				<div style="float: left;">
					<table class="tableIndexLista table-striped table-hover">
						<tr id="filter_col3" data-column="2">
							<td align="right"><b>&nbsp&nbsp Modalidade:</b></td>
							<td align="left">
							<select class="column_filter"
								id="col2_filter">
								<option value="">Todas</option>
								<option value="CAMINHADA">CAMINHADA</option>
								<option value="CICLISMO">CICLISMO</option>
								<option value="CORRIDA">CORRIDA</option>
							</select>		
							</td>
						</tr>
					</table>
				</div>
				
				<div style="float: left;">
					<table class="tableIndexLista table-striped table-hover">
						<tr id="filter_col4" data-column="3">
							<td align="right"><b>&nbsp&nbsp Periodo:</b></td>
							<td align="left">
							<select class="column_filter"
								id="col3_filter">
								<option value="">Todos</option>
								<option value="MANHÃ">MANHÃ</option>
								<option value="TARDE">TARDE</option>
								<option value="NOITE">NOITE</option>
								<option value="MADRUGADA">MADRUGADA</option>
							</select>
							</td>
						</tr>
					</table>
				</div>

			</div>
			<br>
			<div class="dataTables_wrapper">
				<table id="tabela100"
					class="display" style="width: 100%;">
					<thead>
						<tr>
							<th>Gênero</th>
							<th>Faixa Etaria</th>
							<th>Modalidade</th>
							<th>Período</th>
							<th>Total</th>
							<th>Percentual</th>
						</tr>
					</thead>
					<tbody>
						<jsp:useBean id="estatistica" class="br.cefetrj.fitextractor.dao.ListarDao" />
						<c:set var="items" value="${estatistica.getParametrosAglomerados()}" />
						<c:forEach var="lista" items="${items}">
							<tr>
								<td>${lista.genero}</td>
								<td>${lista.faixa_etaria}</td>
								<td>${lista.desc_atividade}</td>
								<td>${lista.desc_periodo}</td>
								<td>${lista.total_atividades}</td>
								<td>${lista.percentual}%</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<a class="btn btn-primary" href="index.jsp" style="margin-top: -5px;">Voltar a Página Inicial</a>
	<c:import url="rodape.jsp" />
	
	<script type="text/javascript">
		$(document)
				.ready(
						function tabela_dinamica() {
							$(".display")
									.DataTable(
											{
												"scrollX" : true,

												"oLanguage" : {
													"sEmptyTable" : "Nenhum registro encontrado",
													"sInfo" : "Mostrando de _START_ at\u00e9 _END_ de _TOTAL_ registros",
													"sInfoEmpty" : "Mostrando 0 at\u00e9 0 de 0 registros",
													"sInfoFiltered" : "(Filtrados de _MAX_ registros)",
													"sInfoPostFix" : "",
													"sInfoThousands" : ".",
													"sLengthMenu" : "Exibir _MENU_ Resultados por p\u00e1gina",
													"sLoadingRecords" : "Carregando...",
													"sProcessing" : "Processando...",
													"sZeroRecords" : "Nenhum registro encontrado",
													"sSearch" : "Filtrar todas as Colunas",
													"oPaginate" : {
														"sNext" : "Pr\u00f3ximo",
														"sPrevious" : "Anterior",
														"sFirst" : "Primeiro",
														"sLast" : "\u00daltimo"
													}
												},

												responsive : true,

												"order" : [ [ 0, "desc" ] ],

											});

						});

		function filterGlobal() {
			$('#tabela100').DataTable().search($('#global_filter').val(),
					$('#global_regex').prop('checked'),
					$('#global_smart').prop('checked')).draw();
			$('#tabela100').DataTable().search($('#global_filter2').val(),
					$('#global_regex2').prop('checked'),
					$('#global_smart2').prop('checked')).draw();
		}

		function filterColumn(i) {
			$('#tabela100').DataTable().column(i).search(
					$('#col' + i + '_filter').val(),
					$('#col' + i + '_regex').prop('checked'),
					$('#col' + i + '_smart').prop('checked')).draw();
		}

		$(document).ready(function() {
			$('#tabela100').DataTable();

			$('select.global_filter').on('keyup click', function() {
				filterGlobal();
			});

			$('select.column_filter').on('keyup click', function() {
				filterColumn($(this).parents('tr').attr('data-column'));
			});

		});

		function filterGlobal2() {
			$('#tabela2').DataTable().search($('#global_filter').val(),
					$('#global_regex').prop('checked'),
					$('#global_smart').prop('checked')).draw();
		}

		function filterColumn2(i) {
			$('#tabela2').DataTable().column(i).search(
					$('#col2' + i + '_filter').val(),
					$('#col2' + i + '_regex').prop('checked'),
					$('#col2' + i + '_smart').prop('checked')).draw();
		}

		$(document).ready(function() {
			$('#tabela2').DataTable();

			$('input.global_filter2').on('keyup click', function() {
				filterGlobal2();
			});

			$('input.column_filter2').on('keyup click', function() {
				filterColumn2($(this).parents('tr').attr('data-column'));
			});
		});
	</script>
</body>