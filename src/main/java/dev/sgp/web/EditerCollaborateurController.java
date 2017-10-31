package dev.sgp.web;

import java.io.IOException;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.entite.Departement;
import dev.sgp.util.Constantes;

public class EditerCollaborateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Optional<Collaborateur> collabo = Constantes.COLLAB_SERVICE.listerCollaborateurs()
				.stream()
				.filter(col -> col.getMatricule() == Integer.parseInt(req.getParameter("matricule")))
				.findFirst();
		
		if (collabo.isPresent()){
			req.setAttribute("collaborateur", collabo.get());
		}
		
		req.getRequestDispatcher("/WEB-INF/views/collab/Editer_Collaborateur.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Optional<Collaborateur> c = Constantes.COLLAB_SERVICE.listerCollaborateurs().stream()
				.filter(collab -> collab.getMatricule() == Integer.parseInt(req.getParameter("matricule"))).findFirst();
		
		if (c.isPresent()){
		
			Collaborateur collaborateur = c.get();
			
			collaborateur.setAdresse(req.getParameter("adresse"));
			collaborateur.setTelephone(req.getParameter("telephone"));
			collaborateur.setIban(req.getParameter("iban"));
			collaborateur.setBic(req.getParameter("bic"));
			collaborateur.setFonction(req.getParameter("fonction"));
			
			if(req.getParameter("desactiver") == null){
				collaborateur.setCollaboActif(true);
			}else{
				collaborateur.setCollaboActif(false);
			}
			
			Optional<Departement> departement= Constantes.DEPART_SERVICE.listerDepartments()
					.stream().filter(d -> d.getNom().equals(req.getParameter("departement")))
					.findFirst();
			if(departement.isPresent()){
				collaborateur.setDepartement(departement.get());
			}
			req.setAttribute("listeCollaborateurs", Constantes.COLLAB_SERVICE.listerCollaborateurs()
					.stream()
					.filter(collab -> collab.isCollaboActif())
					.collect(Collectors.toList()));
			req.getRequestDispatcher("/WEB-INF/views/collab/Lister_Collaborateurs.jsp").forward(req, resp);
			
		}
		

	}

}
