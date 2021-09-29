package de.hwg_lu.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.function.Function;


public class AppInstallArtikelTable {

	public Connection dbConn = null;

	public static void main(String[] args) throws NoConnectionException, SQLException{
		AppInstallArtikelTable myApp = new AppInstallArtikelTable();
		myApp.dbConn = new PostgreSQLAccess().getConnection(); 
		myApp.installArtikelTable();
		System.out.println("Postgress geladen");
	}

	public void installArtikelTable() throws SQLException{
		System.out.println("installArtikelTable() gestartet");
		this.createArtikelTable();
		System.out.println("neuTable");
		this.insertAllArtikels();
		System.out.println("Alle Artikel hinzugefügt");
		this.showArtikelData();
	}

	public void dropArtikelTable() throws SQLException {
		String sql = "drop table artikel";
		System.out.println(sql);
			dbConn.createStatement().executeUpdate(sql);
			Statement myStat = dbConn.createStatement();
			myStat.executeUpdate(sql);
			System.out.println("Tabelle artikel gedroppt");
	}
	



	public void createArtikelTable() throws SQLException{
		String sql = "";
		 sql = "create table artikel ("
		 		+ "anr INT NOT NULL PRIMARY KEY, "
				+ "aname VARCHAR(50) NOT NULL, "
				+ "preis NUMERIC NOT NULL)";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
		System.out.println("Execute");
		System.out.println("Tabelle artikel angelegt");
	}
	

	public void insertAllArtikels() throws SQLException{
		String sql = "INSERT INTO artikel " +
				"(anr, aname, preis) " +
				"VALUES " +
				"('1', 'Chips', '2.50'), "
				+ "('2', 'Snack-Mix','3.00'), "
				+ "('3', 'Popcorn salzig','1.99'), "
				+ "('4', 'Popcorn süss','1.99'), "
				+ "('5', 'Goldbären','1.99'), "
				+ "('6', 'Schlümpfe','1.99'), "
				+ "('7', 'Alpencreme','1.99'), "
				+ "('8', 'Haselnüsse','1.99'), "
				+ "('9', 'NicNac','2.99'), "
				+ "('10', 'Becks','1.70'), "
				+ "('11', 'Corona','2.50'), "
				+ "('12', 'Ureich','1.70'), "
				+ "('13', 'Cola','2.50'), "
				+ "('14', 'Cola light','2.50'), "
				+ "('15', 'Mezzo Mix','2.50'), "
				+ "('16', 'Fanta','2.50'), "
				+ "('17', 'Sprite','2.50'), "
				+ "('18', 'Red Bull','2.75'), "
				+ "('19', '28 Black','2.80'), "
				+ "('20', 'Maracuja','3.50'), "
				+ "('21', 'Kirsche','3.50'), "
				+ "('22', 'Orange' ,'3.50'),"
				+ "('23', 'Sierra Tequilla','18.99'), "
				+ "('24', 'Sky Vodka','23.99'), "
				+ "('25', 'Jack Daniels Cola','4.99'), "
				+ "('26', 'Jägermeister','21.99'), "
				+ "('27', 'Jim Beam','19.99'), "
				+ "('28', 'Malibu','16.99'), "
				+ "('29', 'Gorbatschow','14.99'), "
				+ "('30', 'Gordons','18.99'), "
				+ "('31', 'Jack Daniels','24.99'), "
				+ "('32', 'Three Sixty','21.99'), "
				+ "('33', 'Absolut','21.99'), "
				+ "('34', 'Baileys','17.99'), "
				+ "('35', 'Bombay Sapphire','27.99'), "
				+ "('36', 'Captain Morgan','17.99'),"
				+ "('37', 'Mädelsabend','61.00'), "
				+ "('38', 'Männerabend','61.00'), "
				+ "('39', 'Netflix und Chill','15.00'), "
				+ "('40', 'Partypaket','96.00')";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
	}
	

	public void insertFirstArtikel() throws SQLException{
		String sql = "INSERT INTO artikel " +
			"(anr, aname, preis) " +
			"VALUES " +
			"('1', 'Chips', '1.99')";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
	}

	public void insertSecondArtikel() throws SQLException{
		String sql = "INSERT INTO artikel " +
				"(anr, aname, preis) " +
				"VALUES " +
				"('2', 'Cola', '2.49')";
		System.out.println(sql);
		Statement myStat = dbConn.createStatement();
		myStat.executeUpdate(sql);
	}
	
	

	public void showArtikelData() throws SQLException{
		String sql = " SELECT anr, aname, preis" +
			" FROM artikel ";
		System.out.println(sql);
		ResultSet dbRes = dbConn.createStatement().executeQuery(sql);
		while (dbRes.next()){
			String anr   = dbRes.getString("anr");
			String aname = dbRes.getString("aname");
			String preis   = dbRes.getString("preis");
			String outString = anr + ", ";
			outString += aname + ", ";
			outString += preis;
			System.out.println(outString);
		}
	}

} 