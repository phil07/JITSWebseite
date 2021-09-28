<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/warenkorb1.css">
<script type="text/javascript" src="../js/warenkorb.js"></script>
<title>Pakete</title>
<style type="text/css">
	@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
	</style>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
		


	<!-- CONTENT -->
		<h1> <i class ="fa fa-shopping-cart"></i></h1>
		<section>
		 	<div>
		 		<img src="../IMG/Paket1.jpg">
		 		<p> Das ist das erste Produkt </p>
		 		<h6>56Euro</h6>
		 		<span></span>
		 		<button>Add-cart</button>
		 	</div>
		 		<div>
		 		<img src="../IMG/Paket2.jpg">
		 		<p> Das ist das erste Produkt </p>
		 		<h6>56Euro</h6>
		 		<span></span>
		 		<button>Add-cart</button>
		 	</div>
		 		<div>
		 		<img src="../IMG/Paket3.jpg">
		 		<p> Das ist das erste Produkt </p>
		 		<h6>56Euro</h6>
		 		<span></span>
		 		<button>Add-cart</button>
		 	</div>
		 		<div>
		 		<img src="../IMG/Paket4.jpg">
		 		<p> Das ist das erste Produkt </p>
		 		<h6>56Euro</h6>
		 		<span></span>
		 		<button>Add-cart</button>
		 	</div>
		</section>
		<div class="select">
		</div>
		
		

<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>