<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
	body{
	margin-top: 150px;
	}
</style>
<div style="display: inline">
	<h1 class = "add-News">Create news</h1>
	<br>
	<br>
	<br>
	<br>
	<div class = "row">
		<div class = "col-md-1"></div>
		<div class = "col-md-10">
			<div class = "name">
			<div class = "btn btn-success btn-new_list">
			<a href="<c:url value="/news-list-management" />">List News Management</a>
			</div>
			</div>
				<br>
			<c:url value="/saveNews" var="saveNews" />
			<form:form action="${saveNews}" method="POST" modelAttribute="news" id="formsave">
		      Title <form:input path="title" class="form-control" />
				<br />
				<br />
				
		      Content <form:input path="content" class="form-control" rows="5"/>
				<br />
				<br />
				<button class="btn btn-primary">Submit</button>
			</form:form>
		</div>
		<div class = "col-md-1"></div>
	</div>
	<br>
	<br>
	<br>
	<br>
</div>

