<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>

<title>index</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
  rel="stylesheet">
<script src="<c:url value="/resources/js/bunble.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<style>
table, th, td {
	border: 1px solid black;
}
td {
	padding-right: 30px;
}
</style>
</head>


<nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed"
          data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
          aria-expanded="false">
          <span class="sr-only">Toggle navigation</span> <span
            class="icon-bar"></span> <span class="icon-bar"></span> <span
            class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Brand</a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse"
        id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
          <li><a href="#">Link</a></li>
          <li class="dropdown"><a href="#" class="dropdown-toggle"
            data-toggle="dropdown" role="button" aria-haspopup="true"
            aria-expanded="false">Dropdown <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#">Separated link</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#">One more separated link</a></li>
            </ul></li>
        </ul>
        <form class="navbar-form navbar-left">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Link</a></li>
          <li class="dropdown"><a href="#" class="dropdown-toggle"
            data-toggle="dropdown" role="button" aria-haspopup="true"
            aria-expanded="false">Dropdown <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">Action</a></li>
              <li><a href="#">Another action</a></li>
              <li><a href="#">Something else here</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#">Separated link</a></li>
            </ul></li>
        </ul>
      </div>
      <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
  </nav>
  
  
<body>
	<c:url value="/customer-save" var="urlSave"/>
	<c:url value="/customer-view/" var="urlView"/>
	<c:url value="/customer-update/" var="urlUpdate"/>
	<c:url value="/customerDelete/" var="urlDelete"/>
	<h1>List Customer:</h1>
	<a href="${urlSave}">Add Customer</a>
	<br />
	<br />


	<table class="table">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Address</th>
			<th>View</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:if test="${not empty listCustomer}">
			<c:forEach var="customer" items="${listCustomer}">
				<tr style="border: 1px black solid">
					<td>${customer.id}</td>
					<td>${customer.name}</td>
					<td>${customer.address}</td>
					<td> <a href="${urlView}/${customer.id}">View</a></td>
					<td> <a href="${urlUpdate}/${customer.id}">Edit</a></td>
					<td> <a href="${urlDelete}/${customer.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div></div>
	<div class="jumbotron">
  <h1>Hello, world!</h1>
	  <p>...</p>
	  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
	</div>

</body>
</html>