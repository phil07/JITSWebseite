<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jits.beans.MessageBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript" src="../js/Home.js"></script>
<title>JITS Nachtlieferservice</title>

</head>
<body>

<jsp:useBean id="message" class="jits.beans.MessageBean" scope="session" />
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
		<jsp:useBean id="lb" class="jits.beans.LoginBean"
		scope="session"></jsp:useBean>
		
<form action="../jsp/HomeAppl.jsp" method="get">

<!-- HEADER -->

<jsp:getProperty property="headerAsHtml" name="sb" />
<a href="../jsp/WarenkorbView.jsp"><%=message.getWarenkorbMessage()%></a>
 <a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>
 

<!-- CONTENT -->
	
		<main class="main">
		
			<div>
			<h3>Herzlich Willkommen! </h3>
			<p class="homeseiter">
			<br> <br>
			JITS ist ein Nachtlieferservice, wir liefern dir Getränke, Snacks und bereits zusammengestellte Pakete direkt an die Haustür.  <br><br>
			Klick auf eine Kategorie z.B "Softdrinks" um unsere Produkte sehen zu können. </p>
			
		<div class="slides">
			<a href="PaketeView.jsp"><img class="mySlides"
				src="../IMG/Paket1.jpg" height="800px" width="auto"> </a>
			<div class="mySlides2">
				<a href="Paket1View.jsp">Mädelsabend</a>
			</div>
			<a href="PaketeView.jsp"> <img class="mySlides"
				src="../IMG/Paket2.jpg" height="800x" width="auto"></a>
			<div class="mySlides2">
				<a href="Paket2View.jsp">Männerabend</a>
			</div>
			<a href="PaketeView.jsp"><img class="mySlides"
				src="../IMG/Paket3.jpg" height="800px" width="auto"></a>
			<div class="mySlides2">
				<a href="Paket3View.jsp">Netflix &amp Chill </a>
			</div>
			<a href="PaketeView.jsp"><img class="mySlides"
				src="../IMG/Paket4.jpg" height="800px" width="auto"></a>
			<div class="mySlides2">
				<a href="Paket4View.jsp">Party</a>
			</div>
		</div>
	</div>
	<h2><a href="PaketeView.jsp">Unsere Spezial Pakete</a></h2> 
	<br><br>
	<div class=line>
			<div><a href="AlkoholView.jsp"><img class="myLine" src="../IMG/Jack-Daniels-Old-No.-7-Tennessee-Whiskey.jpg" height="300px" width="auto"> </a>
			<div class="myLine2">
				<h4><a href="AlkoholView.jsp">Alkohol</a></h4>
			</div>
			</div>
			
			<div><a href="BierView.jsp"> <img class="myLine" src="../IMG/Rothaus Pils.jpg" height="300x" width="auto"></a>
			<div class="myLine2">
				<h4><a href="BierView.jsp">Bier</a></h4>
			</div>
			</div>
			
			<div><a href="SnacksView.jsp"><img class="myLine" src="../IMG/chips ungarisch.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
				<h4><a href="SnacksView.jsp">Snacks</a></h4>
			</div>
			</div>
			
			<div><a href="SoftdrinksView.jsp"><img class="myLine" src="../IMG/CocaCola.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
				<h4><a href="SoftdrinksView.jsp">Softdrinks</a></h4>
			</div>
			</div>
		</div>
		
		<br><br><br><br><br><br>
		<h4>Unsere Lieferzeiten</h4>
		<div class="produkte">
		<p>Di. & Do. 22:00 - 02:00 Uhr<br><br>
		Fr. & Sa. 22:00 - 03:00 Uhr<br><br>
		So.	   	12:00 - 18:00 Uhr</p>
		</div>
		
</main> 
 
	
			<script>
			var myIndex = 0;
			carousel1();
			function carousel1() {
				var i;
				var x = document.getElementsByClassName("mySlides");
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				myIndex++;
				if (myIndex > x.length) {
					myIndex = 1
				}
				x[myIndex - 1].style.display = "block";
				setTimeout(carousel1, 5000);
			}
		</script>
		<script>
			var a = 0;
			carousel2();
			function carousel2() {
				var j;
				var y = document.getElementsByClassName("mySlides2");
				for (j = 0; j < y.length; j++) {
					y[j].style.display = "none";
				}
				a++;
				if (a > y.length) {
					a = 1
				}
				y[a - 1].style.display = "block";
				setTimeout(carousel2, 5000);
			}
		</script>



<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</form>
</body>
</html>