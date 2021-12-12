<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div style="display: inline">
	<a href="<c:url value="/product-list-management" />">List Product
		Management</a><br />
	<h1>Add new product:</h1>

	<c:url value="/saveProduct" var="saveProduct" />
	<form:form action="${saveProduct}" method="POST"
		modelAttribute="product" id="formsave">
      Name: <form:input path="name" class="form-control" />
		<br />
		<br />
      Available: <form:input path="unSold" class="form-control" />
		<br />
		<br />
      Price: <form:input path="price" class="form-control" />
		<br />
		<br />
		<button class="btn btn-primary">Submit</button>
	</form:form>
</div>

