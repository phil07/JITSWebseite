<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<title>Sierra Tequila Silver </title>
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
<br> <br>
	<main class="main">
			<div class="content">
			<h2>Sierra Tequila Silver </h2> <br> <br>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../IMG/Sierra Tequilla.jpg" height="800px" width="auto" alt ="Alkohol"/>
					<div class="produkt-name">
					<a href="produkt.html">Sierra Tequila Silver 0,7L (38% Vol.) </a>
					</div>
					<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,99 Euro</div>
					<button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
					</div>
			</ul>
			</div>
			
		<h4 class="beschreibung">Beschreibung</h4>
		<p> 
		Sierra Tequila Silver ist ein geruhter, klarer Tequila. Sein volles, fruchtiges, 
		frisches und von leichter Chilinote dominiertes Aroma spiegelt sowohl die Tequilana Weber Azul Agave wieder, 
		als auch leichte Noten vom gr�nen Apfel und junger Ananas.<br>
		Pfeffer Nuancen geben Sierra Tequila Silver das gewisse Etwas und machen ihn zu einem temperamentvollen Tequila.<br>
		Sierra Tequila kommt aus der Destiler�a Sierra, die auf einer historischen Hacienda in Guadalajara, 
		der Hauptstadt des Tequila, gelegen ist.
		</p>
		
		<br><br><br><br><br><br>
	<h2>�hnliche Produkte</h2>
			<div class= line>	
			<div><a href="GorbatschowView.jsp"><img class="myLine" src="../IMG/Gorbatschow.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="GorbatschowView.jsp">Gorbatschow 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">14,99 Euro</div>
				</div></div>
				
			<div><a href="GordonView.jsp"><img class="myLine" src="../IMG/Gordon�s.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="GordonView.jsp">Gordon�s 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,99 Euro</div>
				</div>
				</div>
				
			<div><a href="JackDanielsView.jsp"><img class="myLine" src="../IMG/Jack-Daniels-Old-No.-7-Tennessee-Whiskey.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="JackDanielsView.jsp">Jack Daniel�s 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">24,99 Euro</div>
				</div>
				</div>
				</div>
				<div class= line>
			<div><a href="ThreeSixtyView.jsp"><img class="myLine" src="../IMG/Three Sixty.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="ThreeSixtyView.jsp">Three Sixty 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,99 Euro</div>
				</div>
				</div>
				
				
				<div><a href="BombayView.jsp"><img class="myLine" src="../IMG/Bombay.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="BombayView.jsp">Bombay Sapphire 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">27,99 Euro</div>
				</div>
				</div>

			<div><a href="CaptainMorgenView.jsp"><img class="myLine" src="../IMG/Sierra Tequilla.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="CaptainMorgenView.jsp">Captain Morgan 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">17,99 Euro</div>
				</div>
				</div> 
		</div>
				
			<div class= line>
			<div><a href="JaegermeisterView.jsp"><img class="myLine" src="../IMG/J�germeister.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="JaegermeisterView.jsp">J�germeister 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,99 Euro</div>
				</div>
				</div>
			
				
			<div><a href="AbsolitVodkaView.jsp"><img class="myLine" src="../IMG/Absolut-Vodka-07L-600x600.jpg" height="300px" width="auto"> </a>
			<div class="myLine2">
				<a href="AbsolitVodkaView.jsp">Absolut Vodka 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,99 Euro</div>
				</div>
				</div>
		
			<div><a href="BaileysView.jsp"> <img class="myLine" src="../IMG/Baileys.jpg" height="300x" width="auto"></a>
			<div class="myLine2">
					<a href="BaileysView.jsp">Baileys - Original 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">17,99 Euro</div>
				</div>
				</div>
				</div>
	</main>

<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />

</body>
</html>