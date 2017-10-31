
$(document).ready(function() {
		$('#contact_form').bootstrapValidator({

			fields: {
				nom: {
					validators: {
						stringLength: {
							min: 2,
							message: 'Le nom doit comporter au moins 2 caractères'
						},
						notEmpty: {
							message: 'Le nom est obligatoire'
						}
					}
				},
				prenom: {
					validators: {
						stringLength: {
							min: 2,
							message: 'Le prénom doit comporter au moins 2 caractères'
						},
						notEmpty: {
							message: 'Le prénom est obligatoire'
						}
					}
				},
				adresse: {
					validators: {
						notEmpty: {
							message: 'L\'adresse est obligatoire'
						}
					}
				},
				dateDeNaissance: {
					validators: {
						date: {
	                        format: 'DD/MM/YYYY',
	                        message: 'Format de date invalide (DD/MM/YYYY)'
	                    },
						notEmpty: {
							message: 'La date de naissance est obligatoire'
						}
					}
				},
				secu: {
					validators: {
						numeric: {
                            message: 'Seulement les chiffres sont acceptés',
                        },
						stringLength: {
							min: 15,
							max: 15,
							message: 'Le numéro de ss doit être d\'exactement 15 caractères'
						},
						notEmpty: {
							message: 'Le numéro de sécurité social est obligatoire'
						}
					}
				}
			}
		})
		.on('success.form.bv', function(e) {
			$('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
			$('#contact_form').data('bootstrapValidator').resetForm();

			// Prevent form submission
			e.preventDefault();

			// Get the form instance
			var $form = $(e.target);

			// Get the BootstrapValidator instance
			var bv = $form.data('bootstrapValidator');
			
			
			
			var saisie_nom = localStorage.getItem('nom');
	        var saisie_prenom = localStorage.getItem('prenom');
	        var saisie_dtn = localStorage.getItem('dateDeNaissance');
	        var saisie_adresse = localStorage.getItem('adresse');
	        var saisie_secu = localStorage.getItem('secu');
	           
	        $('#nomModal').attr('value', saisie_nom);
	        $('#prenomModal').attr('value', saisie_prenom);
	        $('#ddnModal').attr('value', saisie_dtn);
	        $('#adresseModal').attr('value', saisie_adresse);
	        $('#secuModal').attr('value', saisie_secu);
			$("#myModal").modal();

		});


	});
function creer() {
	document.forms[0].action="http://localhost:8080/sgp/collaborateurs/ajouter";
	document.forms[0].method="POST";
	document.forms[0].submit();
}



