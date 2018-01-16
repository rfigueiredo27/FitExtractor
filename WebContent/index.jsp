<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name='viewport' content='width=device-width, initial-scale=1'/>
<title>FitExtractor</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<script src="js/load.js" type="text/javascript"></script>
<style>
.linha-vertical {
	height: 450px; /*Altura da linha*/
	border-left: 1px solid;
	margin-left: 60px;
	margin-right: -60px;
	color: black;
	
}
h1, h2, h3, h4, h5{
color: black;
}
</style>
</head>
<body>	
	<div class="container" id="conteudo">
		<div class="row">
			<div align="center">
				<img class="img-responsive" src="images/twit.png" alt="twit">
			</div>
			<h3 align="center" style="color: black; font-weight: 400;">O FitExtractor extrai dados do FitRank.</h3>
			<div class="col-sm-6">
				<h1 align="center" style="color: black; font-weight: 400;">
					Extração de Dados
				</h1>
				<div class="text-center carousel-inner center-block">
					<h1 class="center">
						<a class="btn btn-success btn-lg" href="insereTudo"><h1 style="color: white;">iniciar processo</h1></a>
					</h1>
					<h4>Total de Dados Extraídos:
						<jsp:useBean id="total"	class="br.cefetrj.fitextractor.dao.ListarDao" />
						<c:set var="items" value="${total.getTotal()}" />
						<c:forEach var="lista" items="${items}"><strong>${lista.total_atividades}</strong></c:forEach>
					</h4>		
				</div>
			</div>
			<div class="col-sm-6">
				<h1 align="center" style="color: black; font-weight: 400;">Lista de Atividades extraídas por APP</h1>
				<div class="text-center" >
					<jsp:useBean id="app"	class="br.cefetrj.fitextractor.dao.ListarDao" />
						<c:set var="items" value="${app.getApps()}" />
						<c:forEach var="lista" items="${items}">
						<strong>${lista.ultima_data}</strong>
							<a class="btn btn-default active" href="listar_atividades?app=${lista.id_app}">${lista.nome_app}</a>
						</c:forEach>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<h1 align="center" style="color: black; font-weight: 400;">Estatísticas Gerais</h1>
				<div class="text-center carousel-inner center-block">
					<h1 class="center">
							<a class="btn btn-primary btn-lg" href="estatisticas.jsp"><h1 style="color: white;">Acessar dados</h1></a>
					</h1>
				</div>
			</div>
			<div class="col-sm-6">
				<h1 align="center" style="color: black; font-weight: 400;">Análise de Desempenho</h1>
				<div class="text-center">
					<jsp:useBean id="atividades" class="br.cefetrj.fitextractor.dao.ListarDao" />
						<c:set var="items" value="${atividades.getAtividades()}" />
						<c:forEach var="lista" items="${items}">
							<h3 style="margin-top: -10px;"><a class="btn btn-danger" href="desempenho.jsp?atividade=${lista.desc_atividade}">${lista.desc_atividade}</a></h3>
						</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<c:import url="rodape.jsp" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.parallax.js"></script>
	<script type="text/javascript" src="js/coundown-timer.js"></script>
	<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
	<script type="text/javascript" src="js/jquery.nav.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	
	

</body>
</html>