<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>List Users</title>
<style>
table, th, td {
  border: 1px solid black;
}
td {
  padding-right: 30px;
}
</style>
</head>
<body>
  <c:url value="/user-save" var="urlSave"/>
  <c:url value="/user-view/" var="urlView"/>
  <c:url value="/user-update/" var="urlUpdate"/>
  <c:url value="/userDelete/" var="urlDelete"/>
  <h1>List user:</h1>
  <a href="${urlSave}">Add user</a>
  <br />
  <br />
  <table>
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
</body>
</html>