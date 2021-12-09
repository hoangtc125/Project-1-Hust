<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/product-view" var="urlView"/>
<c:url value="0" var="count"/>
<div>
<div class="row row-cols-1 row-cols-md-3 g-4">
<c:if test="${empty listProduct}">
<span>No Product Today</span>
<img src="https://media.thaythichtructhaiminh.com/files/thanh_mai/2021/06/17/4-2220.jpg" class="card-img-top" alt="..."/>
</c:if>
<c:if test="${not empty listProduct}">
<c:forEach var="product" items="${listProduct}">
  <div class="col">
    <div class="card h-100">
      <img src="https://media.thaythichtructhaiminh.com/files/thanh_mai/2021/06/17/2-2214.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">${product.name}</h5>
        <h5 class="card-title">${product.price}</h5>
        
        <p class="card-text"><a href="${urlView}/${product.id}">View Detail</a></p>
        
      </div>
    </div>
  </div>
</c:forEach>
</c:if>
</div>
</div>
</div>