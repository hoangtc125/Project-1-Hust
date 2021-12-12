<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<form name='loginForm'
	action="<c:url value='j_spring_security_login' />" method='POST'>
	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-5" class="d-flex justify-content-center">
				<h1>Login to access our app</h1>


				<table class="table">
					<tr class="mb-3">
						<td class="form-label">User:</td>
						<td><input type='text' name='username' class="form-control"></td>
					</tr>
					<tr class="mb-3">
						<td class="form-label">Password:</td>
						<td><input type='password' name='password'
							class="form-control" /></td>
					</tr>
					<tr class="mb-3">
						<td colspan='2'><input name="submit" type="submit"
							value="login" class="btn btn-primary " /></td>
						<td><h2>${message}</h2></td>
					</tr>
				</table>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</div>
			<div class="col"></div>
		</div>
	</div>

</form>