<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'/>
<script src="js/load.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"	href="DataTable/css/jquery.dataTables.css">
<script type="text/javascript" language="javascript" src="DataTable/js/jquery.dataTables.js"></script>
<script type="text/javascript">

$(document)
.ready(
		function tabela_dinamica () {
			$(".display")
			.DataTable(
					{
						"scrollX": true,
						
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
						    "sSearch": "Filtrar todas as Colunas",
						    "oPaginate": {
						        "sNext": "Pr\u00f3ximo",
						        "sPrevious": "Anterior",
						        "sFirst": "Primeiro",
						        "sLast": "\u00daltimo"
							}
						},
						
						responsive: true,

						"order": [[ 0, "desc" ]],

					});
			
		});

function filterGlobal () {
    $('#tabela1').DataTable().search(
        $('#global_filter').val(),
        $('#global_regex').prop('checked'),
        $('#global_smart').prop('checked')
    ).draw();
    $('#tabela2').DataTable().search(
            $('#global_filter2').val(),
            $('#global_regex2').prop('checked'),
            $('#global_smart2').prop('checked')
        ).draw();
}
 
function filterColumn ( i ) {
    $('#tabela1').DataTable().column(i).search(
        $('#col'+i+'_filter').val(),
        $('#col'+i+'_regex').prop('checked'),
        $('#col'+i+'_smart').prop('checked')
    ).draw();
}
 
$(document).ready(function() {
    $('#tabela1').DataTable();
 
    $('select.global_filter').on( 'keyup click', function () {
        filterGlobal();
    } );
    
 
    $('select.column_filter').on( 'keyup click', function () {
        filterColumn( $(this).parents('tr').attr('data-column') );
    } );
    
} );




function filterGlobal2 () {
    $('#tabela2').DataTable().search(
        $('#global_filter').val(),
        $('#global_regex').prop('checked'),
        $('#global_smart').prop('checked')
    ).draw();
}
 
function filterColumn2 ( i ) {
    $('#tabela2').DataTable().column(i).search(
        $('#col2'+i+'_filter').val(),
        $('#col2'+i+'_regex').prop('checked'),
        $('#col2'+i+'_smart').prop('checked')
    ).draw();
}
 
$(document).ready(function() {
    $('#tabela2').DataTable();
 
    $('input.global_filter2').on( 'keyup click', function () {
    	filterGlobal2();
    } );
 
    $('input.column_filter2').on( 'keyup click', function () {
        filterColumn2( $(this).parents('tr').attr('data-column') );
    } );
} );


</script>
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
	
	<div class="container esconde" id="conteudo" >
		<div class="row">
			<h2>Análise Estatística de Dados Aglomerados</h2>
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
				<table id="tabela1"
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



</body>