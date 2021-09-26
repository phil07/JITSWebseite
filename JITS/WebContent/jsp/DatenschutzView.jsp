<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<title>Datenschutz</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />

<!-- CONTENT -->
<div>
			<br>
			<p class="title1">Datenschutzerklärung</p>
			<p class="title2">I. Name des Verantwortlichen</p>
			<div>
				<p>
					Der Verantwortliche im Sinne der EU-Datenschutz-Grundverordnung,
					des Bundesdatenschutzgesetzes und des rheinland-pfälzischen
					Landesdatenschutzgesetzes sowie sonstiger datenschutzrechtlicher
					Bestimmungen ist Philipp Fischer und Albulena Sejdijaj <br>E-Mail:
					datenschutz@jits.de  
				</p>
			</div>
			<p class="title2">II. Kontaktdaten der/des
				Datenschutzbeauftragten</p>
			<div>
				<p>
					Datenschutzbeauftragte(r) der Hochschule für Wirtschaft und
					Gesellschaft Ludwigshafen <br>Tel.: +49 987 654 - 3 <br>E-Mail:
					datenschutz@jits.de <br>Website: www.jits.de
				</p>
			</div>

			<p class="title2">III. Allgemeines zur Datenverarbeitung</p>
			<div>
				<p>Wir verarbeiten personenbezogene Daten
					unserer Nutzer grundsätzlich nur, soweit dies zur Bereitstellung
					einer funktionsfähigen Website sowie unserer Inhalte und Leistungen
					erforderlich ist.<br> Die Verarbeitung personenbezogener Daten unserer
					Nutzer erfolgt regelmäßig nur nach Einwilligung des Nutzers.<br> Eine
					Ausnahme gilt in solchen Fällen, in denen eine vorherige Einholung
					einer Einwilligung aus tatsächlichen Gründen nicht möglich ist und
					die Verarbeitung der Daten durch gesetzliche Vorschriften gestattet
					ist.</p>
			</div>
			<p class="title2">IV. Bereitstellung der Website und Erstellung
				von Logfiles</p>
			<div>
				<p>Beim Zugriff auf das Internetangebot von Jits werden die
					folgenden Daten in einer Protokolldatei gespeichert:</p>

				<ul>
					<li>IP-Adresse</li>
					<li>Datum und Uhrzeit des erfolgten Zugriffs</li>
					<li>aufgerufene Seite bzw. Name der abgerufenen Datei</li>
					<li>Meldung, ob der Zugriff auf die Seite bzw. der Abruf der
						Datei erfolgreich war</li>
					<li>übertragene Datenmenge</li>
					<li>verwendeter Web-Browser und genutztes Betriebssystem</li>
				</ul>

				<p>Die Daten werden in den Logfiles unseres
					Systems gespeichert.<br>Nicht hiervon betroffen sind die IP-Adressen
					des Nutzers oder andere Daten, die die Zuordnung der Daten zu einem
					Nutzer ermöglichen.<br> Eine Speicherung dieser Daten zusammen mit
					anderen personenbezogenen Daten des Nutzers findet nicht statt.</p>
			</div>
			<br>
		</div>
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>