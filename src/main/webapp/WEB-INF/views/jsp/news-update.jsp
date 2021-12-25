<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class = "container invoice">
	<h1 class="product-title mb-4" style = "margin-top: 100px;">Edit News</h1>
					<p style = "margin-top: 70px; font-size: 150%; font-family: pushster"><strong>Author</strong></p>
					<div class="media d-flex">
		                    <a class="pull-left" href="#"><img width="100px" class="media-object" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
		                    <div class="media-body">
		                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
								${news.author} </a>
		                                
		                                
		                                
		                        <ul class="list-unstyled list-inline media-detail pull-lef d-flex">
		                            <li style = "margin-left: 20px;"><i class="fa fa-calendar"></i>${news.date}</li>
		                        </ul>
		                        
		                        
		                       <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item"
										href="/prj1.com/user-view/-1/${news.author}">View Profile</a></li>
									<li><a class="dropdown-item"
										href="/prj1.com/mail-save/${news.author}">Send Mail</a></li>
								</ul>
		                    </div>
		                </div>
		                

<br />
	<div class = "row">
		<div class = "col-md-1"></div>
		<div class = "col-md-10">
			<div class = "name">
			<div class = "btn btn-success btn-new_list">
			<a href="<c:url value="/news-list-management" />">List News Management</a>
			</div>
			</div>
				<br>
			    <c:url value="/updateNews" var="updateNews" />
    			<form:form action="${updateNews}" method="POST" modelAttribute="news">
		      <b>Title</b> <form:input path="Title" class="form-control" rows="5"/>
				<br />
				<br />
				
		      <b>Content</b> <form:input path="Content" class="form-control" rows="5"/>
				<br />
				<br />
				<button class="btn btn-primary">Done</button>
			</form:form>
		</div>
		<div class = "col-md-1"></div>
	</div>
</div>