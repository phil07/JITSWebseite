package de.hwg_lu.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.function.Function;


public class AppInstallAccountTable {

	public Connection dbConn = null;

	public static void main(String[] args) throws NoConnectionException, SQLException{
		AppInstallAccountTable myApp = new AppInstallAccountTable();
		myApp.dbConn = new PostgreSQLAccess().getConnection(); 
		myApp.installAccountTable();
		System.out.println("Postgress geladen");
	}

	public void installAccountTable() throws SQLException{
		System.out.println("installAccountTable() gestartet");
//		this.dropAccountTable();
//		System.out.println("Table gedroppt");
		this.createAccountTable();
		System.out.println("neuTable");
		this.insertFirstUser();
		System.out.println("User1 hinzugefügt");
		this.insertSecondUser();
		System.out.println("User2 hinzugefügt");
		this.showAccountData();
	}

	public void dropAccountTable() throws SQLException {
		String sql = "drop table benutzer";
		System.out.println(sql);
			dbConn.createStatement().executeUpdate(sql);
			Statement myStat = dbConn.createStatement();
			myStat.executeUpdate(sql);
			System.out.println("Tabelle benutzer gedroppt");
	}
	



	public void createAccountTable() throws SQLException{
		String sql = " ";
		 sql = "create table benutzer ("
		 		+ "vorname VARCHAR(20) NOT NULL, "
				+ "nachname VARCHAR(20) NOT NULL, "
				+ "admin CHAR(1) NOT NULL DEFAULT 'N', "
				+ "stadt VARCHAR(50) NOT NULL, "
				+ "strasse VARCHAR(50) NOT NULL, "
				+ "nr varchar(256) NOT NULL, "
				+ "alter varchar(256) NOT NULL, "
				+ "passwort VARCHAR(256) NOT NULL, "
				+ "email VARCHAR(256) NOT NULL PRIMARY KEY, "
				+ "telefonnummer VARCHAR(256) NOT NULL)";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
		System.out.println("Execute");
		System.out.println("Tabelle benutzer angelegt");
	}
	

		
	

	public void insertFirstUser() throws SQLException{
		String sql = "INSERT INTO benutzer " +
			"(VORNAME, NACHNAME, ADMIN, STADT, STRASSE, NR, ALTER, PASSWORT, EMAIL, TELEFONNUMMER) " +
			"VALUES " +
			"('Test', 'Test', 'N', 'Biblis', 'DieStrasse', '1', '21', 'passwort', 'email@email.com', '0176/91397119')";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
	}

	public void insertSecondUser() throws SQLException{
		String sql = "INSERT INTO benutzer " +
			"(VORNAME, NACHNAME, ADMIN, STADT, STRASSE, NR, ALTER, PASSWORT, EMAIL, TELEFONNUMMER) " +
			"VALUES " +
			"('Testzwei', 'Testzwei', 'Y', 'Bensheim', 'EineStrasse', '164a', '15', 'passwort', 'email2@email.com', '0176/12345678')";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
	}
	
	

	public void showAccountData() throws SQLException{
		String sql = " SELECT VORNAME, NACHNAME, ADMIN, STADT, STRASSE, NR, ALTER, PASSWORT, EMAIL, TELEFONNUMMER " +
			"FROM benutzer ";
		System.out.println(sql);
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()){
			String vorname   = dbRes.getString("VORNAME");
			String nachname = dbRes.getString("NACHNAME");
			String admin   = dbRes.getString("ADMIN");
			String stadt    = dbRes.getString("STADT");
			String strasse = dbRes.getString("STRASSE");
			String nr    = dbRes.getString("NR");
			String alter   = dbRes.getString("ALTER");
			String passwort   = dbRes.getString("PASSWORT");
			String email   = dbRes.getString("EMAIL");
			String telefonnummer = dbRes.getString("TELEFONNUMMER");
			String outString = vorname + ", ";
			outString += nachname + ", ";
			outString += admin + ", ";
			outString += stadt + ", ";
			outString += strasse + ", ";
			outString += nr + ", ";
			outString += alter + ", ";
			outString += passwort + ", ";
			outString += email + ", ";
			outString += telefonnummer;
			System.out.println(outString);
		}
	}

} 