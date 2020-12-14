<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<link title="style" href="./css/style.css" type="text/css" rel="stylesheet"/>
<title>Animoz - Ajout population d'animaux</title>
</head>
<body>
		<nav>
			<a href="<c:url value='/'/>">Accueil</a>
		</nav>
		<h1>Ajouter une population d'animaux</h1>
			<form:form servletRelativeAction="/ajoutPopulation" modelAttribute="population">
				<form:label path="animal.id">Animal : </form:label>
				<form:select path="animal.id">
					<form:options items="${animaux}" itemLabel="nom" itemValue="id"/>
				</form:select>
				<form:errors path="animal"></form:errors>
				<form:label path="nombreIndividus">Nombre d'individus : </form:label>
				<form:input type="number" path="nombreIndividus"/>
				<form:label path="enclos.id">Numéro d'enclos :</form:label>
					<form:select path="enclos.id">
						<form:options items="${enclos}" itemLabel="numero" itemValue="id"/>
					</form:select>
				<form:errors></form:errors>
				<button type="submit">Ajouter</button>
			</form:form>
</body>
</html>