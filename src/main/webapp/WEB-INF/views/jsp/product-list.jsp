<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/product-view" var="urlView"/>
<c:url value="0" var="count"/>
<div>
<div class="row row-cols-1 row-cols-md-3 g-4">
<c:if test="${empty listProduct}">
<span>No Product Today</span>
<img src="https://media.thaythichtructhaiminh.com/files/nghien87/2021/05/05/hoa-cuc-trong-le-hoi-hoa-cuc-1416.jpg" class="card-img-top" alt="..."/>
</c:if>
<c:if test="${not empty listProduct}">
<c:forEach var="product" items="${listProduct}">
  <div class="col">
    <div class="card h-100">
      <img src="https://media.thaythichtructhaiminh.com/files/nghien87/2021/05/05/am-thuc-le-hoi-hoa-cuc-1416.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        
        <table class="table">
  <thead>
    <tr>
      <th scope="col">
      	<h5 class="card-title">${product.name}</h5>
        <h5 class="card-title">${product.price}</h5>
      	<h5 class="card-title">Sold: ${product.sold}</h5>
        <h5 class="card-title">Available: ${product.unSold}</h5>
       
        <p class="card-text"><a href="${urlView}/${product.id}">View Detail</a></p>
      	</th>
      <th scope="col">
		 <c:url value="/updateCart" var="updateCart" />
			 <form action="${updateCart}" method="get" >
			     ID: <input name="id" readonly="true" value="${product.id}"/> <br/> <br/>
			     Quantity: <input name="quan" type="text" /> <br/> <br/>
			   <button type="submit">Buy now</button>
			  </form>
		</th>
    </tr>
  </thead>
</table>
      </div>
    </div>
  </div>
</c:forEach>
</c:if>
</div>
</div>
</div>