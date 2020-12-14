<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<link title="style" href="./css/style.css" type="text/css"
	rel="stylesheet" />
<title>Animoz - Liste des animaux</title>
</head>
<body>
	<div class="iphone">
		<div class="steel_band">
			<div class="mute_rocker"></div>
			<div class="volume up"></div>
			<div class="volume down"></div>
			<div class="sleep_wake"></div>
			<div class="plastic_band">
				<div class="glass_face">
					<div class="camera"></div>
					<div class="speaker"></div>
					<div class="home_button"></div>
					<div class="screen">
					<nav id='navi'>
					<h1>Bienvenue chez Anim'Oz&nbsp;!</h1>
							<a id="effectbis" href="<c:url value='/'/>">Accueil</a> 
						</nav>
						<div id="formulaire">
						<ul>
							<c:forEach items="${animaux}" var="animal">
								<li><a href="<c:url value='/animal/${animal.id}'/>"><c:out
											value="${animal.nom}" /></a></li>
							</c:forEach>
						</ul>
						</div>
						<p>
							<a id ="effectbis" href="<c:url value='/ajoutAnimal'/>">Ajouter un animal</a>
						</p>
						<p>
							<a id ="effectbis" href="<c:url value='/ajoutPopulation'/>">Ajouter population</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

