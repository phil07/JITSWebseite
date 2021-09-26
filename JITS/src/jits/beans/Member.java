package jits.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import de.hwg_lu.jdbc.NoConnectionException;
import de.hwg_lu.jdbc.PostgreSQLAccess;

public class Member {

	private String vorname, nachname, stadt, strasse, passwort, email, handynummer, admin, alter, nr;
	private Connection dbConn;
	
	public Member() throws NoConnectionException {
		this.dbConn = new PostgreSQLAccess().getConnection();
		this.vorname = "";
		this.nachname = "";
		this.stadt = "";
		this.strasse = "";
		this.nr = "";
		this.alter = "";
		this.passwort = "";
		this.email = "";
		this.handynummer = "";
		this.admin = "N";
		
	}
	

	public void prepareAttributesForDB() {
		if(vorname.length() >20) vorname = vorname.substring(0,20);
		if(nachname.length()>20) nachname = nachname.substring(0,20);
		if(stadt.length()>50) stadt = stadt.substring(0,50);
		if(strasse.length()>50) strasse = strasse.substring(0,50);
		if(nr.length()>256) strasse = strasse.substring(0,256);
		if(alter.length()>256) alter = alter.substring(0,256);
		if(passwort.length()>256) passwort = passwort.substring(0,256);
		if(email.length()>256) email = email.substring(0,256);
		if(handynummer.length()>256) handynummer = handynummer.substring(0,256);
	}
	
	
	public void deleteUser(String email, String passwort) throws SQLException {
		String sql = "Delete from benutzer where email = "+ email +" and passwort = "+ passwort;
		System.out.println(sql);
		PreparedStatement myStat = this.dbConn.prepareStatement(sql);
		myStat.setString(1, this.getEmail());
		myStat.setString(2, this.getPasswort());
		myStat.executeUpdate();
		System.out.println("Nutzer wurde gelöscht");
		
	}
		
	
	public boolean insertMemberIfNotExist() throws SQLException{
		this.prepareAttributesForDB();
		if(this.checkUserExists() == false) {
			this.insertMemberNoCheck();
			return true;
		}else {
		System.out.println("Nutzer existiert bereits");
			return false;
		}
	}

	private void insertMemberNoCheck() throws SQLException {
	String sql = "INSERT INTO benutzer "+ 
	"(VORNAME, NACHNAME, ADMIN, STADT, STRASSE, NR, ALTER, PASSWORT, EMAIL, TELEFONNUMMER) "+
			"VALUES(?,?,?,?,?,?,?,?,?,?)";
	System.out.println(sql);
	PreparedStatement myStat = this.dbConn.prepareStatement(sql);
	myStat.setString(1, this.getVorname());
	myStat.setString(2, this.getNachname());
	myStat.setString(3, this.getAdmin());
	myStat.setString(4, this.getStadt());
	myStat.setString(5, this.getStrasse());
	myStat.setString(6, this.getNr());
	myStat.setString(7, this.getAlter());
	myStat.setString(8, this.getPasswort());
	myStat.setString(9, this.getEmail());
	myStat.setString(10, this.getHandynummer());
	myStat.executeUpdate();
	System.out.println("sql");
		
	}


	public boolean checkUserExists() throws SQLException {
		String sql  = "SELECT email FROM benutzer WHERE email = ?";
		System.out.println(sql);
		PreparedStatement myStat = this.dbConn.prepareStatement(sql);
		myStat.setString(1, this.getEmail());
		ResultSet dbRes = myStat.executeQuery();
		return dbRes.next();
	}

	public String getAlter() {
		return alter;
	}


	public String getNr() {
		return nr;
	}

	public String getAdmin() {
		return admin;
	}


	public void setAdmin(String admin) {
		this.admin = admin;
	}


	public void setAlter(String alter) {
		this.alter = alter;
	}


	public void setNr(String nr) {
		this.nr = nr;
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

	public String getPasswort() {
		return passwort;
	}

	public void setPasswort(String passwort) {
		this.passwort = passwort;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHandynummer() {
		return handynummer;
	}

	public void setHandynummer(String handynummer) {
		this.handynummer = handynummer;
	}
	
	
}
