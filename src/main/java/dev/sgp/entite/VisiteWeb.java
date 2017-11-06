package dev.sgp.entite;

public class VisiteWeb {

	private Integer id;
	private String url;
	private long tempsExec;
	
	public VisiteWeb() {
		super();
	}
	
	public VisiteWeb(Integer id, String url, long tempsExec) {
		super();
		this.id = id;
		this.url = url;
		this.tempsExec = tempsExec;
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

	/** Getter for url
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}
	/** Setter for url
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	/** Getter for tempsExec
	 * @return the tempsExec
	 */
	public long getTempsExec() {
		return tempsExec;
	}
	/** Setter for tempsExec
	 * @param tempsExec the tempsExec to set
	 */
	public void setTempsExec(long tempsExec) {
		this.tempsExec = tempsExec;
	}
	
	
	
}
