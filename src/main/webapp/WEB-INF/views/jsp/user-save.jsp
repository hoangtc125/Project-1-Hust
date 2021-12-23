 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 
 <div class="container-fluid bg-form">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 setting-container">
                    <h1 class="login-title mb-4">Add new user</h1>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="flexRadioDefault"
                            id="roleuser" checked>
                        <label class="form-check-label" for="flexRadioDefault1">
                            ROLE_USER
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="roleadmin">
                        <label class="form-check-label" for="flexRadioDefault2">
                            ROLE_ADMIN
                        </label>
                    </div>
                    	<c:url value="/saveUser" var="saveUser" />
						<c:url value="/saveAdmin" var="saveAdmin" />
                    <form:form action="${saveUser}" method="POST" modelAttribute="user" id="formsave">
                        <div class="form-group row mb-3">
                            <label for="name" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <form:input path="name" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="mssv" class="col-sm-2 col-form-label">MSSV</label>
                            <div class="col-sm-10">
                                <form:input path="mssv" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="username" class="col-sm-2 col-form-label">Username</label>
                            <div class="col-sm-10">
                                <form:input path="username" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="password" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <form:input path="password" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="Class" class="col-sm-2 col-form-label">Class</label>
                            <div class="col-sm-10">
                                <form:input path="clazz" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="Enable" class="col-sm-2 col-form-label">Enable</label>
                            <div class="col-sm-10">
                                <form:input path="enabled" class="form-control" />
                            </div>
                        </div>
                        </form:form>
                        <div class = "see-listuser">
                        	<a href = "<c:url value="/user-list?sort=" />">See the list of users here</a>
                        </div>
                        <div class="form-group row mb-3 text-center">
                            <div class="col-sm-12">
                                <button class="btn btn-primary" onclick="my_button_click_handler()">Done</button>
                            </div>
                        </div>
                   
            </div>
        </div>
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
