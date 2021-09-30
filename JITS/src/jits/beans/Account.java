package jits.beans;

public class Account {
	
	String vorname;
	String nachname;
	String admin;
	String stadt;
	String strasse;
	char nr;
	int alter;
	String passwort;
	char email;
	char telefonnummer;
	
// Klasse Account ist keine Bean
	
	public Account( String vorname, String nachname, String admin, String stadt, 
			String strasse, char nr, int alter, String passwort, char email, char telefonnummer) {
		super();
		
		
		this.vorname = vorname;
		this.nachname = nachname;
		this.admin = admin;
		this.stadt = stadt;
		this.strasse = strasse;
		this.nr = nr;
		this.alter = alter;
		this.passwort = passwort;
		this.email = email;
		this.telefonnummer = telefonnummer;
	}

	public String getVorname() {
		return vorname;
	}

	public void setVorname(String vorname) {
		this.vorname = vorname;
	}

	public String getNachname() {
		return nachname;
	}

	public void setNachname(String nachname) {
		this.nachname = nachname;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getStadt() {
		return stadt;
	}

	public void setStadt(String stadt) {
		this.stadt = stadt;
	}

	public String getStrasse() {
		return strasse;
	}

	public void setStrasse(String strasse) {
		this.strasse = strasse;
	}

	public char getNr() {
		return nr;
	}

	public void setNr(char nr) {
		this.nr = nr;
	}

	public int getAlter() {
		return alter;
	}

	public void setAlter(int alter) {
		this.alter = alter;
	}

	public String getPasswort() {
		return passwort;
	}

	public void setPasswort(String passwort) {
		this.passwort = passwort;
	}

	public char getEmail() {
		return email;
	}

	public void setEmail(char email) {
		this.email = email;
	}

	public char getTelefonnummer() {
		return telefonnummer;
	}

	public void setTelefonnummer(char telefonnummer) {
		this.telefonnummer = telefonnummer;
	}
	
	
	
}