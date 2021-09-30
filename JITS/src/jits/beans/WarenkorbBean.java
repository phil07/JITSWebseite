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
 Connection dbConn;

 
 public WarenkorbBean() throws SQLException{
	 this.dbConn = new PostgreSQLAccess().getConnection();
 }
 
 public void bestellen(String email) throws SQLException {
	 email = email.replace("@", "AT");
	 email = email.replace(".", "");
	 String sql = "CREATE TABLE BESTELLUNG" + email + " (anr int,"
				+ " aname character varying(255)," + " preis numeric);";
	 System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
		System.out.println("Tabelle BESTELLUNG<email> wurde angelegt");
	 String sql2 = "INSERT INTO BESTELLUNG" + email +" SELECT * FROM warenkorb" + email + ";";
		System.out.println(sql2);
		Statement myStat2 = dbConn.createStatement();
		myStat2.executeUpdate(sql2);
		System.out.println("Tabelle BESTELLUNG<email> wurde beladen");
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
			System.out.println(sql);
	
}


public void deleteWarenkorb(String email) throws SQLException {
	email = email.replace("@", "AT");
	email = email.replace(".", "");
	String sql = "DROP table warenkorb"  +email + ";";
	System.out.println(sql);
	Statement myStat = dbConn.createStatement();
	myStat.executeUpdate(sql);
	System.out.println("Delete Warenkorb"+email+" erfolgreich");
	createWarenkorbTable(email);
}


public void deleteBestellung(String email) throws SQLException {
	email = email.replace("@", "AT");
	email = email.replace(".", "");
	String sql = "DROP TABLE BESTELLUNG"+email + ";";
	System.out.println(sql);
	Statement myStat = dbConn.createStatement();
	myStat.executeUpdate(sql);
	System.out.println("Delete Bestellung"+email+" erfolgreich");
	createWarenkorbTable(email);
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

public String getWarenkorbAsHTML(String email) throws SQLException {
	String html = "";
	double preiszusammen = 0;
	email = email.replace("@", "AT");
	email = email.replace(".", "");
	String sql = "SELECT ANAME, PREIS FROM warenkorb" + email + ";";
	 Statement stmt = dbConn.createStatement();
  ResultSet rs = stmt.executeQuery(sql);
	      while (rs.next()) {
	        String name = rs.getString("ANAME");
	        double preis = rs.getDouble("PREIS");
	        preiszusammen = preiszusammen + preis;
	        html = html + "<tr><th><h1>" + name + "</h1></th>" + "<th><h1>" + preis + "</h1></th><th><h1>"
	        		+ preiszusammen + "</h1></th></tr>";
	      }
		return html;
	    } 


public String getBestellungAsHTML(String email) throws SQLException {
	String html = "";
	double preiszusammen = 0;
	email = email.replace("@", "AT");
	email = email.replace(".", "");
	String sql = "SELECT ANAME, PREIS FROM BESTELLUNG" + email + ";";
	 Statement stmt = dbConn.createStatement();
  ResultSet rs = stmt.executeQuery(sql);
	      while (rs.next()) {
	        String name = rs.getString("ANAME");
	        double preis = rs.getDouble("PREIS");
	        preiszusammen = preiszusammen + preis;
	        html = html + "<tr><th><h1>" + name + "</h1></th>" + "<th><h1>" + preis + "</h1></th><th><h1>"
	        		+ preiszusammen + "</h1></th></tr>";
	      }
		return html;
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