<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<h1>User Page</h1>
	<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>

	<a href="<c:url value="/admin" />">Admin Page</a> <br/>

	<form action="<c:url value="/j_spring_security_logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="submit" value="Logout" />
	</form>

