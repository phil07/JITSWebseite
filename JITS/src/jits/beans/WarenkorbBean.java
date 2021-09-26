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
 String email;
 String wnr;
 String anr;
 String aname;
 int menge;
 double preis;
 double summe;
 Connection dbConn;
 Vector<Artikel> artikelListe;
 Vector<Warenkorb> ausgewaehlteWarenkorbListe;
 
 public WarenkorbBean() throws SQLException{
	dbConn = new PostgreSQLAccess().getConnection();
	this.artikelListe = new Vector<Artikel>();
	this.getArtikelFromDB();
 }

 

public void bestellen() throws SQLException {
	String sql = " SELECT wnr, email, anr, aname, menge, preis" +
			" FROM warenkorb WHERE email = " + this.getEmail();
		System.out.println(sql);
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()){
			String wnr   = dbRes.getString("wnr");
			String email = dbRes.getString("email");
			String anr = dbRes.getString("anr");
			String aname   = dbRes.getString("aname");
			String menge   = dbRes.getString("menge");
			String preis    = dbRes.getString("preis");
			String outString ="";
			outString = wnr + ", ";
			outString += email + ", ";
			outString += anr + ", ";
			outString += aname + ", ";
			outString += menge + ", ";
			outString += preis;
			System.out.println(outString);	
	
	String sql2 = "INSERT INTO bestellung " +
			"(wnr, email, anr, aname, menge, preis) " +
			"VALUES " + outString;
	System.out.println(sql2);
	Statement myStat = dbConn.createStatement();
	myStat.executeUpdate(sql2);
	deleteWarenkorb();
		}
}


//public void insertWarenkorb() throws SQLException {
//	String sql = "INSERT INTO warenkorb "+ 
//	"(wnr, email, anr, aname, menge, preis) "+
//			"VALUES(?,?,?,?,?,?)";
//	System.out.println(sql);
//	PreparedStatement myStat = this.dbConn.prepareStatement(sql);
//	myStat.setString(1, this.getWnr());
//	myStat.setString(2, this.getEmail());
//	myStat.setString(3, this.getAnr());
//	myStat.setInt(4, this.getMenge());
//	myStat.setDouble(5, this.getPreis());
//	
//	myStat.executeUpdate();
//	System.out.println("sql");
//		
//	}

public void insertArtikel(String anr) throws SQLException {
		if(checkArtikelWarenkorb() == true) {
			String sql = "SELECT menge FROM warenkorb WHERE email = " +
					this.getEmail() + " AND anr = ?";
			System.out.println(sql);
			 PreparedStatement myStat = dbConn.prepareStatement(sql);
			 myStat.setString(1, anr);
			ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
				int m   = dbRes.getInt("MENGE");
				m = m+1;
			String sql1  = "UPDATE warenkorb "+
		" SET menge = " + m + 
		"WHERE email = " + this.getEmail() + " AND anr = ?";
			PreparedStatement myStat1 = dbConn.prepareStatement(sql1);
			 myStat1.setString(1, anr);
			myStat1.executeUpdate();
	}else {
		String eins = "";
		double zwei = 0.00;
		
		String sql = "SELECT aname FROM artikel WHERE anr = ?";
		System.out.println(sql);
		 PreparedStatement myStat1 = dbConn.prepareStatement(sql);
		 myStat1.setString(1, anr);
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
			eins   = dbRes.getString("ANAME");
			
			String sql1 = "SELECT preis FROM artikel WHERE anr = ?";
			System.out.println(sql1);
			 PreparedStatement myStat2 = dbConn.prepareStatement(sql1);
			 myStat2.setString(1, anr);
			ResultSet dbRes1 = dbConn.createStatement().executeQuery(sql1);
				zwei   = dbRes1.getDouble("PREIS");
			
		
		String sql2 = "INSERT INTO warenkorb "+ 
				"(wnr, email, anr, aname, menge, preis) "+
						"VALUES(?,?,?,?,?,?)";
				System.out.println(sql2);
				PreparedStatement myStat = this.dbConn.prepareStatement(sql2);
				myStat.setString(1, this.getWnr());
				myStat.setString(2, this.getEmail());
				myStat.setString(3, anr);
				myStat.setString(4, eins);
				myStat.setInt(5, 1);
				myStat.setDouble(6, zwei);
				myStat.executeUpdate();
				System.out.println(sql2);
					
	}
}

public boolean checkArtikelWarenkorb() throws SQLException {
String sql  = "SELECT anr FROM warenkorb WHERE email = " +
		this.getEmail() + " AND anr = ?";
System.out.println(sql);
PreparedStatement myStat = this.dbConn.prepareStatement(sql);
myStat.setString(1, this.getAnr());
ResultSet dbRes = myStat.executeQuery();
return dbRes.next();
}


public void deleteWarenkorb() throws SQLException {
	String sql = "DELETE FROM warenkorb WHERE email = ?";
	System.out.println(sql);
	PreparedStatement prep = dbConn.prepareStatement(sql);
	prep.setString(1, this.getEmail());
	prep.executeUpdate();
	System.out.println("Delete Warenkorb erfolgreich");
}


public void getArtikelFromDB() throws SQLException{
	String sql = "SELECT anr, aname, preis from artikel";
	System.out.println(sql);
	Connection dbConn = new PostgreSQLAccess().getConnection();
	ResultSet dbResult = dbConn.createStatement().executeQuery(sql);
	while (dbResult.next()){
		int    anr      = dbResult.getInt("anr");
		String aname    = dbResult.getString("aname");
		double preis    = dbResult.getDouble("preis");
		Artikel newArtikel = new Artikel(anr, aname, preis);
		this.artikelListe.add(newArtikel);
	}
}

		
	

	


public void getausgewaehlteArtikelFromDB(String[] warenkorbValues) throws SQLException {

	for (String string : warenkorbValues) {

		String sql = "SELECT * FROM artikel where anr ='" + string + "'";

		System.out.println(sql);

		
			Statement stmt = dbConn.createStatement();
			ResultSet res = stmt.executeQuery(sql);

			while (res.next()) {

				System.out.println(res.getInt("ANR"));
				System.out.println(res.getString("ANAME"));
				System.out.println(res.getDouble("PREIS"));

				Warenkorb art = new Warenkorb(String.valueOf(res.getInt("ANR")), res.getString("ANAME"),
						res.getDouble("PREIS"));

				this.ausgewaehlteWarenkorbListe.add(art);

				String sql2 = "insert into warenkorb" + this.email
						+ "(wnr, aname, preis) values (?,?,?)";
				System.out.println(sql2);

				PreparedStatement prep = dbConn.prepareStatement(sql2);

				prep.setString(1, String.valueOf(res.getInt("ANR")));

				prep.setString(2, res.getString("ANAME"));
				prep.setDouble(3, res.getDouble("PREIS"));

				prep.executeUpdate();

			}
		

	}
}



public double summeBerechnen() {
	double summe = 0.0;

	summe = this.preis * this.menge;

	return summe;
}

public Connection getDbConn() {
	return dbConn;
}

public void setDbConn(Connection dbConn) {
	this.dbConn = dbConn;
}
public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getWnr() {
	return wnr;
}

public void setWnr(String wnr) {
	this.wnr = wnr;
}
public String getAnr() {
	return anr;
}


public void setAnr(String anr) {
	this.anr = anr;
}


public String getAname() {
	return aname;
}


public void setAname(String aname) {
	this.aname = aname;
}


public int getMenge() {
	return menge;
}


public void setMenge(int menge) {
	this.menge = menge;
}


public double getPreis() {
	return preis;
}


public void setPreis(double preis) {
	this.preis = preis;
}

public Vector<Artikel> getArtikelListe() {
	return artikelListe;
}

public void setArtikelListe(Vector<Artikel> artikelListe) {
	this.artikelListe = artikelListe;
}

}
