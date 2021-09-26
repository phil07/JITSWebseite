package jits.beans;

public class MessageBean {
 String infoMessage;
 String actionMessage;
 
 
 public MessageBean(){
	 this.setRegistrierungWelcome();
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
	 this.infoMessage = "Willkommen bei JITS";
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
 
 
 
}
