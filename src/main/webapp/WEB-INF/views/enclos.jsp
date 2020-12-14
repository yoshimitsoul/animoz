<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<link title="style" href="./css/style.css" type="text/css"
	rel="stylesheet" />
<title>Enclos</title>
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
							<a id="effectbis" href="<c:url value='/'/>">Accueil</a> <a
								id="effectbis" href="<c:url value='/espece'/>">Liste des
								espèces</a> <a id="effectbis" href="<c:url value='/animal'/>">Liste
								des animaux</a>
						</nav>
						<div id="titleEn">
						<c:forEach items="${enclos}" var="enclos">
							<li><c:out value="${enclos.numero}" /></li>
						</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>