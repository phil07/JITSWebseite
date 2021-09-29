<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="../js/warenkorb.js"></script>
<title>Pakete</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>

		<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
  Alkohol ist ab 18! Bei Lieferung wird dein Personalausweis überprüft! <br>
  <a href = "https://www.kenn-dein-limit.info/" >&#10233; Kenn dein Limit &#10232;</a>
</div>
	<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />
<jsp:useBean id="message" class="jits.beans.MessageBean"
		scope="session"></jsp:useBean>

<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>

<form action ="..\jsp\PaketeAppl.jsp" method="post">
	<!-- CONTENT -->
		<main class="main">
		<br> <br>
		<h2>Fertiggestellte Pakete</h2>
		<div class= line>
			<div><a href="Paket1View.jsp"><img class="myLine" src="../IMG/Paket1.jpg" height="300px" width="auto"> </a>
			<div class="myLine2">
				<span class="shop-ite-title"><a href="Paket1View.jsp">Mädelsabend</a></span> 
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">48,00 Euro</div>
					 <input Type ="submit" name="paket1" value="in den Warenkorb">
				</div>
				</div>
					
			<div><a href="Paket2View.jsp"> <img class="myLine" src="../IMG/Paket2.jpg" height="300x" width="auto"></a>
			<div class="myLine2">
					<span class="shop-ite-title"><a href="Paket2View.jsp">Männerabend</a></span>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">61,00 Euro</div>
					 <input Type ="submit" name="paket2" value="in den Warenkorb">
				</div>
				</div>
				
			<div><a href="Paket3View.jsp"><img class="myLine" src="../IMG/Paket3.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<span class="shop-ite-title"><a href="Paket3View.jsp">Netflix &amp Chill</a></span>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">15,00 Euro</div>
					 <input Type ="submit" name="paket3" value="in den Warenkorb">
				</div>
				</div>
				
			<div><a href="Paket4View.jsp"><img class="myLine" src="../IMG/Paket4.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<span class="shop-ite-title"><a href="Paket4View.jsp">Partypaket</a></span>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">96,00 Euro</div>
					<input Type ="submit" name="paket4" value="in den Warenkorb">
				</div>
				</div>
		</div>
		<br><br><br><br><br><br>
</main>
</form>
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>