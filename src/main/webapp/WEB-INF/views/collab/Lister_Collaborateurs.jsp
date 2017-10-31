<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="dev.sgp.entite.Departement"%>
<%@page import="dev.sgp.util.Constantes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="initial-scale=1, maximum-scale=1">

<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/css/theme.css">
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/css/titre.css">

<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>

<title>Liste collaborateurs</title>
</head>
<body class ="col-10 offset-1">

	<div class="row">
		<div class="col-4">
			<h1>Les collaborateurs</h1>	
		</div>
		<div class="col-2 offset-4" >
			<a class="right btn btn-outline-success" type="submit"  href="/sgp/collaborateurs/ajouter" role="button">Ajouter un nouveau collaborateur</a>
		</div>
	</div>
	<div>
		<form class="form-inline col-10 offset-1">
			<span class="left col-3">Rechercher par nom ou prénom : </span>
			<input class="col-3 form-control" type="search" placeholder="Rechercher" aria-label="Search">
			<button class="col-1 btn btn-outline-success" type="submit">Rechercher</button>
			<div class="col-4 input-group">
				<span class="input-group-addon"> <input type="checkbox">
				</span> <label>Voir les collaborateurs désactivés</label>
			</div>
		</form>
		<form class="form-inline col-10 offset-1">
			<span class="col-3 left">Filtrer par département : </span>
			<div class="dropdown">
				<select class="custom-select">
					<option>Tous</option>
					<%for (Departement departement : Constantes.DEPART_SERVICE.listerDepartments()){ %>
						<option <%=departement.getNom()%>></option>
					<%} %>
				</select>
			</div>
		</form>
		<div class="row">
			<%
			List<Collaborateur> listeCollaborateurs = (List<Collaborateur>) request.getAttribute("listeCollaborateurs");
			for (Collaborateur collab : listeCollaborateurs) {
			%>
			<div class="col-4 case">
				<form class="top form-inline">
					<h4 class="col-6 bold"><%=collab.getNom() + " " + collab.getPrenom() %></h4>
					<div class="col-3 offset-3">
						<a href="<%=request.getContextPath()%>/collaborateurs/editer?matricule=<%=collab.getMatricule()%>"
							class="btn btn-outline-success" role="button">Editer</a>
					</div>
				</form>
				<img class="col-6 offset-3" src=<%= collab.getPhoto() %> alt="Photo">
				<div class="form-inline">
					<p class="col-5 left-p">Fonction :</p><p class="col-7"><%=collab.getFonction() %> </p>
				</div>
				<div class="form-inline">
					<p class="col-5 left-p">Departement :</p><p class="col-7"> <%=collab.getDepartement().getNom() %></p>
				</div>
				<div class="form-inline">
					<p class="col-5 left-p">Email :</p><p class="col-7"><%=collab.getEmailPro() %> </p>
				</div>
				<div class="form-inline">
					<p class="col-5 left-p"> Telephone :</p><p class="col-7"> <%=collab.getTelephone() %></p>
				</div>
			</div>
			<%
			}
			%>

		</div>

</body>
</html>
