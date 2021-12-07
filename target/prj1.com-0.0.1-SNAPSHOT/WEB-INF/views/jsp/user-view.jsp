<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="display:align-items-center">
  <a href="<c:url value="/user-list?sort=" />" >List User</a><br />
  <h1>View User:</h1>  
  User MSSV: ${user.mssv} <br/>
  User Name: ${user.name} <br/>
  User Class: ${user.clazz} <br/>
</div>