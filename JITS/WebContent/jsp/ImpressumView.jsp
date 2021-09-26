<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />

<!-- CONTENT -->
<main>
		<h2>Impressum</h2>

		<div class="produkte">
			<p>Angaben gemaeß § 5TMG: <br><br>
					Philipp Fischer,<br>
					Albulena Sejdijaj<br>
					Nachtlieferservice<br>
					Maxstraße 12<br> 67059
					Ludigshafen am Rhein<br><br>
				Kontakt: <br><br>
				Telefon: +49 987 654 - 3<br> E-Mail: admin@jits-service.de
				</p>
	</div>
</main>
<br><br><br><br><br><br>
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>