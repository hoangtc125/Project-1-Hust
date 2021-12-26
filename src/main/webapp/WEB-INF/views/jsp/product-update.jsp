<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-fluid bg-form" style = "margin-top: -40px;">
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 setting-container" >
            <br>
                    <h1 class="login-title mb-4">Edit product</h1>
             <br>
				<c:url value="/updateProduct" var="updateProduct" />
					<form:form action="${updateProduct}" method="POST"
						modelAttribute="product">
						
						 <div class="form-group row mb-3">
                            <label for="id" class="col-sm-2 col-form-label">ID</label>
                            <div class="col-sm-10">
                                <form:input path="id" readonly="true" class="form-control" />
                            </div>
                        </div>
						
                        <div class="form-group row mb-3">
                            <label for="name" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <form:input path="name" class="form-control" />
                            </div>
                        </div>
                        
                        <div class="form-group row mb-3">
                            <label for="sold" class="col-sm-2 col-form-label">Sold</label>
                            <div class="col-sm-10">
                                <form:input path="sold" readonly="true" class="form-control"/>
                            </div>
                        </div>
                        
                        <div class="form-group row mb-3">
                            <label for="available" class="col-sm-2 col-form-label">Available</label>
                            <div class="col-sm-10">
                                <form:input path="unSold" class="form-control"/>
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="price" class="col-sm-2 col-form-label">Price</label>
                            <div class="col-sm-10">
                                <form:input path="price" class="form-control"/>
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
                        <button class="btn btn-primary">Done</button>
                        </div>
                        <br>
                        <br>
                        </form:form>
            </div>
        </div>
</div>