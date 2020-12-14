<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<link title="style" href="../css/style.css" type="text/css"
	rel="stylesheet" />
<meta charset="UTF-8">
<title>Animoz - <c:out value="${animal.nom}" /></title>
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
						<h1>Bienvenue chez Anim'Oz&nbsp;!</h1>
						<nav id='navi'>
							<a id="effectter" href="<c:url value='/'/>">Accueil</a> <a
								id="effectter" href="<c:url value='/animal'/>">Liste des
								animaux</a>
						</nav>
						<h1 id="titleAn">
							<c:out value="${animal.nom}"/>
						</h1>
						<div class ="flex">
							<h2>Origine</h2>
							<c:out value="${animal.origine}"/>
						</div>
						<div class ="flex">
							<h2>Espèce</h2>
							<c:out value="${animal.espece.nom}" />
						</div>
						<div>
							<h2>Infos diverses</h2>
							Régime&nbsp;:
							<c:out value="${animal.regime}"/>
							<h2>Population totale sur le site&nbsp;:</h2>
							<c:out value="${animal}"/>
						</div>

						<h2>Description</h2>
						<div id="desc">
							<c:out value="${animal.description}"/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>