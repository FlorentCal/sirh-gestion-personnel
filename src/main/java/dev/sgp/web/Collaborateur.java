package dev.sgp.web;

import java.time.LocalDate;
import java.time.ZonedDateTime;

public class Collaborateur {

	private String matricule;
	private String nom;
	private String prenom;
	private LocalDate DateDeNaissance;
	private String Adresse;
	private String NumeroDeSecuriteSocial;
	private String emailPro;
	private String photo;
	private ZonedDateTime dateHeureCreation;
	/** Getter for dateHeureCreation
	 * @return the dateHeureCreation
	 */
	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}


	/** Setter for dateHeureCreation
	 * @param dateHeureCreation the dateHeureCreation to set
	 */
	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}


	private  boolean actif;
	
	
	public Collaborateur(String matricule, String nom, String prenom, LocalDate dateDeNaissance, String adresse,
			String numeroDeSecuriteSociale, String emailPro, String photo, ZonedDateTime dateHeureCreation, boolean actif) {
		super();
		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		DateDeNaissance = dateDeNaissance;
		Adresse = adresse;
		NumeroDeSecuriteSocial = numeroDeSecuriteSociale;
		this.emailPro = emailPro;
		this.photo = photo;
		this.dateHeureCreation = dateHeureCreation;
		this.actif = actif;
	}


	/** Getter for matricule
	 * @return the matricule
	 */
	public String getMatricule() {
		return matricule;
	}


	/** Setter for matricule
	 * @param matricule the matricule to set
	 */
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}


	/** Getter for nom
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}


	/** Setter for nom
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}


	/** Getter for prenom
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}


	/** Setter for prenom
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	/** Getter for dateDeNaissance
	 * @return the dateDeNaissance
	 */
	public LocalDate getDateDeNaissance() {
		return DateDeNaissance;
	}


	/** Setter for dateDeNaissance
	 * @param dateDeNaissance the dateDeNaissance to set
	 */
	public void setDateDeNaissance(LocalDate dateDeNaissance) {
		DateDeNaissance = dateDeNaissance;
	}


	/** Getter for adresse
	 * @return the adresse
	 */
	public String getAdresse() {
		return Adresse;
	}


	/** Setter for adresse
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		Adresse = adresse;
	}


	/** Getter for numeroDeSecuriteSociale
	 * @return the numeroDeSecuriteSociale
	 */
	public String getNumeroDeSecuriteSocial() {
		return NumeroDeSecuriteSocial;
	}


	/** Setter for numeroDeSecuriteSociale
	 * @param numeroDeSecuriteSociale the numeroDeSecuriteSociale to set
	 */
	public void setNumeroDeSecuriteSocial(String numeroDeSecuriteSocial) {
		NumeroDeSecuriteSocial = numeroDeSecuriteSocial;
	}


	/** Getter for emailPro
	 * @return the emailPro
	 */
	public String getEmailPro() {
		return emailPro;
	}


	/** Setter for emailPro
	 * @param emailPro the emailPro to set
	 */
	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}


	/** Getter for photo
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}


	/** Setter for photo
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}


	/** Getter for actif
	 * @return the actif
	 */
	public boolean isActif() {
		return actif;
	}


	/** Setter for actif
	 * @param actif the actif to set
	 */
	public void setActif(boolean actif) {
		this.actif = actif;
	}
	
}
