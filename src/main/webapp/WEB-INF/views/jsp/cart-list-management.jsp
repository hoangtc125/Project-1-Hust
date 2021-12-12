<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/cart-save" var="urlSave" />
<c:url value="/cart-view" var="urlView" />
<c:url value="/cart-update" var="urlUpdate" />
<c:url value="/cartSoftDelete" var="urlSoftDelete" />
<c:url value="/cart-list-deleted" var="urlListSoftDeleted" />
<c:url value="0" var="count" />
<div>
	<br /> <br />
	<div>
		<table class="table table-striped">
			<tr>
				<th>Id</th>
				<th>Username</th>

				<th>View</th>
			</tr>
			<c:if test="${not empty listCart}">
				<c:forEach var="cart" items="${listCart}">
					<tr style="border: 1px black solid">
						<td>${count = count + 1}</td>
						<td>${cart.username}</td>
						<td><a href="${urlView}/${cart.id}">View</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</div>