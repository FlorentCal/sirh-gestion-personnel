package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.ResourceBundle;

import dev.sgp.util.Constantes;

public class Collaborateur {

	
	private int matricule;
	private String nom;
	private String prenom;
	private LocalDate dateDeNaissance;
	private String adresse;
	private String numeroDeSecuriteSocial;
	private String emailPro;
	private String photo;
	private ZonedDateTime dateHeureCreation;
	private String telephone;
	private boolean collaboActif;
	
	private String intitulePoste;
	private String fonction;
	private Departement departement;	
	private String banque;
	private String bic;
	private String iban;
	private static int matriculeStatic = 0;
	
	public Collaborateur() {

	}

	public Collaborateur(String nom, String prenom, String fonction, Departement departement, String telephone) {
		this.nom = nom;
		this.prenom = prenom;
		this.fonction = fonction;
		this.departement = departement;
		String mail = ResourceBundle.getBundle("application").getString("mail");
		this.emailPro = nom.toLowerCase() + "." + prenom.toLowerCase() + mail;
		this.telephone = telephone;
		this.collaboActif = true;
		this.matricule = ++matriculeStatic;
		this.photo = "https://randomuser.me/api/portraits/women/19.jpg";
		this.dateDeNaissance = LocalDate.now();
		this.numeroDeSecuriteSocial = "-- Non renseigné --";
		this.iban="-- Non renseigné --";
		this.bic="-- Non renseigné --";
	}


	public Collaborateur(String nom, String prenom, LocalDate date, String adresse, String numSecu) {
		this(nom, prenom, "-- Non renseigné --", Constantes.DEPART_SERVICE.listerDepartments().get(0), "-- Non renseigné --");
		this.dateDeNaissance = date;
		this.adresse = adresse;
		this.numeroDeSecuriteSocial = numSecu;
		this.dateHeureCreation = ZonedDateTime.now();
	}

	/** Getter for matricule
	 * @return the matricule
	 */
	public int getMatricule() {
		return matricule;
	}

	/** Setter for matricule
	 * @param matricule the matricule to set
	 */
	public void setMatricule(int matricule) {
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
		return dateDeNaissance;
	}

	/** Setter for dateDeNaissance
	 * @param dateDeNaissance the dateDeNaissance to set
	 */
	public void setDateDeNaissance(LocalDate dateDeNaissance) {
		this.dateDeNaissance = dateDeNaissance;
	}

	/** Getter for adresse
	 * @return the adresse
	 */
	public String getAdresse() {
		return adresse;
	}

	/** Setter for adresse
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	/** Getter for numeroDeSecuriteSocial
	 * @return the numeroDeSecuriteSocial
	 */
	public String getNumeroDeSecuriteSocial() {
		return numeroDeSecuriteSocial;
	}

	/** Setter for numeroDeSecuriteSocial
	 * @param numeroDeSecuriteSocial the numeroDeSecuriteSocial to set
	 */
	public void setNumeroDeSecuriteSocial(String numeroDeSecuriteSocial) {
		this.numeroDeSecuriteSocial = numeroDeSecuriteSocial;
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

	/** Getter for telephone
	 * @return the telephone
	 */
	public String getTelephone() {
		return telephone;
	}

	/** Setter for telephone
	 * @param telephone the telephone to set
	 */
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	/** Getter for collaboActif
	 * @return the collaboActif
	 */
	public boolean isCollaboActif() {
		return collaboActif;
	}

	/** Setter for collaboActif
	 * @param collaboActif the collaboActif to set
	 */
	public void setCollaboActif(boolean collaboActif) {
		this.collaboActif = collaboActif;
	}

	/** Getter for intitulePoste
	 * @return the intitulePoste
	 */
	public String getIntitulePoste() {
		return intitulePoste;
	}

	/** Setter for intitulePoste
	 * @param intitulePoste the intitulePoste to set
	 */
	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	/** Getter for fonction
	 * @return the fonction
	 */
	public String getFonction() {
		return fonction;
	}

	/** Setter for fonction
	 * @param fonction the fonction to set
	 */
	public void setFonction(String fonction) {
		this.fonction = fonction;
	}

	/** Getter for departement
	 * @return the departement
	 */
	public Departement getDepartement() {
		return departement;
	}

	/** Setter for departement
	 * @param departement the departement to set
	 */
	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	/** Getter for banque
	 * @return the banque
	 */
	public String getBanque() {
		return banque;
	}

	/** Setter for banque
	 * @param banque the banque to set
	 */
	public void setBanque(String banque) {
		this.banque = banque;
	}

	/** Getter for bic
	 * @return the bic
	 */
	public String getBic() {
		return bic;
	}

	/** Setter for bic
	 * @param bic the bic to set
	 */
	public void setBic(String bic) {
		this.bic = bic;
	}

	/** Getter for iban
	 * @return the iban
	 */
	public String getIban() {
		return iban;
	}

	/** Setter for iban
	 * @param iban the iban to set
	 */
	public void setIban(String iban) {
		this.iban = iban;
	}

	/** Getter for matriculeStatic
	 * @return the matriculeStatic
	 */
	public static int getMatriculeStatic() {
		return matriculeStatic;
	}

	/** Setter for matriculeStatic
	 * @param matriculeStatic the matriculeStatic to set
	 */
	public static void setMatriculeStatic(int matriculeStatic) {
		Collaborateur.matriculeStatic = matriculeStatic;
	}
		
	
	
}
