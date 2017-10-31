package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class ListerCollaborateursController extends HttpServlet {

	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("listeCollaborateurs", Constantes.COLLAB_SERVICE.listerCollaborateurs());
		req.setAttribute("afficherDesactiver", null);
		req.setAttribute("departement", null);
		req.getRequestDispatcher("/WEB-INF/views/collab/Lister_Collaborateurs.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {	
		doTask(req, resp);
	}

	private void doTask(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Optional<Departement> departement= Constantes.DEPART_SERVICE.listerDepartments()
				.stream()
				.filter(dep -> dep.getNom().equals(req.getParameter("departement")))
				.findFirst();
		List<Collaborateur> collaborateurs = Constantes.COLLAB_SERVICE.listerCollaborateurs();
		
		String chercher = req.getParameter("chercherNom");
		
		if (chercher!=null) {
			collaborateurs = collaborateurs
					.stream()
					.filter(collab -> collab.getNom().toLowerCase().contains(chercher.toLowerCase())
									||collab.getPrenom().toLowerCase().contains(chercher.toLowerCase()))
					.collect(Collectors.toList());	
		
			req.setAttribute("chercherNom", chercher);
		}
		
		if(departement.isPresent()){
			collaborateurs = collaborateurs
					.stream()
					.filter(collab -> collab.getDepartement().equals(departement.get()))
					.collect(Collectors.toList());	
		}
		
		if(req.getParameter("afficherDesactiver")==null){
			collaborateurs = collaborateurs
					.stream()
					.filter(Collaborateur::isCollaboActif)
					.collect(Collectors.toList());
		}
		
		req.setAttribute("listeCollaborateurs", collaborateurs);
		req.setAttribute("afficherDesactiver", req.getParameter("afficherDesactiver"));
		req.setAttribute("departement", req.getParameter("departement"));
		req.getRequestDispatcher("/WEB-INF/views/collab/Lister_Collaborateurs.jsp").forward(req, resp);
	}

}
