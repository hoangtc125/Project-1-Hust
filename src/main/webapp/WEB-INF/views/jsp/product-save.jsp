<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="container-fluid bg-form " style = "margin-top: -40px;">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 setting-container " >
            <br>
                    <h1 class="login-title mb-4">Add new product</h1>
             <br>
				<c:url value="/saveProduct" var="saveProduct" />
				<form:form action="${saveProduct}" method="POST"
					modelAttribute="product" id="formsave">
                        <div class="form-group row mb-3">
                            <label for="name" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <form:input path="name" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="mssv" class="col-sm-2 col-form-label">Available</label>
                            <div class="col-sm-10">
                                <form:input path="unSold" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="username" class="col-sm-2 col-form-label">Price</label>
                            <div class="col-sm-10">
                                <form:input path="price" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="image" class="col-sm-2 col-form-label">Link Image</label>
                            <div class="col-sm-10">
                                <form:input path="image" class="form-control" />
                            </div>
                        </div>
                          <div class = "see-listuser">
                        	<a href = "<c:url value="/product-list-management" />">See the list product management</a>
                        </div>
                        <div style = "text-align: center;">
                        <button class="btn btn-primary">Submit</button>
                        </div>
                        <br>
                        <br>
                        </form:form>
            </div>
        </div>
</div>

