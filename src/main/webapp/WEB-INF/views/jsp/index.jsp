<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project 1</title>
</head>
<body>
  <c:url value="/user-list" var="urlList"/>
  <c:url value="/login" var="urlLogin"/>
  <h1>List user </h1>
  <a href="${urlList}">View List User</a>
  <h1>Login </h1>
  <a href="${urlLogin}">Login here</a>
</body>
</html>