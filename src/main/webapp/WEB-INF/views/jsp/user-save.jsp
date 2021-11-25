<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Save User</title>
</head>
<body>
  <a href="<c:url value="/user-list" />" >List User</a><br />
  <h1>Add new user:</h1>
  <c:url value="/saveUser" var="saveUser"/>
  <form:form action="${saveUser}" method="POST"
    modelAttribute="user">
      Name: <form:input path="name" /> <br/> <br/>
      Mssv: <form:input path="mssv" /> <br/> <br/>
      Username: <form:input path="username" /> <br/> <br/>
      Password: <form:input path="password" /> <br/> <br/>
      Enabled: <form:input path="enabled" /> <br/> <br/>
      Class: <form:input path="clazz" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>
</body>
</html>