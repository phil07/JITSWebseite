<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jits.beans.Warenkorb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<link rel="stylesheet" type="text/css" href="../css/Warenkorb.css">
<title>Insert title here</title>
</head>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
<jsp:useBean id="kb" class="jits.beans.WarenkorbBean"
		scope="session"></jsp:useBean>
		
<body>

<form action="./WarenkorbAppl.jsp" method="get">
		
<!-- HEADER -->

<jsp:getProperty property="headerAsHtml" name="sb" />

<!-- CONTENT -->

<h2>Dein Warenkorb</h2>
	<table border="1">

		<tr>
			<th><h1>Anzahl</h1> </th>
			<th><h1>Produkt</h1></th>
			<th><h1>Preis</h1></th>
			<th><h1>Gesamt</h1></th>
		</tr>
		<tr>
		</tr>
		<tr>
            <td><h1><%=kb.getMenge()%></h1></td>
			<td><h1><%=kb.getAname()%></h1></td>
			<td><h1><%=kb.getPreis()%></h1></td>
			<td><h1><%=kb.summeBerechnen()%> EUR</h1></td>
		</tr>

	</table>

	<br>
	<input type="submit" name="jetztkaufen"
		value="Jetzt Kaufen">
	<input type="submit" name="weitereinkaufen"
		value="Weiter Einkaufen">
		<input type="submit" name="warenkorb"
		value="Warenkorb Loeschen" >

<!-- FOOTER -->

		<jsp:getProperty property="startFooterAsHtml" name="sb" />
		
</form>
</body>
</html>
