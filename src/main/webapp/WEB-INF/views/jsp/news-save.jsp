<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div style="display: inline">
	<a href="<c:url value="/news-list-management" />">List News
		Management</a><br />
	<h1>Add new news:</h1>

	<c:url value="/saveNews" var="saveNews" />
	<form:form action="${saveNews}" method="POST" modelAttribute="news"
		id="formsave">
      Title: <form:input path="title" class="form-control" />
		<br />
		<br />
      Content: <form:input path="content" class="form-control" />
		<br />
		<br />
		<button class="btn btn-primary">Submit</button>
	</form:form>
</div>

