<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<link title="style" href="./css/style.css" type="text/css"
	rel="stylesheet" />
<title>Ajouter un animal</title>
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
						<form:form servletRelativeAction="/ajoutAnimal"
							modelAttribute="animalDto">
							<div id="formulaire">
								<ul>
									<li><form:label path="nom">Nom</form:label><br> <form:input
											path="nom" />
									<li><form:label path="nom">Origine</form:label><br> <form:input
											path="Origine" /></li>
									<li><form:label path="nom">Description</form:label><br>
										<form:textarea path="description" /></li>
									<li><form:label path="nom">Espèce</form:label><br> <form:input
											path="Espece" /> <form:select path="espece.id">
											<form:options items="${especes}" itemLabel="nom"
												itemValue="id" />
										</form:select></li>
									<li><form:label path="regime">Regime: 
										<form:select path="regime">
												<form:options items="${regimes}" />
											</form:select>
										</form:label>

										<br><button type="submit">Valider</button></li>
								</ul>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>