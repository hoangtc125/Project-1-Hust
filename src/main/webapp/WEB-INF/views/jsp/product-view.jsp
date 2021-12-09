<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div style="display:align-items-center">
  <a href="<c:url value="/product-list?sort=" />" >List Product</a><br />
  <h1>${product.name} </h1>  
  
  <h1>Sold: ${product.sold} </h1>  
  
  <h1>Available: ${product.unSold} </h1>  
  
			<c:url value="/updateCart" var="updateCart" />
			 <form action="${updateCart}" method="get" >
			     ID: <input name="id" readonly="true" value="${product.id}"/> <br/> <br/>
			     Quantity: <input name="quan" type="text" /> <br/> <br/>
			   <button type="submit">Submit</button>
			  </form>
			
  <img src="https://media.thaythichtructhaiminh.com/files/thu_hong/2021/10/15/chu-tang-chua-ba-vang-ngay-dem-phong-ho-tam-minh-khong-thoi-chi-1500.jpg" class="card-img-top" alt="...">
    
</div>
<c:url value="/saveCommentProduct" var="saveComment"/>
  <form:form action="${saveComment}/${product.id}/${pageContext.request.userPrincipal.name}" method="POST"
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
  <div class="nav-item dropdown d-flex" style="margin: 0 10px">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
             ${comment.sender}
          </a>
          <c:choose>
			  <c:when test="${roleAdmin == true}">
			    <a href="/prj1.com/commentDeleteComment/${comment.id}/${product.id}">Delete Comment</a>
			  </c:when>
			  <c:when test="${pageContext.request.userPrincipal.name == comment.sender}">
			    <a href="/prj1.com/commentDeleteComment/${comment.id}/${product.id}">Delete Comment</a>
			  </c:when>
			</c:choose>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/prj1.com/user-view/-1/${comment.sender}">View Profile</a></li>
            <li><a class="dropdown-item" href="/prj1.com/mail-save/${comment.sender}">Send Mail</a></li>
          </ul>
	</div>
 
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
