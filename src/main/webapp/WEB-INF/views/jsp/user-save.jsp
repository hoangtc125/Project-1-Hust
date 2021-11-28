<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div style="display:inline">
  <a href="<c:url value="/user-list?sort=" />" >List User</a><br />
  <h1>Add new user:</h1>
  <c:url value="/saveUser" var="saveUser"/>
  <form:form action="${saveUser}" method="POST"
    modelAttribute="user">
      Name: <form:input path="name"  class="form-control" /> <br/> <br/>
      Mssv: <form:input path="mssv"  class="form-control" /> <br/> <br/>
      Username: <form:input path="username"  class="form-control" /> <br/> <br/>
      Password: <form:input path="password"  class="form-control" /> <br/> <br/>
      Enabled: <form:input path="enabled"  class="form-control" /> <br/> <br/>
      Class: <form:input path="clazz"  class="form-control" /> <br/> <br/>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form:form>
</div>
