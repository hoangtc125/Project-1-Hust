<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
body{
margin-top: 50px;
}
</style>

<div class = "col-11" id="news-post">
<br>
<br>
<br>
<div class = "col-10" style="margin-left: 80px;">
	<div>
		<div class="content-item container">
		    <div class="container">   
		    	<div class="row">
		            <div class="col-sm-12">  
		                <!-- COMMENT 1 - START -->
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
		                <!-- COMMENT 1 - END -->
		                
		                <!-- COMMENT 2 - START -->
		            </div>
		        </div>
		    </div>
		</div>



	<h2 style = "font-family: roboto"><b>${news.title}</b></h2>
	<br>
	<img
		src="https://media.thaythichtructhaiminh.com/files/thu_hong/2021/10/15/chu-tang-chua-ba-vang-ngay-dem-phong-ho-tam-minh-khong-thoi-chi-1500.jpg"
		class="card-img-top" alt="...">
		<br>
		<div style = "margin-top: 20px;">
		<p>${news.content}</p>
		</div>
	</div>


<br>
<br>
<br>
<c:url value="/saveComment" var="saveComment" />
<form:form
	action="${saveComment}/${news.id}/${pageContext.request.userPrincipal.name}"
	method="POST" modelAttribute="comment" id="formcomment">
	<div class="form-floating">
		<form:textarea path="content" class="form-control"
			placeholder="Leave a comment here" id="floatingTextarea2"
			style="height: 100px" />
		<label for="floatingTextarea2">Comments</label>
	</div>
	<button class="btn btn-primary" onclick="checklogin()">Post</button>
	<br>
	<br>
	<br>
	<br>
</form:form>
<c:if test="${not empty listComment}">
<c:forEach var="comment" items="${listComment}">
<div class="content-item container" id="comments">
    <div class="container">   
    	<div class="row">
            <div class="col-sm-12">  
                <!-- COMMENT 1 - START -->
                <div class="media d-flex">
                    <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
                    <div class="media-body">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
								${comment.sender} </a>
                                <p>${comment.content}</p>
                        <ul class="list-unstyled list-inline media-detail pull-lef d-flex">
                            <li><i class="fa fa-calendar"></i>${comment.date}</li>
                        </ul>
                        <ul class="list-unstyled list-inline media-detail pull-right" style = "margin-left: 750px;">
                            <li class=""><c:choose>
								<c:when test="${roleAdmin == true}">
								<div class = "comment">
									<a href="/prj1.com/commentDeleteNews/${comment.id}/${news.id}">Delete</a>
								</div>
								</c:when>
								<c:when
									test="${pageContext.request.userPrincipal.name == comment.sender}">
									<div class = "comment">
									<a
										href="/prj1.com/commentDeleteNews/${comment.id}/${news.id}">Delete</a>
									</div>
								</c:when>
							</c:choose></li>
                        </ul>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item"
                                href="/prj1.com/user-view/-1/${comment.sender}">View Profile</a></li>
                            <li><a class="dropdown-item"
                                href="/prj1.com/mail-save/${comment.sender}">Send mail</a></li>
                        </ul>
                    </div>
                </div>
                <!-- COMMENT 1 - END -->
                
                <!-- COMMENT 2 - START -->
            </div>
        </div>
    </div>
</div>
</c:forEach>
</c:if>
</div>
<script>
	function checklogin() {
		if(${pageContext.request.userPrincipal.name} != null) {
			document.getElementById("formcomment").submit();
		} else {
			window.location.href = "http://localhost:8080/prj1.com/login";
		}
	};
</script>
</div>
