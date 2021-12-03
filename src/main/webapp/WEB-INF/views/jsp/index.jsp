<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/user-list" var="urlList"/>
<c:url value="/login" var="urlLogin"/>

<div class="container">
  <div class="row">
    <div class="col">
		<h1 class="d-flex justify-content-center">List user </h1>
		<a href="${urlList} " class="d-flex justify-content-center">View List User</a>
    </div>
      <c:if test="${empty pageContext.request.userPrincipal.name}">
    <div class="col">
		<h1 class="d-flex justify-content-center">Login </h1>
		<a href="${urlLogin}" class="d-flex justify-content-center">Login here</a>
    </div>
    </c:if>
  </div>
</div>