<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>View User</title>
</head>
<body>
  <a href="<c:url value="/user-list" />" >List User</a><br />
  <h1>View User:</h1>  
  User MSSV: ${customer.mssv} <br/>
  User Name: ${customer.name} <br/>
  User Class: ${customer.clazz} <br/>
</body>
</html>