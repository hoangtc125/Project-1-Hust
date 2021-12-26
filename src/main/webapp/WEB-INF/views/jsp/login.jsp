<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="container-fluid bg-form" style = "margin-top: -40px;">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 login-container">
                <form action="<c:url value='j_spring_security_login' />" method='POST'>
                <br>
                    <h1 class="login-title mb-4">Sign in</h1>

                    <div class="form-group">
                        <label for="email">Username</label>
                        <input type="text" class="form-control mb-4" name="username" placeholder="Enter username">
                        <!-- <p class="emailError"></p> -->
                    </div>
                    <div class="form-group">
                        <label for="password" class="label">Password</label>
                        <input type="password" class="form-control mb-4" name="password" placeholder="Password">
                        <!-- <p class="passwordError"></p> -->
                    </div>

                    <div class="text-center">
                       

                        <div class="clearfix"></div>

                        <input name="submit" type="submit"
							value="Login" class="btn btn-primary " />
							<br>
							<br>
							<h2 style = "font-family: Roboto; color: 00C300;">${message}</h2>
                       
                    </div>
 					<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
                </form>
            </div>
        </div>
    </div>