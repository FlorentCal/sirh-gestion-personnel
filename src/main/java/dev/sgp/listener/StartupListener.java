package dev.sgp.listener;

import java.time.LocalDate;
import java.util.stream.Stream;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

@WebListener
public class StartupListener implements ServletContextListener {

	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		Stream.of(
				new Collaborateur("Callaou", "Florent", LocalDate.of(1995, 11, 2), "1 rue du moulin", "523456789123456"),
				new Collaborateur("Noel", "Jean", LocalDate.of(1993, 12, 5), "6 rue de la garde", "123456789123456")
						).forEach(collabService::sauvegarderCollaborateur);
		
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
