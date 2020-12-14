<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html lang="fr">
<head>
<meta charset="UTF-8">
<link title="style" href="./css/style.css" type="text/css"
	rel="stylesheet" />

<title>Animoz - Liste des espèces</title>
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
						<ul>
							<c:forEach items="${especes}" var="espece">
								<li><c:out value="${espece.nom}" /></li>
							</c:forEach>
							<li><form:form servletRelativeAction="/espece"
									modelAttribute="especeDto">
									<form:input path="nom" /><br>
									<button type="submit">Ajouter</button>
								</form:form></li>
							<li><form:form servletRelativeAction="/espece/disparition"
									modelAttribute="especeDto">
									<form:select path="nom">
										<form:options items="${especes}" itemLabel="nom"
											itemValue="nom" />
									</form:select>
									<button type="submit" name="action" value=" supprimer">Supprimer</button>
								</form:form></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>