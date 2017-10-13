<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<section id="twitter">
	<div id="twitter-feed" class="carousel slide">
		<div class="twit">
			<img class="img-responsive" src="images/twit.png" alt="twit">
		</div>
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="text-center carousel-inner center-block">

					
					<h2 class="center">
						<a class="a2" href="ListaURL2">Listar Todos</a>
					</h2>
					<h2 class="center">
						<font color="black"> Lista de URL's por Aplicativos </font>
					</h2>
					<h3 class="center">
						<a class="a2" href="ListaURL?app=162918433202">Runtastic</a>	
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=84697719333">Nike</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=1571997839755230">Polar Flow</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=284597785309">Strava</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=62572192129">RunKeeper</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=34785190853">MapMyWalk</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=202423869273">Endomondo Sports Tracker</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=44829295357">MapMyFitness</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=43211574282">MapMyRun</a>
					</h3>
					
					<h3 class="center">
						<a class="a2" href="ListaURL?app=43656497834">MapMyRide</a>
					</h3>

				</div>
			</div>
		</div>
	</div>
	</section>


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