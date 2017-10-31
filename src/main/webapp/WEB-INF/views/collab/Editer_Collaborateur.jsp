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
		href="<%= request.getContextPath() %>/css/detail.css">
	
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
	<link rel="stylesheet"
		href="//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css" />
	<script type="text/javascript"
		src="//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/js/bootstrapValidator.min.js"></script>

	<script>
		function valider(){
			document.forms[0].action="<%=request.getContextPath()%>/collaborateurs/editer";
			document.forms[0].method = "POST";
			document.forms[0].submit();
		}
	</script>

<title>Editer collaborateur</title>
</head>
<body>
	<div class="container">
		<form class="form-inline">
			<img src="<%=collab.getPhoto()%>" alt="Photo" class="col-8 offset-1">
			<h1 class="col-6"><%=collab.getNom()%>
				-
				<%=collab.getPrenom()%>
				-
				<%=collab.getMatricule()%>
				<input type=hidden name="matricule"
					value="<%=collab.getMatricule()%>" />
			</h1>
			<div class="form-inline">
				<span class="input-group-addon col-3"> <input type="checkbox"
					<%if(!collab.isCollaboActif()){ %> checked <%} %>>
				</span> <label class="border-label">Désactiver</label>
			</div>
		</form>
		<form>
			<div id="accordion" role="tablist">
				<div class="card">
					<div class="card-header" role="tab" id="headingOne">
						<h5 class="mb-0">
							<a data-toggle="collapse" href="#collapseOne"
								aria-expanded="true" aria-controls="collapseOne"> Identité </a>
						</h5>
					</div>

					<div id="collapseOne" class="collapse show" role="tabpanel"
						aria-labelledby="headingOne" data-parent="#accordion">
						<div class="card-body">
							<form class="well form-horizontal" action=" " method="post"
								id="contact_form">
								<fieldset>
									<form class="form-inline">
										<div class="form-group">
											<label class="control-label">Civilité :</label>
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
									</form>

									<div class="form-group">
										<label class="col">Nom :</label> <label
											class="bordered col-12"><%=collab.getNom()%></label>
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
							</form>
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
							<form class="well form-horizontal" action=" " method="post"
								id="contact_form">
								<fieldset>
									<form class="form-inline">
										<div class="form-group">
											<label class="control-label">Departement :</label>
											<div class="selectContainer">
												<div class="input-group">
													<select name="departement" class="col">
														<%for (Departement dep : Constantes.DEPART_SERVICE.listerDepartments()){ %>
														<option <%if(dep.equals(collab.getDepartement())){%>
															selected <%} %>><%=dep.getNom()%></option>
														<%} %>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col">Nom</label> <input type="text"
												class="col-12" name="fonction"
												value="<%=collab.getFonction()%>" />
										</div>
									</form>
								</fieldset>
							</form>
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
							<form class="well form-horizontal" action=" " method="post"
								id="contact_form">
								<fieldset>
									<form class="form-inline">
										<div class="form-group">
											<label class="col">IBAN</label>
											<input type="text" name="iban" class="col-12" value="<%=collab.getIban()%>" />
										</div>
										<div class="form-group">
											<label class="col">BIC</label>
											<input type="text" name="bic" class="col-12" value="<%=collab.getBic()%>" />
										</div>
									</form>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div>
					<input type="button" value="Sauvegarder" id="sauvegarder" class="bottom btn btn-outline-success" onclick="valider()">
				</div>
			</div>
		</form>
	</div>
</body>
</html>
