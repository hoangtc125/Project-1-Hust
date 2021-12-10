<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/news-view" var="urlView"/>
<c:url value="0" var="count"/>
<div>
<div class="row row-cols-1 row-cols-md-3 g-4">
<c:if test="${empty listNews}">
<span>No News Today</span>
<img src="https://media.thaythichtructhaiminh.com/files/thanh_mai/2021/06/17/4-2220.jpg" class="card-img-top" alt="..."/>
</c:if>
<c:if test="${not empty listNews}">
<c:forEach var="news" items="${listNews}">
  <div class="col">
    <div class="card h-100">
      <img src="https://media.thaythichtructhaiminh.com/files/thanh_mai/2021/06/17/2-2214.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">${news.title}</h5>
        <h5 class="card-title">${news.date}</h5>
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
      </div>
    </div>
  </div>
</c:forEach>
</c:if>
</div>
</div>
</div>