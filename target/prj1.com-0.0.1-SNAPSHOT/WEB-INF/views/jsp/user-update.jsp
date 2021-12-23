<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-fluid bg-form">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 setting-container">
                    <h1 class="login-title mb-4">Edit user</h1>
                    <c:url value="/updateUser" var="updateUser" />
                    <form:form action="${updateUser}" method="POST" modelAttribute="user" >
                        <div class="form-group row mb-3">
                            <label for="id" class="col-sm-2 col-form-label">Id</label>
                            <div class="col-sm-10">
                                <form:input path="id" readonly="true"  type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="name" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <form:input path="name"  type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="mssv" class="col-sm-2 col-form-label">MSSV</label>
                            <div class="col-sm-10">
                                <form:input path="mssv"  type="text" class="form-control"/>
                            </div>
                        </div>
                        
                        <div class="form-group row mb-3">
                            <label for="Class" class="col-sm-2 col-form-label">Class</label>
                            <div class="col-sm-10">
                                <form:input path="clazz"  type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="name" class="col-sm-2 col-form-label">Username</label>
                            <div class="col-sm-10">
                                <form:input path="username"  type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="name" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <form:input path="password"  type="password" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="Enable" class="col-sm-2 col-form-label">Enable</label>
                            <div class="col-sm-10">
                                <form:input path="enabled"  type="text" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                        	<c:if test="${roleAdmin == true}">
	                            <label for="name" class="col-sm-2 col-form-label">Coin</label>
	                            <div class="col-sm-10">
	                                <form:input path="coin" type="text" class="form-control"/>
	                            </div>
                            </c:if>
                            <c:if test="${roleAdmin == false}">
                            	<label for="name" class="col-sm-2 col-form-label">Coin</label>
	                            <div class="col-sm-10">
	                                <form:input path="coin" readonly="true" type="text" class="form-control"/>
	                            </div>
                            </c:if>
                            
                        </div>

                        <div class="form-group row mb-3 text-center">
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-primary ">Done</button>
                            </div>
                        </div>
                    </form:form>

            </div>
        </div>
    </div>