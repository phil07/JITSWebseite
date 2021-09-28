<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jits.beans.Warenkorb" %>
     <%@page import="jits.beans.WarenkorbBean" %>
      <%@page import ="jits.beans.MessageBean" %>
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
<%
WarenkorbBean warenkorb = (WarenkorbBean) session.getAttribute("warenkorb"); 
if (warenkorb == null){
warenkorb = new WarenkorbBean();
session.setAttribute("warenkorb", warenkorb);

}
MessageBean message = (MessageBean) session.getAttribute("message");
if (message == null) {
	message = new MessageBean();
	session.setAttribute("message", message);
}


%>
<form action="./WarenkorbAppl.jsp" method="get">
		
<!-- HEADER -->

<jsp:getProperty property="headerAsHtml" name="sb" />
<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>

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
		<input type="submit" name="loeschen"
		value="Warenkorb Loeschen" >

<!-- FOOTER -->

		<jsp:getProperty property="startFooterAsHtml" name="sb" />
		
</form>
</body>
</html>