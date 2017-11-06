<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="dev.sgp.entite.Departement"%>
<%@page import="dev.sgp.util.Constantes"%>
<%
	Collaborateur collab = (Collaborateur) request.getAttribute("collaborateur");
%>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/detail.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/titre.css">

<jsp:include page="../script.jsp"></jsp:include>

<script>
	function valider(){
		document.forms[0].action="<%=request.getContextPath()%>/collaborateurs/editer";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
</script>

<title>Editer collaborateur</title>
</head>
<body class=container-fluid>

	<form class="col-8 offset-2">

		<div class="form-inline">
			<img src="<%=collab.getPhoto()%>" alt="Photo" class="col-4 offset-4">
			<h1 class="col-6"><%=collab.getNom()%>
				-
				<%=collab.getPrenom()%>
				-
				<%=collab.getMatricule()%>
				<input type=hidden name="matricule"
					value="<%=collab.getMatricule()%>" />
			</h1>
			<span class="input-group-addon col-3"> <input
				name="desactiver" type="checkbox"
				<%if (!collab.isCollaboActif()) {%> checked <%}%>> <label
				class="border-label">Désactiver</label>
			</span>
		</div>

		<div id="accordion" role="tablist">
			<div class="card">
				<div class="card-header" role="tab" id="headingOne">
					<h5 class="mb-0">
						<a data-toggle="collapse" href="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne"> Identité </a>
					</h5>
				</div>

				<div id="collapseOne" class="collapse show" role="tabpanel"
					aria-labelledby="headingOne" data-parent="#accordion">
					<div class="card-body">
						<div class="col" id="contact_form">
							<fieldset>
								<div class="col">
									<div class="form-group">
										<label class="col">Civilité :</label>
										<div class="selectContainer">
											<div class="input-group">
												<select name="civilite" class="form-control selectpicker">
													<option>Monsieur</option>
													<option>Madame</option>
													<option>Mademoiselle</option>
												</select>
											</div>
										</div>
									</div>
								</div>

								<div class="form-group">
									<label class="col">Nom :</label> <label class="bordered col-12"><%=collab.getNom()%></label>
								</div>

								<div class="form-group">
									<label class="col">Prénom :</label> <label
										class="bordered col-12"><%=collab.getPrenom()%></label>
								</div>

								<div class="form-group">
									<label class="col">Adresse :</label> <input name="adresse"
										type="text" class="col-12" value="<%=collab.getAdresse()%>" />
								</div>

								<div class="form-group">
									<label class="col">Date de naissance :</label> <label
										class="col-12 bordered"><%=collab.getDateDeNaissance()%></label>
								</div>

								<div class="form-group">
									<label class="col">Numéro de sécurité sociale :</label> <label
										class="col-12 bordered"><%=collab.getNumeroDeSecuriteSocial()%></label>
								</div>

								<div class="form-group">
									<label class="col">Téléphone :</label> <input name="telephone"
										type="text" class="col-12" value="<%=collab.getTelephone()%>" />
								</div>
								<div class="form-group">
									<label class="col">Email :</label> <input type="text"
										class="col-12" value="<%=collab.getEmailPro()%>" />
								</div>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" role="tab" id="headingTwo">
					<h5 class="mb-0">
						<a class="collapsed" data-toggle="collapse" href="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo"> Poste </a>
					</h5>
				</div>
				<div id="collapseTwo" class="collapse" role="tabpanel"
					aria-labelledby="headingTwo" data-parent="#accordion">
					<div class="card-body">
						<div class="col" id="contact_form">
							<fieldset>
								<div class="col">
									<div class="form-group">
										<label class="col">Departement :</label>
										<div class="selectContainer">
											<div class="input-group">
												<select name="departement" class="col">
													<%
														for (Departement departement : Constantes.DEPART_SERVICE.listerDepartments()) {
													%>
													<option
														<%if (departement.equals(collab.getDepartement())) {%>
														selected <%}%>><%=departement.getNom()%></option>
													<%
														}
													%>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="col">Nom</label> <input type="text"
											class="col-12" name="fonction"
											value="<%=collab.getFonction()%>" />
									</div>
								</div>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" role="tab" id="headingThree">
					<h5 class="mb-0">
						<a class="collapsed" data-toggle="collapse" href="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							Coordonnées bancaires </a>
					</h5>
				</div>
				<div id="collapseThree" class="collapse" role="tabpanel"
					aria-labelledby="headingThree" data-parent="#accordion">
					<div class="card-body">
						<div class="col" id="contact_form">
							<fieldset>
								<div class="col">
									<div class="form-group">
										<label class="col">IBAN</label> <input type="text" name="iban"
											class="col-12" value="<%=collab.getIban()%>" />
									</div>
									<div class="form-group">
										<label class="col">BIC</label> <input type="text" name="bic"
											class="col-12" value="<%=collab.getBic()%>" />
									</div>
								</div>
							</fieldset>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<input type="button" value="Sauvegarder" id="sauvegarder"
				class="col-2 offset-10 top bottom btn btn-outline-success"
				onclick="valider()">
		</div>
	</form>
</body>
</html>
