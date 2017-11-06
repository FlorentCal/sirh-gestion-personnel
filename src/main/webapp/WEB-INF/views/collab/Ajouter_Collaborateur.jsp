<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../sgp/css/formulaire.css">
<link rel="stylesheet" type="text/css" href="css/titre.css">

<jsp:include page="../script.jsp"></jsp:include>
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css" />
<script type="text/javascript"
	src="//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/js/bootstrapValidator.min.js"></script>


<script type="text/javascript">
	function enregistrer(){
	     localStorage['nom'] = document.getElementById('nom').value;
	     localStorage['prenom'] = document.getElementById('prenom').value;
	     localStorage['dateDeNaissance'] = document.getElementById('dateDeNaissance').value;
	     localStorage['adresse'] = document.getElementById('adresse').value;
	     localStorage['secu']= document.getElementById('secu').value;	
	}
	
</script>
<script src="../../sgp/js/Ajouter_Collaborateur.js"></script>

<title>Ajout Collaborateur</title>
</head>
<body>
	<h1>Nouveau Collaborateur</h1>
	<div class="container">

		<form class="well form-horizontal" id="contact_form">
			<fieldset>

				<div class="form-group">
					<label class="control-label">Nom</label>
					<div class="inputGroupContainer">
						<div class="input-group">
							<input id="nom" name="nom" placeholder="Nom" class="form-control"
								type="text">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Prénom</label>
					<div class="inputGroupContainer">
						<div class="input-group">
							<input id="prenom" name="prenom" placeholder="Prénom" class="form-control"
								type="text">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Adresse</label>
					<div class="inputGroupContainer">
						<div class="input-group">
							<textarea id="adresse" class="form-control" name="adresse"
								placeholder="Adresse"></textarea>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Date de naissance</label>
					<div class="inputGroupContainer">
						<div class="input-group">
							<input id="dateDeNaissance" name="dateDeNaissance" placeholder="DD/MM/YYYY"
								class="form-control" type="text">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label">Numéro de sécurité sociale</label>
					<div class="inputGroupContainer">
						<div class="input-group">
							<input id="secu" name="secu"
								placeholder="Numéro de sécurité sociale" class="form-control"
								type="text">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label"></label>
					<div>
						<button id=="btn-valider" class="btn btn-outline-success" onclick="enregistrer()">Créer</button>
					</div>
				</div>

				<div id="myModal" class="modal fade bd-example-modal-lg" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Création
									d'un collaborateur</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<form>
								<div class="modal-body">
								
									<div class="form-group">
										<label for="recipient-nom" class="lab col-form-label">Nom
											:</label>
										<input id="nomModal" disabled="disabled" type="text" class="lab-value" name="nom">
									</div>
									<div class="form-group">
										<label for="recipient-prenom" class="lab col-form-label">Prénom
											:</label> 
										<input id="prenomModal" disabled="disabled" type="text" class="lab-value" name="prenom">	
										
									</div>
									<div class="form-group">
										<label for="recipient-adresse" class="lab col-form-label">Adresse
											:</label>
										<input id="adresseModal" disabled="disabled" type="text" class="lab-value" name="adresse">
									</div>
									<div class="form-group">
										<label for="recipient-date_naissance"
											class="lab col-form-label">Date de naissance :</label>
										<input id="ddnModal" disabled="disabled" type="text" class="lab-value" name="ddnModal">
									</div>
									<div class="form-group">
										<label for="recipient-secu" class="lab col-form-label">Numéro
											sécurité social :</label> 
										<input id="secuModal" disabled="disabled" type="text" class="lab-value" name="secu">
									</div>

								</div>
							</form>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Annuler</button>
								<a id="btn-creation" class="btn btn-outline-success" type="submit"  href="/sgp/collaborateurs/lister" role="button" onclick="creer()">Confirmer</a>
							</div>
						</div>
					</div>
				</div>

			</fieldset>
		</form>
	</div>
	</div>
</body>
</html>
