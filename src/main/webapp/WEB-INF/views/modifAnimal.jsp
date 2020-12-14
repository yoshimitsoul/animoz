<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Modifier animal</title>
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
							<a id="effectbis" href="<c:url value='/'/>">Accueil</a> <a
								id="effectbis" href="<c:url value='/animal'/>">Liste des
								animaux</a>
						</nav>
						<form:form servletRelativeAction="/animal/${animal.id}/modif"
							modelAttribute="animal">
							<h2>Nom</h2>
							<input type="text" value="${animal.nom}">
							<input type="hidden" value="${animal.nom}" name="nomAnimal">
							<h2>Orgine</h2>
							<input type="text" value="${animal.origine}">
							<input type="hidden" value="${animal.origine}"
								name="origineAnimal">
							<h2>Espèce</h2>
							<input type="text" value="${animal.espece.nom}">
							<input type="hidden" value="${animal.origine}"
								name="especeAnimal">
							<h2>Description</h2>
							<input type="text" value="${animal.description}">
							<input type="hidden" value="${animal.description}"
								name="descriptionAnimal">
							<h2>Regime</h2>
							<input type="text" value="${animal.regime}">
							<input type="hidden" value="${animal.regime}" name="regimeAnimal">
							<button type="submit" name="modifier" value="modifier">Modifier</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>