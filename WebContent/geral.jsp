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
			$( "#load" ).remove();
			$( "#conteudo" ).toggleClass( "aparece" );
			
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
 
    $('input.global_filter').on( 'keyup click', function () {
        filterGlobal();
    } );
    
 
    $('input.column_filter').on( 'keyup click', function () {
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

.esconde{
	
	visibility: hidden;
}
.aparece{

	visibility: visible;
}
</style>
</head>
<body>
	<div id="load"><center><img src="images/loader.gif"></center></div>
	<div class="container esconde" id="conteudo" >
		<div class="row">
			<h2>Análise por Gênero</h2>

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
							<td align="left"><input type="search" class="column_filter"
								id="col0_filter"></td>
						</tr>
					</table>
				</div>
				<div style="float: left;">
					<table class="tableIndexLista table-striped table-hover">
						<tr id="filter_col2" data-column="1">
							<td align="right"><b>&nbsp&nbsp Modalidade:</b></td>
							<td align="left"><input type="search" class="column_filter"
								id="col1_filter"></td>
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
							<th>Modalidade</th>
							<th>distancia_media</th>
							<th>duracao_media</th>
							<th>ritmo_medio</th>
							<th>velocidade_media</th>
							<th>caloria_media</th>
							
						</tr>
					</thead>
					<tbody>
						<%int cont = 1; %>
						<jsp:useBean id="genero" class="br.cefetrj.fitextractor.dao.ListarDao" />
						<c:set var="items" value="${genero.getParametrosGenero()}" />
						<c:forEach var="lista" items="${items}">
							<tr>
								<td>${lista.genero}</td>
								<td>${lista.desc_atividade}</td>
								<td>${lista.distancia_media}</td>
								<td>${lista.duracao_media}</td>
								<td>${lista.ritmo_medio}</td>
								<td>${lista.velocidade_media}</td>
								<td>${lista.caloria_media}</td>
							</tr>
							<% cont++; %>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<h2>Análise por Faixa Etária</h2>
			<br>
			<div class="dataTables_wrapper">
				<div style="float: left;">
					<h3 style="margin-top: 2px;">
						Filtros:&nbsp&nbsp
					</h3>
				</div>

				<div style="float: left;">
					<table class="tableIndexLista table-striped table-hover">
						<tr id="filter_col3" data-column="0">
							<td align="right"><b>&nbsp&nbsp Faixa Etária:</b></td>
							<td align="left"><input type="search" class="column_filter2" id="col20_filter"></td>
						</tr>
					</table>
				</div>
				<div style="float: left;">
					<table class="tableIndexLista table-striped table-hover">
						<tr id="filter_col4" data-column="1">
							<td align="right"><b>&nbsp&nbsp Modalidade:</b></td>
							<td align="left"><input type="search" class="column_filter2" id="col21_filter"></td>
						</tr>
					</table>
				</div>

			</div>
			<br>
			<div class="dataTables_wrapper">
				<table id="tabela2"
					class="display" style="width: 100%;">
					<thead>
						<tr>
							<th>Faixa Etária</th>
							<th>Modalidade</th>
							<th>distancia_media</th>
							<th>duracao_media</th>
							<th>ritmo_medio</th>
							<th>velocidade_media</th>
							<th>caloria_media</th>
							
						</tr>
					</thead>
					<tbody>
						
						<jsp:useBean id="faixa" class="br.cefetrj.fitextractor.dao.ListarDao" />
						<c:set var="items" value="${faixa.getParametrosFaixa()}" />
						<c:forEach var="lista" items="${items}">
							<tr>
								<td>${lista.faixa_etaria}</td>
								<td>${lista.desc_atividade}</td>
								<td>${lista.distancia_media}</td>
								<td>${lista.duracao_media}</td>
								<td>${lista.ritmo_medio}</td>
								<td>${lista.velocidade_media}</td>
								<td>${lista.caloria_media}</td>
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