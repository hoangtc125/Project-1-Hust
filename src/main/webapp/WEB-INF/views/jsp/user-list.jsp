<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/user-save" var="urlSave"/>
<c:url value="/user-view" var="urlView"/>
<c:url value="/user-update" var="urlUpdate"/>
<c:url value="/userDelete" var="urlDelete"/>
<div class="d-flex justify-content-center">
<h1>List user:</h1>
<a href="${urlSave}">Add user</a>
<br />
<br />
<table class="table table-striped">
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Address</th>
    <th>View</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:if test="${not empty listUser}">
<c:forEach var="user" items="${listUser}">
<tr style="border: 1px black solid">
<td>${user.id}</td>
<td>${user.name}</td>
<td>${user.mssv}</td>
<td> <a href="${urlView}/${user.id}">View</a></td>
<td> <a href="${urlUpdate}/${user.id}">Edit</a></td>
<td> <a href="${urlDelete}/${user.id}">Delete</a></td>
</tr>
</c:forEach>
</c:if>
</table>
<form action="<c:url value="/j_spring_security_logout" />" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="submit" value="Logout" />
</form>
</div>