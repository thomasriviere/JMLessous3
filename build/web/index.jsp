<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>

	<head>
		<title>JMLESSOUS - Accueil</title>
		<link rel="stylesheet" href="accueil.css"></link>
		<meta charset="utf-8" />
	</head>

	<body>
	
		<div id="en_tete">
			<img width =500 src="./Images/JMLESSOUSlogo.png"/>
		</div>
				
		<div id="presentation">
			<div id="aPropos">
				<p>Bienvenue sur le site web de votre banque en ligne.</p>
				<p>Leader de la banque en ligne, JMLESSOUS est là  pour vous.<br>
				Une banque 100% en ligne, et complétement sécurisé.</p>
				<p>N'hésitez donc pas à  nous rejoindre dès à  présent.<br>
				Remplissez le formulaire en ligne, insérez vos pièces justificatives et un conseiller s'assurera de valider votre compte sous les 48h qui suivent.</p>
				<p>Vous pourrez ensuite aisaiment gérer et effectuer vos transactions en ligne, librement et en toute sécurité.</p>
				<p>N'hésitez plus, Rejoignez nous</p>
			</div>
			<div id="Produits">
				<h1>Nos produits</h1>
				<p>
					<ul>
					<li>Compte courant <a target="blank" id="infos" href="./accueil.html">[en savoir plus]</a></li>
					<li>Compte epargne <a target="blank" id="infos" href="./accueil.html">[en savoir plus]</a></li>
					<li>Assurances vie <a target="blank" id="infos" href="./accueil.html">[en savoir plus]</a></li>
					<li>Credits <a target="blank" id="infos" href="./accueil.html">[en savoir plus]</a></li>
					<li>Comptes titres <a target="blank" id="infos" href="./accueil.html">[en savoir plus]</a></li>
					</ul>
				</p>
			</div>
		</div>
		
		<div id="connexion">
			<h3>Connexion</h3>
                        <form id="identify" action="VerifierCoServlet" method="post">
			<input type=text placeholder="Identifiant" name="id" id="id" style="box-shadow:0 0 6px"/>	<br><br>
			<input type=password placeholder="Mot de passe" id="mdp" name="mdp" size=20 align=left maxlength=10 style="box-shadow:0 0 6px" /><br><br>
			<input type="submit" id="valider" name="identification" value="Valider"/> 
			<input type="reset" name="identification" id="effacer" value="Effacer"/> <br><br>
                        </form>
			<a href="./inscription.jsp"><input type="button" value="Creer un compte" style="cursor:pointer; color:red"  /></a>
			<br><br>
                        
                        <c:forEach var="client" begin="0" items="${requestScope.clientList}">
                            <tr>
                                <td>${client.id}&nbsp;&nbsp;</td> 
                                <td>${client.mdp}&nbsp;&nbsp;</td> 
                            </tr> 

                        </c:forEach>
		</div>
		
		

		
	</body>
	
</html>