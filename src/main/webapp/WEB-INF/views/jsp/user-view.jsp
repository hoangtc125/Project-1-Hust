<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="display:align-items-center">
  <a href="<c:url value="/user-list?sort=" />" >List User</a><br />
<c:url value="/newsSoftDelete" var="urlSoftDelete"/>
<c:url value="/news-list-deleted" var="urlListSoftDeleted"/>
<c:url value="/news-view" var="urlView"/>
  <h1>View User:</h1>  
  User MSSV: ${user.mssv} <br/>
  User Name: ${user.name} <br/>
  User Class: ${user.clazz} <br/>
</div>
<c:if test="${pageContext.request.userPrincipal.name == user.username}">
	<div>
   <h1>Garbage:</h1>
	<a href="${urlListSoftDeleted}">View garbage</a>
	</div>
</c:if>
<div class="row row-cols-1 row-cols-md-3 g-4">

<c:if test="${empty listNews}">
<span>0 News to display</span>
</c:if>
<c:if test="${not empty listNews}">
<c:forEach var="news" items="${listNews}">
  <div class="col">
    <div class="card h-100">
      <img src="https://thaythichtructhaiminh.com/templates/themes/images/XMLID.svg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">${news.title}</h5>
       
        <h5 class="card-title">Author: 
			<div class="nav-item dropdown d-flex" style="margin: 0 10px">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	             ${news.author}          
	          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/prj1.com/user-view/-1/${news.author}">View Profile</a></li>
            <li><a class="dropdown-item" href="/prj1.com/mail-save/${news.author}">Send Mail</a></li>
          </ul>
		</div>
		</h5>
        <p class="card-text"><a href="${urlView}/${news.id}">View Detail</a></p>
         <c:if test="${pageContext.request.userPrincipal.name == news.author}">
		    <a href="/prj1.com/newsSoftDelete/${news.id}/${news.author}">Delete your news</a>
		  </c:if>
      </div>
    </div>
  </div>
</c:forEach>
</c:if>
</div>