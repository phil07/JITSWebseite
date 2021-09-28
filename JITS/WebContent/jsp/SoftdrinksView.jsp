<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<title>Softdrinks</title>
</head>
<body>

<jsp:useBean id="message" class="jits.beans.MessageBean" scope="session" />

<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />
<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>



<!-- CONTENT -->

<main class="main">
		<br> <br>
		<h2>Softdrinks</h2><br><br>
		<div class= line>
			<div><img class="myLine" src="../IMG/CocaCola.jpg" height="300px" width="auto"> 
			<div class="myLine2">
				<a>Coca-Cola 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					 <a href="#" data-name="Cola" data-price="2.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
					
			<div> <img class="myLine" src="../IMG/Cola light.jpg" height="300x" width="auto">
			<div class="myLine2">
					<a>Coca-Cola light 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					 <a href="#" data-name="Colalight" data-price="2.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Mezzo.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Mezzo Mix 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					 <a href="#" data-name="MezzoMix" data-price="2.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
					
			<div><img class="myLine" src="../IMG/Fanta.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Fanta 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					 <a href="#" data-name="Fanta" data-price="2.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div> 
				</div>
				 
			<div class= line>	
			<div><img class="myLine" src="../IMG/Sprite.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Sprite 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,50 Euro</div>
					 <a href="#" data-name="Sprite" data-price="2.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Red Bull.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Red Bull 0,25L </a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,75 Euro</div>
					 <a href="#" data-name="RedBull" data-price="2.75" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			
			<div><img class="myLine" src="../IMG/28Black.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>28 Black Acai 0,25L   </a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">2,80 Euro</div>
					 <a href="#" data-name="28Black" data-price="2.80" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Marakuja.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>Maracuja-Nektar 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">3,50 Euro</div>
					 <a href="#" data-name="Maracuja" data-price="3.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			</div>
			
			<div class= line>		
			<div><img class="myLine" src="../IMG/Kirschsaft.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>Albi - Kirschnektar 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">3,50 Euro</div>
					 <a href="#" data-name="Kirsche" data-price="3.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			
			<div><img class="myLine" src="../IMG/Orangensaft.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>Albi - Orangensaft 1L</a>
			<div class="produkt-marke">Softdrinks</div>
					<div class="produkt-preis">3,50 Euro</div>
					 <a href="#" data-name="Orangensaft" data-price="3.50" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			</div>
		
	</main>
	
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>