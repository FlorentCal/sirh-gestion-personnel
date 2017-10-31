package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;
import dev.sgp.util.ErrorBuilder;

public class AjouterCollaborateurController extends HttpServlet {

	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/collab/Ajouter_Collaborateur.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doTask(req, resp);
	}

	private void doTask(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateDeNaissance = req.getParameter("dateDeNaissance");
		String adresse = req.getParameter("adresse");
		String numeroDeSecuriteSocial = req.getParameter("secu"); 

		String error = ErrorBuilder.buildError("Nom : " + nom, 
				"Prenom : " + prenom,
				"Date de naissance : " + dateDeNaissance, 
				"Adresse : " + adresse, 
				"Numero de securite sociale : " + numeroDeSecuriteSocial
				);

		if(!error.equals("")){
			resp.sendError(400, "Les paramètres suivants sont incorrects : \n" + error);
			return;
		}	

		resp.setStatus(201);
		
		
		String[] datesNaissance = dateDeNaissance.split("/");
		LocalDate newDateDeNaissance = LocalDate.of(Integer.parseInt(datesNaissance[2]), Integer.parseInt(datesNaissance[1]),Integer.parseInt(datesNaissance[0]));
				
		collabService.sauvegarderCollaborateur(new Collaborateur(
				nom, 
				prenom, 
				newDateDeNaissance, 
				adresse,
				numeroDeSecuriteSocial));
		
		req.setAttribute("listeCollaborateurs", Constantes.COLLAB_SERVICE.listerCollaborateurs().stream()
				.filter(collaborateur -> collaborateur.isCollaboActif()).collect(Collectors.toList()));
		
		req.getRequestDispatcher("/WEB-INF/views/collab/Lister_Collaborateurs.jsp").forward(req, resp);
		
				
	}

}
