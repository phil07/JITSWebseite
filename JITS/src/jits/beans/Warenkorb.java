package jits.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import de.hwg_lu.jdbc.NoConnectionException;
import de.hwg_lu.jdbc.PostgreSQLAccess;

public class Warenkorb {

	
	String aname;
	double preis;
	String anr;
	int menge;
	String wnr;
	String email;

	public Warenkorb() {
		this.aname = "";
		this.preis = 0.00;
		this.anr = "";
		this.menge = 0;
		this.wnr = "";
		this.email = "";
	}
	public Warenkorb(String anr, String aname, double preis){
		this.aname = aname;
		this.preis = preis;
		this.anr = anr;
		
	}


	public double summeBerechnen() {
		double summe = 0.0;

		summe = this.preis * this.menge;

		return summe;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public double getPreis() {
		return preis;
	}

	public void setPreis(double preis) {
		this.preis = preis;
	}

	public String getAnr() {
		return anr;
	}

	public void setAnr(String anr) {
		this.anr = anr;
	}

	public int getMenge() {
		return menge;
	}

	public void setMenge(int menge) {
		this.menge = menge;
	}

	public String getWnr() {
		return wnr;
	}

	public void setWnr(String wnr) {
		this.wnr = wnr;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}