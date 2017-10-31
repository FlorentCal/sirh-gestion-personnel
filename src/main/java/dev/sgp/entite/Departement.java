package dev.sgp.entite;


public class Departement {
	
	private Integer id;
	private String nom;
	static private Integer indexId = 0;
	
	public Departement() {
		super();
	}

	public Departement(String nom) {
		this.nom = nom;
		this.id = ++Departement.indexId;
	}

	/** Getter for id
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}


	/** Setter for id
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
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


	/** Getter for indexId
	 * @return the indexId
	 */
	public static Integer getIndexId() {
		return indexId;
	}


	/** Setter for indexId
	 * @param indexId the indexId to set
	 */
	public static void setIndexId(Integer indexId) {
		Departement.indexId = indexId;
	}

}
