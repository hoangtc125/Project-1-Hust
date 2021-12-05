<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div style="display:align-items-center">
  <a href="<c:url value="/news-list?sort=" />" >List News</a><br />
  <h1>${news.title} </h1>  
  <img src="https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/216969081_200992805298977_627777177495630541_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=TsgZOiIMuTgAX8zQFM0&_nc_ht=scontent.fhph1-2.fna&oh=a127806357522d5ba15885719256b9e0&oe=61AF6BF2" class="card-img-top" alt="...">
      <br/>
  ${news.content} <br/>
</div>
<c:url value="/saveComment" var="saveComment"/>
  <form:form action="${saveComment}/${news.id}/${pageContext.request.userPrincipal.name}" method="POST"
    modelAttribute="comment" id="formcomment">
	    <div class="form-floating">
		  <form:textarea path="content" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 100px"/>
		  <label for="floatingTextarea2">Comments</label>
		</div>
    <button class="btn btn-primary" onclick="checklogin()">Post</button>
  </form:form>
<c:if test="${not empty listComment}">
<c:forEach var="comment" items="${listComment}">
<div class="card">
  <div class="card-header">
  ${comment.sender}
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p>${comment.content}</p>
    </blockquote>
  </div>
</div>
</c:forEach>
</c:if>
<script>
	function checklogin() {
		if(${pageContext.request.userPrincipal.name} != null) {
			document.getElementById("formcomment").submit();
		} else {
			window.location.href = "http://localhost:8080/prj1.com/login";
		}
	};
</script>