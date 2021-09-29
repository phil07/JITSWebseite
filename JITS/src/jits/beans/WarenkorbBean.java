package jits.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import de.hwg_lu.jdbc.NoConnectionException;
import de.hwg_lu.jdbc.PostgreSQLAccess;

public class WarenkorbBean {
 String anr;
 String aname;
 double preis;
 double summe;
 Connection dbConn;

 
 public WarenkorbBean() throws SQLException{
	 this.dbConn = new PostgreSQLAccess().getConnection();
 }
 
 public void bestellen(String email) throws SQLException {
	 email = email.replace("@", "AT");
	 email = email.replace(".", "");
	 String sql = "INSERT INTO BESTELLUNG" + email +" SELECT * FROM warenkorb" + email + ";";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
		System.out.println("Tabelle BESTELLUNG<email> wurde angelegt");
       deleteWarenkorb(email);
		
	}
 
 
 public void createWarenkorbTable(String email) throws SQLException {
	 email = email.replace("@", "AT");
	 email = email.replace(".", "");
		String sql = "create table warenkorb" + email + " (anr int,"
				+ " aname character varying(255)," + " preis numeric);";

		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
		System.out.println("Tabelle Warenkorb<email> wurde angelegt");

	}

public void insertArtikel(int anr, String email) throws SQLException {
	email = email.replace("@", "AT");
	email = email.replace(".", "");
	
	String sql = "INSERT INTO warenkorb"+ email +
			" (ANR, ANAME, PREIS) "+
					"VALUES(?,?,?);";
			System.out.println(sql);
			PreparedStatement myStat = this.dbConn.prepareStatement(sql);
			myStat.setInt(1, anr);
			System.out.println("ANR eingefügt");
			myStat.setString(2, this.getAname(anr));
			System.out.println("ANAME eingefügt");
			myStat.setDouble(3, this.getPreis(anr));
			System.out.println("PREIS eingefügt");
			myStat.executeUpdate();
			System.out.println("sql");
	
}


public void deleteWarenkorb(String email) throws SQLException {
	email = email.replace("@", "AT");
	email = email.replace(".", "");
	String sql = "DROP TABLE warenkorb"+email + ";";
	System.out.println(sql);
	Statement myStat = dbConn.createStatement();
	myStat.executeUpdate(sql);
	System.out.println("Delete Warenkorb"+email+" erfolgreich");
}

public boolean checkIfWarenkorbExists(String email) throws SQLException {
	email = email.replace("@", "AT");
	email = email.replace(".", "");
	String sql = "SELECT * FROM warenkorb" + email + ";";
	System.out.println(sql);
	Statement st = dbConn.createStatement();
	ResultSet rs = st.executeQuery(sql);
	return rs.next();
	
}


public double summeBerechnen() {
	double summe = 0.0;

	summe = this.preis;

	return summe;
}

public Connection getDbConn() {
	return dbConn;
}

public void setDbConn(Connection dbConn) {
	this.dbConn = dbConn;
}


public String getAnr() {
	return anr;
}


public void setAnr(String anr) {
	this.anr = anr;
}


public String getAname(int anr) throws SQLException {
	String eins = "";
	String sql = "SELECT ANAME FROM artikel WHERE anr= " + anr;
	System.out.println(sql);
	 Statement st = dbConn.createStatement();
	 ResultSet rs = st.executeQuery(sql);
		while(rs.next()) {
			eins = rs.getString("ANAME");
		}
		return eins;
}


public void setAname(String aname) {
	this.aname = aname;
}



public double getPreis(int anr) throws SQLException {
	double eins = 0.00;
	String sql = "SELECT preis from artikel WHERE anr= " + anr;
	System.out.println(sql);
	 Statement st = dbConn.createStatement();
	 ResultSet rs = st.executeQuery(sql);
		while(rs.next()) {
			eins = rs.getDouble("PREIS");
		}
		return eins;
}


public void setPreis(double preis) {
	this.preis = preis;
}



}
