<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

  <a href="<c:url value="/user-list?sort=" />">List User</a>
  <br />
  <h1>Edit User:</h1>
  <c:url value="/updateUser" var="updateUser" />
  <form:form action="${updateUser}" method="POST" modelAttribute="user">
      Id: <form:input path="id" readonly="true" /> <br/> <br/>
      Name: <form:input path="name" /> <br/> <br/>
      MSSV: <form:input path="mssv" /> <br/> <br/>
      Class: <form:input path="clazz" /> <br/> <br/>
      Username: <form:input path="username" /> <br/> <br/>
      Password: <form:input path="password" /> <br/> <br/>
      Enabled: <form:input path="enabled" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>