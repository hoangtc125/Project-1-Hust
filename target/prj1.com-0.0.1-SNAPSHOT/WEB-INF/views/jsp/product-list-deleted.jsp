<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/product-save" var="urlSave" />
<c:url value="/product-view" var="urlView" />
<c:url value="/product-list" var="urlList" />
<c:url value="/product-update" var="urlUpdate" />
<c:url value="/product-restore" var="urlRestore" />
<c:url value="/productDelete" var="urlDelete" />
<c:url value="/product-list-management" var="urlManage" />
<c:url value="0" var="count" />
<div class="d-flex justify-content-center">
	<div>
		<h1>List Product Management</h1>
		<a href="${urlManage}">Click here</a>
	</div>
	<br /> <br />
	<table class="table table-striped">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>

			<th>View</th>
			<th>Restore</th>
			<th>Delete</th>
		</tr>
		<c:if test="${not empty listProduct}">
			<c:forEach var="product" items="${listProduct}">
				<tr style="border: 1px black solid">
					<td>${count = count + 1}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td><a href="${urlView}/${product.id}">View</a></td>
					<td><a href="${urlRestore}/${product.id}">Restore</a></td>
					<td><a href="${urlDelete}/${product.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</div>