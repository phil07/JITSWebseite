package jits.beans;

public class MessageBean {
 String infoMessage;
 String actionMessage;
 String HeaderMessage;
 String WarenkorbMessage;
 
 
 public MessageBean(){
	 this.setRegistrierungWelcome();
	 this.setNotLoggedIn();
 }
 public void setRegistrationSuccessful(String email) {
	 this.infoMessage = "Email " + email + " wurde erfolgreich registriert";
	 this.actionMessage = "Bitte logge dich nun ein";
 }
 
 public void setUserAlreadyExists(String email) {
	 this.infoMessage = "Email " + email + " existiert bereits";
	 this.actionMessage = "Bitte wähle eine andere Email";
 }
 
 public void setAnyError() {
	 this.infoMessage = "Es ist ein Fehler aufgetreten";
	 this.actionMessage = "Bitte wende dich an den Support";
 }
 
 public void setRegistrierungWelcome() {
	 this.infoMessage = "Willkommen bei JITS";
	 this.actionMessage = "Bitte registriere dich";
 }
 
 public void setLoginWelcome() {
	 this.infoMessage = "Willkommen bei JITS";
	 this.actionMessage = "Bitte melde dich an";
 }
 public void setLoginSuccessful() {
	 this.infoMessage = "Du bist bei JITS nun angemeldet";
	 this.actionMessage = "Schau dir unsere Angebote an";
 }
 
 public void setLoginFailed() {
	 this.infoMessage = "Die Anmeldung ist fehlgeschlagen";
	 this.actionMessage = "Bitte versuche es noch einmal";
 }
 public void setAccountGeloescht(String email) {
	 this.infoMessage = "Der Account " + email + " wurde gelöscht";
	 this.actionMessage = "Danke, dass du unser Kunde warst";
 }
 
 public void setNotLoggedIn() {
	 this.HeaderMessage = "Einloggen";
	 this.WarenkorbMessage = "";
 }
 public void setLoggedIn() {
	 this.HeaderMessage  = "Eingeloggt";
	 this.WarenkorbMessage = "Warenkorb";
 }
 
 
 
public String getInfoMessage() {
	return infoMessage;
}
public void setInfoMessage(String infoMessage) {
	this.infoMessage = infoMessage;
}
public String getActionMessage() {
	return actionMessage;
}
public void setActionMessage(String actionMessage) {
	this.actionMessage = actionMessage;
}
public String getWarenkorbMessage() {
	return WarenkorbMessage;
}

public void setWarenkorbMessage(String warenkorbMessage) {
	this.WarenkorbMessage = warenkorbMessage;
}

public String getHeaderMessage() {
	return HeaderMessage;
}
public void setHeaderMessage(String headerMessage) {
	this.HeaderMessage = headerMessage;
}
 
 
}