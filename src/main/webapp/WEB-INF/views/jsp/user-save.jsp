<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div style="display: inline">
	<a href="<c:url value="/user-list?sort=" />">List User</a><br />
	<h1>Add new user:</h1>
	<div class="form-check">
		<input class="form-check-input" type="radio" name="flexRadioDefault"
			id="roleuser" checked> <label class="form-check-label"
			for="flexRadioDefault1"> ROLE_USER </label>
	</div>
	<div class="form-check">
		<input class="form-check-input" type="radio" name="flexRadioDefault"
			id="roleadmin"> <label class="form-check-label"
			for="flexRadioDefault2"> ROLE_ADMIN </label>
	</div>
	<c:url value="/saveUser" var="saveUser" />
	<c:url value="/saveAdmin" var="saveAdmin" />
	<form:form action="${saveUser}" method="POST" modelAttribute="user"
		id="formsave">
      Name: <form:input path="name" class="form-control" />
		<br />
		<br />
      Mssv: <form:input path="mssv" class="form-control" />
		<br />
		<br />
      Username: <form:input path="username" class="form-control" />
		<br />
		<br />
      Password: <form:input path="password" class="form-control" />
		<br />
		<br />
      Enabled: <form:input path="enabled" class="form-control" />
		<br />
		<br />
      Class: <form:input path="clazz" class="form-control" />
		<br />
		<br />
	</form:form>
	<button class="btn btn-primary" onclick="my_button_click_handler()">Submit</button>
</div>

<script>
	function my_button_click_handler() {
		if (document.getElementById('roleuser').checked) {
			document.getElementById("formsave").action = "${saveUser}";
			document.getElementById("formsave").submit();
		} else if (document.getElementById('roleadmin').checked) {
			document.getElementById("formsave").action = "${saveAdmin}";
			document.getElementById("formsave").submit();
		}
	};
</script>
