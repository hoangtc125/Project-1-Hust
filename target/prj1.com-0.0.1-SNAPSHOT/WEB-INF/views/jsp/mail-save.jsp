<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div style="display: inline">
	<a
		href="<c:url value="/mail-list/${pageContext.request.userPrincipal.name}" />">List
		Mail</a><br />
	<h1>Add new email:</h1>
	<c:url value="/saveMail" var="saveMail" />
	<form:form
		action="${saveMail}/${pageContext.request.userPrincipal.name}"
		method="POST" modelAttribute="mail" id="formsave">
      Receiver: <form:input path="receiver" class="form-control" />
		<br />
		<br />
      title <form:input path="title" class="form-control" />
		<br />
		<br />
      content <form:input path="content" class="form-control" />
		<br />
		<br />
		<button class="btn btn-primary">Submit</button>
	</form:form>
</div>
