<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class = "container invoice">
<h1 class="product-title mb-4" style = "margin-top: 100px;">Add new email</h1>
<div style="width: 80%; margin-left: 90px;">
	<div class="btn btn-primary follow" style = "margin-bottom: 30px; margin-top: 50px;">
	<a
		href="<c:url value="/mail-list/${pageContext.request.userPrincipal.name}" />">List
		Mail</a><br />
	</div>
	<c:url value="/saveMail" var="saveMail" />
	<form:form
		action="${saveMail}/${pageContext.request.userPrincipal.name}"
		method="POST" modelAttribute="mail" id="formsave">
      <b>Receiver</b> <form:input path="receiver" class="form-control" />
		<br />
		<br />
      <b>Title</b> <form:input path="title" class="form-control" />
		<br />
		<br />
      <b>content</b> <form:input path="content" class="form-control" />
		<br />
		<br />
		<div style="text-align: center; margin-bottom: 50px;">
		<button class="btn btn-primary">Submit</button>
		</div>
	</form:form>
</div>
</div>
