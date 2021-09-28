<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript"src="../js/Home.js"></script>
<title>Alkoholische Getränke</title>
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


<!-- CONTENT -->


	<main class="main">
		<br> <br>
		<h2>Alkoholische Getränke</h2><br><br>
		<div class= line>
			<div><a href="AbsolitVodkaView.jsp"><img class="myLine" src="../IMG/Absolut-Vodka-07L-600x600.jpg" height="300px" width="auto"> </a>
			<div class="myLine2">
				<a href="AbsolitVodkaView.jsp">Absolut Vodka 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,99 Euro</div>
					 <a href="#" data-name="Absolut" data-price="21.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
					
			<div><a href="BaileysView.jsp"> <img class="myLine" src="../IMG/Baileys.jpg" height="300x" width="auto"></a>
			<div class="myLine2">
					<a href="BaileysView.jsp">Baileys - Original 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">17,99 Euro</div>
					<a href="#" data-name="Baileys" data-price="17.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><a href="BombayView.jsp"><img class="myLine" src="../IMG/Bombay.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="BombayView.jsp">Bombay Sapphire 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">27,99 Euro</div>
					<a href="#" data-name="Bombay" data-price="27.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><a href="CaptainMorgenView.jsp"><img class="myLine" src="../IMG/Captain-Morgan-Gold-Spiced-07L-Tesxtur-300x300.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="CaptainMorgenView.jsp">Captain Morgan 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">17,99 Euro</div>
					<a href="#" data-name="Captain" data-price="17.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div> 
		</div>
		
			<div class= line>	
			<div><a href="GorbatschowView.jsp"><img class="myLine" src="../IMG/Gorbatschow.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="GorbatschowView.jsp">Gorbatschow 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">14,99 Euro</div>
					<a href="#" data-name="Gorbatschow" data-price="14.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div></div>
				
				
			<div><a href="GordonView.jsp"><img class="myLine" src="../IMG/Gordon´s.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="GordonView.jsp">Gordon´s 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,99 Euro</div>
					<a href="#" data-name="Gordons" data-price="18.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><a href="JackDanielsView.jsp"><img class="myLine" src="../IMG/Jack-Daniels-Old-No.-7-Tennessee-Whiskey.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="JackDanielsView.jsp">Jack Daniel´s 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">24,99 Euro</div>
					<a href="#" data-name="Jacky" data-price="24.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			
			<div><a href="ThreeSixtyView.jsp"><img class="myLine" src="../IMG/Three Sixty.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="ThreeSixtyView.jsp">Three Sixty 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,99 Euro</div>
					<a href="#" data-name="Sixty" data-price="21.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			</div>
			<div>
			
			<div class= line>
			<div><a href="JaegermeisterView.jsp"><img class="myLine" src="../IMG/Jägermeister.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="JaegermeisterView.jsp">Jägermeister 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">21,99 Euro</div>
					<a href="#" data-name="Jaegermeister" data-price="21.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><a href="JimBeamView.jsp"><img class="myLine" src="../IMG/Jim Beam.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="JimBeamView.jsp">Jim Beam 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">19,99 Euro</div>
				<a href="#" data-name="Beam" data-price="19.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			<div><a href="MalibuView.jsp"><img class="myLine" src="../IMG/Malibu-Carribean-Rum-mit-Kokusnusslikör-07L-21-vol-Textur-300x300.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="MalibuView.jsp">Malibu 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">16,99 Euro</div>
					<a href="#" data-name="Malibu" data-price="16.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
		
			<div><a href="SierraView.jsp"><img class="myLine" src="../IMG/Sierra Tequilla.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="SierraView.jsp">Sierra Tequila Silver 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">18,99 Euro</div>
					<a href="#" data-name="Sierra" data-price="18.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			</div>
			
			</div>
			<div class= line>	
			<div><a href="SkyyView.jsp"><img class="myLine" src="../IMG/Vodka-Sky-07L-Textur-300x300.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="SkyyView.jsp">Skyy Vodka 0,7L</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">23,99 Euro</div>
					<a href="#" data-name="Skyy" data-price="23.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
				
			
			<div><a href="JackDanielsDoseView.jsp"><img class="myLine" src="../IMG/Jack-Daniels-Dose-2-heller-1-300x225.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="JackDanielsDoseView.jsp">Jack Daniel´s Cola - Mixgetränk</a>
			<div class="produkt-marke">Alkohol</div>
					<div class="produkt-preis">4,99 Euro</div>
					<a href="#" data-name="JackCola" data-price="4.99" class="add-to-cart btn btn-primary">in den Warenkorb</a>
				</div>
				</div>
			</div>
		
	</main>
	
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>