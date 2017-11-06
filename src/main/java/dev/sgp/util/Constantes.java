package dev.sgp.util;

import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.service.FrequentationService;

public class Constantes {
	
	public static DepartementService DEPART_SERVICE = new DepartementService();
	
	public static CollaborateurService COLLAB_SERVICE = new CollaborateurService();
	
	public static FrequentationService FREQUENTATION_SERVICE = new FrequentationService();
}
