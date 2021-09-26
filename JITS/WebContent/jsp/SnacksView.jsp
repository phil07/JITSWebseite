<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
					
			<div> <img class="myLine" src="../IMG/Snack-Mix.jpg" height="300x" width="auto">
			<div class="myLine2">
					<a>Snack-Mix</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">3,00 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/popcorn salzig.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Mikrowellen-Popcorn salzig</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
				</div> 
				
			<div class= line>		
			<div><img class="myLine" src="../IMG/popcorn süß.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Mikrowellen-Popcorn süß</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div> 
			
			<div><img class="myLine" src="../IMG/Haribo.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Haribo Goldbären</a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Schlümpfe.jpg" height="300px" width="auto">
			<div class="myLine2">
					<a>Haribo Schlümpfe </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
			</div>
			
			
			<div class= line>
			<div><img class="myLine" src="../IMG/Milka alpenmilch.jpg" height="380px" width="auto">
			<div class="myLine2">
					<a>Milka - Alpenmilchcreme </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/Milka Haselnuuss.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>Milka - Ganze Haselnüsse  </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">1,99 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
				
			<div><img class="myLine" src="../IMG/NicNac´s.jpg" height="350px" width="auto">
			<div class="myLine2">
					<a>NicNac´s 125g </a>
			<div class="produkt-marke">Snacks</div>
					<div class="produkt-preis">2,99 Euro</div>
					<input class="button" Type ="submit" name="cart" value="in den Warenkorb">
				</div>
				</div>
			</div>
		
	</main>
	
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>