package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		
		String error = ErrorBuilder.buildError("Matricule : " + matricule, "Titre : " + titre, "Nom : " + nom, "Prenom : " + prenom);
		
		if(!error.equals("")){
			resp.sendError(400, "Les paramètres suivants sont incorrects : \n" + error);
		}	
		
		resp.setStatus(201);
		// code HTML ecrit dans le corps de la reponse
		resp.getWriter().write(PageBuilder.buildPage("Matricule : " + matricule, "Titre : " + titre, "Nom : " + nom, "Prenom : " + prenom));
	}

}
