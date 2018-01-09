<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FitExtractor</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
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
	
	<div class="container">
		<div class="row">
			<div align="center">
				<img class="img-responsive" src="images/twit.png" alt="twit">
			</div>
			<h3 align="center" style="color: black; font-weight: 400;">O FitExtractor Efetua a Extração de Dados do FitRank e mostra algumas estatísticas após essa extração.</h3>
			<div class="col-sm-5">
				<h1 align="center" style="color: black; font-weight: 400;">Pré
					Extração</h1>
				<div class="text-center carousel-inner center-block">
					<h3 class="center">
						<a class="btn btn-success btn-lg" href="insereTudo">efetuar extração</a>
					</h3>
					<h4>Total de Dados Extraídos:</h4>
					<h4>Data e Hora da última Extração:</h4>
				</div>
			</div>
			<div class="linha-vertical col-sm-1"></div>
			<div class="col-sm-5">
				<h1 align="center" style="color: black; font-weight: 400;">Pós
					Extração</h1>
				<div class="text-center carousel-inner center-block">

					<h3 class="center">
						<a class="a2" href="ListaPos">Listar Todos</a>
					</h3>
					<h3 class="center">
						<font color="black"> Lista de URL's por Aplicativos </font>
					</h3>
					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=162918433202">Runtastic</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=84697719333">Nike</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=1571997839755230">Polar Flow</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=284597785309">Strava</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=62572192129">RunKeeper</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=34785190853">MapMyWalk</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=202423869273">Endomondo
							Sports Tracker</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=44829295357">MapMyFitness</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=43211574282">MapMyRun</a>
					</h4>

					<h4 class="center">
						<a class="a2" href="ListaPosApp?app=43656497834">MapMyRide</a>
					</h4>

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