package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Departement;

public class DepartementService {

	private List<Departement> departements = new ArrayList<>();

	public List<Departement> listerDepartments() {
		return departements;
	}


	public void sauvegarderDepartement(Departement departement) {
		departements.add(departement);
	}

	public DepartementService() {
		departements.add(new Departement("Comptabilite"));
		departements.add(new Departement("Ressources humaines"));
		departements.add(new Departement("Informatique"));
		departements.add(new Departement("Administratif"));
	}
}
