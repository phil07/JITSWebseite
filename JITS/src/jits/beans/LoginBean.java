package jits.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import de.hwg_lu.jdbc.NoConnectionException;
import de.hwg_lu.jdbc.PostgreSQLAccess;

public class LoginBean {
 String email;
 String passwort;
 boolean isLoggedIn;
 Connection dbConn;
 
 
 
 public LoginBean() throws NoConnectionException{
	 this.email = "";
	 this.passwort = "";
	 this.isLoggedIn = false;
	 this.dbConn = new PostgreSQLAccess().getConnection();
 }
 
 public boolean checkEmailPasswort() throws SQLException{
	 String sql = "SELECT email from benutzer " + "WHERE email = ?" + " AND passwort = ?";
	 System.out.println(sql);
	 PreparedStatement myStat = dbConn.prepareStatement(sql);
	 myStat.setString(1, this.getEmail());
	 myStat.setString(2,this.getPasswort());
	 ResultSet dbRes = myStat.executeQuery();
	 return dbRes.next();
 }
 
 public boolean checkUserExists() throws SQLException{
	 String sql = "SELECT email from benutzer WHERE email = ?";
	 System.out.println(sql);
	 PreparedStatement myStat = dbConn.prepareStatement(sql);
	 myStat.setString(1, this.getEmail());
	 ResultSet dbRes = myStat.executeQuery();
	 return dbRes.next();
 }
 
 public void deleteAccount() throws SQLException {
		String sql = "DELETE FROM benutzer WHERE email = ?";
		System.out.println(sql);
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.getEmail());
		prep.executeUpdate();
		System.out.println("Delete Account erfolgreich");
	}
 
 public boolean checkPasswort() throws SQLException {
		String sql = "SELECT passwort FROM benutzer where passwort = ?";
		System.out.println(sql);
		PreparedStatement prep = dbConn.prepareStatement(sql);
		prep.setString(1, this.passwort);
		ResultSet dbRes = prep.executeQuery();
		return dbRes.next();
	}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPasswort() {
	return passwort;
}

public void setPasswort(String passwort) {
	this.passwort = passwort;
}

public boolean isLoggedIn() {
	return isLoggedIn;
}

public void setLoggedIn(boolean isLoggedIn) {
	this.isLoggedIn = isLoggedIn;
}

public Connection getDbConn() {
	return dbConn;
}

public void setDbConn(Connection dbConn) {
	this.dbConn = dbConn;
}
}
