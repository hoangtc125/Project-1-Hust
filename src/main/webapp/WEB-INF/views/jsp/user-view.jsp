<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="display:align-items-center">
  <a href="<c:url value="/user-list?sort=" />" >List User</a><br />
  <h1>View User:</h1>  
  User MSSV: ${user.mssv} <br/>
  User Name: ${user.name} <br/>
  User Class: ${user.clazz} <br/>
</div>
<div class="row row-cols-1 row-cols-md-3 g-4">
<c:if test="${empty listNews}">
<span>0 News to display</span>
</c:if>
<c:if test="${not empty listNews}">
<c:forEach var="news" items="${listNews}">
  <div class="col">
    <div class="card h-100">
      <img src="https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/216969081_200992805298977_627777177495630541_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=TsgZOiIMuTgAX8zQFM0&_nc_ht=scontent.fhph1-2.fna&oh=a127806357522d5ba15885719256b9e0&oe=61AF6BF2" class="card-img-top" alt="...">
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
      </div>
    </div>
  </div>
</c:forEach>
</c:if>
</div>