<%-- 
    Document   : inscription
    Created on : Oct 23, 2016, 8:20:51 PM
    Author     : thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<title>JMLESSOUS - Inscription en ligne</title>
		<link rel="stylesheet" href="siteWeb.css"></link>
		<meta charset="utf-8" />
	</head>

	<body>
	
		<div id="en_tete">
			<h1>CREER SON COMPTE CLIENT</h1>
		</div>		
		
		<div id="InfosPerso">
			<h3>Informations personnelles</h3>
			<input type="radio" id="rad1" name="sexe" value="Monsieur"/>
			<label for="rad1">Monsieur</label>
			<input type="radio" id="rad2" name="sexe" value="Madame"/>
			<label for="rad2">Madame</label>
			<input type="radio" id="rad3" name="sexe" value="Mademoiselle"/>
			<label for="rad3">Mademoiselle</label><br><br>
                        
                        <form id="identify" action="CreateClientServlet" method="post">
			<input type=text placeholder="NOM" name="id" id="id1"/>
			<input type=text placeholder="Prénom" name="id" id="id2" /><br><br>
			<label for="date">Date de naissance</label>
			<input  type="date" placeholder="Date de naissance" id="date"/><br><br>
                        <label for=text >Creer votre mot de passe </label>
                        <input type=text placeholder="Mot de passe" name="id" id="id3"/><br><br>
                        </form>
		</div>
		
		<div id="VosJustificatifs">
		<h3>Vos justificatifs</h3>
		<label for="file1">Justificatif d'identité</label>
		<input type=file  name="justificatifs" id="file1"/><br><br>
		<label for="file2">Justificatif de domicile</label>
		<input type=file  name="justificatifs" id="file2"/><br><br>
		<label for="file3">Justificatifs de revenus</label>
		<input type=file  name="justificatifs" id="file3"/><br><br>
		<label for="file4">RIB</label>
		<input type=file  name="justificatifs" id="file4"/><br><br>
		<label for="file5">Signature manuscrite</label>
		<input type=file  name="justificatifs" id="file5" /><br><br>
		<input type="submit" id="valider" name="nouveauCompte" value="Valider"/> 
		<input type="reset" name="nouveauCompte" id="reinitialiser" value="Reinitialiser"/> <br><br>
		</div>
		
		<div id="pied_de_page">
		<a href="./accueil.html"><img width="100" height="100" src="./Images/accueil.png"/></a>
		</div>

	</body>
	
</html>