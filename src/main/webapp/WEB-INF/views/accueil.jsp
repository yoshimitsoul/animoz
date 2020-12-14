<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="fr">
<head>
<link title="style" href="./css/style.css" type="text/css" rel="stylesheet"/>
<meta charset="UTF-8">
<title>Animoz</title>
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
				<nav>
					<a id="effect" href="<c:url value='/espece'/>">Liste des espèces</a>
					<a id="effect" href="<c:url value='/animal'/>">Liste des animaux</a>
					<a id="effect" href="<c:url value='/enclos'/>">Liste des enclos</a>
					<a id="effect" href="<c:url value='/ajoutPopulation'/>">Ajouter des populations</a>
				</nav>
				<div id="clin">Anim'Oz Anim'Oz Anim'Oz</div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>