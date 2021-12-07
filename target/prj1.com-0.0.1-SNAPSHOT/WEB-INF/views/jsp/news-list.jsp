<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/news-view" var="urlView"/>
<c:url value="0" var="count"/>
<div>
<div class="row row-cols-1 row-cols-md-3 g-4">
<c:if test="${empty listNews}">
<span>No News Today</span>
<img src="https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/259774754_1281192685658815_7870688353076631554_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=9TWjHRyAongAX91xQ88&_nc_ht=scontent.fhph1-2.fna&oh=97c4f2f478aa4cdfcf71ca575a9117b5&oe=61B01D3F" class="card-img-top" alt="..."/>
</c:if>
<c:if test="${not empty listNews}">
<c:forEach var="news" items="${listNews}">
  <div class="col">
    <div class="card h-100">
      <img src="https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/216969081_200992805298977_627777177495630541_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=TsgZOiIMuTgAX8zQFM0&_nc_ht=scontent.fhph1-2.fna&oh=a127806357522d5ba15885719256b9e0&oe=61AF6BF2" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">${news.title}</h5>
        <p class="card-text"><a href="${urlView}/${news.id}">View Detail</a></p>
      </div>
    </div>
  </div>
</c:forEach>
</c:if>
</div>
</div>
</div>