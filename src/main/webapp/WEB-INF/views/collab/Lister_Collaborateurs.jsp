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

<script>
		function chercher(){
			document.forms[0].action="<%=request.getContextPath()%>/collaborateurs/lister";
			document.forms[0].method = "POST";
			document.forms[0].submit();
	}
</script>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/titre.css">
	
<jsp:include page="../script.jsp"></jsp:include>

<title>Liste collaborateurs</title>
</head>
<body class="col-10 offset-1">
	<form>
		<div class="row">
			<div class="col-4">
				<h1>Les collaborateurs</h1>
			</div>
			<div class="col-2 offset-4">
				<a class="right btn btn-outline-success" type="submit"
					href="/sgp/collaborateurs/ajouter" role="button">Ajouter un
					nouveau collaborateur</a>
			</div>
		</div>
		<div class="form-inline col-10 offset-1">
			<span class="left col-3">Rechercher par nom ou prénom : </span>
			<%
				String chercher = (String) request.getAttribute("cherchernom");
			%>
			<input type="text" class="form-control" id="nom" name="chercherNom"
				<%if (chercher != null) {%> value=<%=chercher%> <%}%>>
			<button class="col-1 btn btn-outline-success" name="departement"
				type="button" onclick="chercher()">Rechercher</button>
			<div class="col-4 input-group">
				<span class="input-group-addon"> <input onchange="chercher()"
					class="form-check-input" type="checkbox" name="afficherDesactiver"
					<%String string = (String) request.getAttribute("afficherDesactiver");
			if (string != null) {%>
					checked <%}%>>
				</span> <label>Voir les collaborateurs désactivés</label>
			</div>
		</div>
		<div class="form-inline col-10 offset-1">
			<span class="col-3 left">Filtrer par département : </span>
			<div class="dropdown">
				<select class="custom-select" name="departement"
					onchange="chercher()">
					<option <%if (request.getAttribute("departement") == null) {%>
						selected <%}%>>Tous</option>
					<%
						for (Departement departement : Constantes.DEPART_SERVICE.listerDepartments()) {
					%>
					<option
						<%if (request.getAttribute("departement") != null
						&& request.getAttribute("departement").equals(departement.getNom())) {%>
						selected <%}%>><%=departement.getNom()%></option>
					<%
						}
					%>
				</select>
			</div>
		</div>
		<div class="row">
			<%
				List<Collaborateur> listeCollaborateurs = (List<Collaborateur>) request.getAttribute("listeCollaborateurs");
				for (Collaborateur collab : listeCollaborateurs) {
			%>
			<div class="col-4 case">
				<div class="top form-inline">
					<h4 class="col-6 bold"><%=collab.getNom() + " " + collab.getPrenom()%></h4>
					<div class="col-3 offset-3">
						<a
							href="<%=request.getContextPath()%>/collaborateurs/editer?matricule=<%=collab.getMatricule()%>"
							class="btn btn-outline-success" role="button">Editer</a>
					</div>
				</div>
				<img class="col-6 offset-3" src=<%=collab.getPhoto()%> alt="Photo">
				<div class="form-inline">
					<p class="col-5 left-p">Fonction :</p>
					<p class="col-7"><%=collab.getFonction()%>
					</p>
				</div>
				<div class="form-inline">
					<p class="col-5 left-p">Departement :</p>
					<p class="col-7">
						<%=collab.getDepartement().getNom()%></p>
				</div>
				<div class="form-inline">
					<p class="col-5 left-p">Email :</p>
					<p class="col-7"><%=collab.getEmailPro()%>
					</p>
				</div>
				<div class="form-inline">
					<p class="col-5 left-p">Telephone :</p>
					<p class="col-7">
						<%=collab.getTelephone()%></p>
				</div>
			</div>
			<%
				}
			%>

		</div>
	</form>
</body>
</html>
