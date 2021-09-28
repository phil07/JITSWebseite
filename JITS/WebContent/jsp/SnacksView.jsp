<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<title>Snacks</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />
<jsp:useBean id="message" class="jits.beans.MessageBean"
		scope="session"></jsp:useBean>

<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>

<!-- CONTENT -->

<main class="main">
		<br> <br>
		<h2>Snacks</h2><br><br>
		<div class= line>
			<div><img class="myLine" src="../IMG/Funny-Frisch Ungarisch.jpg" height="300px" width="auto"> 
			<div class="myLine2">
				<a>Funny-frisch Chipsfrisch - Ungarisch</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">2,50 Euro</div>
					 <a href="#" data-name="Chips" data-price="2.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
					
			<div> <img class="myLine" src="../IMG/Snack-Mix.jpg" height="300x" width="auto">
			<div class="myLine2">
					<a>Snack-Mix</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">3,00 Euro</div>
					 <a href="#" data-name="Snacks" data-price="3.00" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/popcorn salzig.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Mikrowellen-Popcorn salzig</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					 <a href="#" data-name="Popcornsalzig" data-price="1.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				</div> 
				
			<div class= line>		
			<div><img class="myLine" src="../IMG/popcorn süß.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Mikrowellen-Popcorn süß</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					 <a href="#" data-name="Popcornsues" data-price="1.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div> 
			
			<div><img class="myLine" src="../IMG/Haribo.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Haribo Goldbären</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					 <a href="#" data-name="Goldbaeren" data-price="1.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Schlümpfe.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Haribo Schlümpfe </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					 <a href="#" data-name="Schluempfe" data-price="1.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			</div>
			
			
			<div class= line>
			<div><img class="myLine" src="../IMG/Milka alpenmilch.jpg" height="380px" width="auto">
			<div class="myLine2">
					<a>Milka - Alpenmilchcreme </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					 <a href="#" data-name="Alpenmilchcreme" data-price="1.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Milka Haselnuuss.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>Milka - Ganze Haselnüsse  </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					 <a href="#" data-name="Haselnuesse" data-price="1.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/NicNac´s.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>NicNac´s 125g </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">2,99 Euro</div>
					 <a href="#" data-name="NicNac" data-price="2.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			</div>
		
	</main>
	
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>