<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<html>
<head>
<title><tiles:getAsString name="title" /></title>

<!-- css bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>
<body>

<style>
	.class-button{
	text-align: right;
	margin-right: 170px;
	}
	a:hover {
	  color: white; 
	  background-color: 0099FF;
	}
	th{
	border: 1px black solid;
	text-align: center;
	}
	td{
	border: 1px black solid;
	text-align: center;
	}
	.button-login{
	padding: 7px 16px;
	border: 1px solid blue;
	background-color: white;
	text-decoration: none;
	border-radius: 5px;
	}
	.button{
	display: inline-block;
	padding: 8px 16px;
	background-color: 00C300;
	text-decoration: none;
	border-radius: 10px;
	color: white;
	}
</style>

	<tiles:insertAttribute name="header" />
	<br />
	<div class="d-flex flex-column bd-highlight mb-3">
		<tiles:insertAttribute name="body" />
	</div>
	<br />
	<br />
	<tiles:insertAttribute name="footer" />

	<!-- js jquery bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>
</html>