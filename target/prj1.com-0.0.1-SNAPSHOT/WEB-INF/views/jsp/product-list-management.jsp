<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/product-save" var="urlSave" />
<c:url value="/product-view" var="urlView" />
<c:url value="/product-update" var="urlUpdate" />
<c:url value="/productSoftDelete" var="urlSoftDelete" />
<c:url value="/product-list-deleted" var="urlListSoftDeleted" />
<c:url value="0" var="count" />
<div>
	<div>
		<h1>Add product:</h1>
		<a href="${urlSave}">Add product</a>
	</div>
	<div>
		<h1>Garbage:</h1>
		<a href="${urlListSoftDeleted}">View garbage</a>
	</div>
	<br /> <br />
	<div>
		<table class="table table-striped">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>sold</th>
				<th>available</th>
				<th>price</th>
				<th>View</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:if test="${not empty listProduct}">
				<c:forEach var="product" items="${listProduct}">
					<tr style="border: 1px black solid">
						<td>${count = count + 1}</td>
						<td>${product.name}</td>
						<td>${product.sold}</td>
						<td>${product.unSold}</td>
						<td>${product.price}</td>
						<td><a href="${urlView}/${product.id}">View</a></td>
						<td><a
							href="${urlUpdate}/${product.id}/${pageContext.request.userPrincipal.name}">Edit</a></td>
						<td><a
							href="${urlSoftDelete}/${product.id}/${pageContext.request.userPrincipal.name}">Delete</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</div>