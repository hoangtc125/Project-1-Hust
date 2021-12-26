<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/product-view" var="urlView" />
<c:url value="0" var="count" />
<style>
body{
margin-top: 50px;}
</style>
<div id = "news-post" class = "container">
<div style = "margin-left: 65px;" class = "col-11">
<br>
<br>
<br>
<br>
<h1 class="product-title mb-4">List product</h1>
<br>
<br>
<div style = "margin-bottom: 70px;">
	<div class="row row-cols-1 row-cols-md-3 g-4">
		<c:if test="${empty listProduct}">
			<span>No Product Today</span>
			<img
				src="https://media.thaythichtructhaiminh.com/files/nghien87/2021/05/05/hoa-cuc-trong-le-hoi-hoa-cuc-1416.jpg"
				class="card-img-top" alt="..." />
		</c:if>
		<c:if test="${not empty listProduct}">
			<c:forEach var="product" items="${listProduct}">
				<div class="col">
					<div class="card h-100">
						<div class = "new-img">
							<a href="${urlView}/${product.id}">
							<img
								src="https://cf.shopee.vn/file/e3d81d87a8f20e5d638f3d653cc1ba21"
								class="card-img-top" alt="..." style="height: 400px; border-radius: 5px;">
							</a>
						</div>
						<div class="card-body">
						<div class = "product-name">
							<h5>${product.name}</h5>
						</div>
						<div class="d-flex sold-avai-list">
	                        <p><b class="sold-list">${product.sold}</b> sold</p>
	                        <p><b class = "availible-list">${product.unSold}</b> availible</p>
                    	</div>
                    	<div style = "text-align: center";>
                    	<h4 class = 'price_product hnn-list'>${product.price} VND</h4>
                    	</div>
                    	
                    	<th scope="col"><c:url value="/updateCart" var="updateCart" />
					<form action="${updateCart}" method="get">
					<div class = "d-flex id-quanty-list">
						<div class = "d-flex id-product-list" >
							<h5 style="font-family: Helvetica; color: gray;" class = "ID-list">ID </h5> 
							<input style = "width: 50px; height: 30px" name="id" readonly="true" value="${product.id}" class="form-control text-center"/>
						</div>
						<div class = "d-flex quanty-list">
							<h5 style="font-family: Helvetica; color: gray;">Quantity</h5> 
							<input name="quan" type="number" class="form-control text-center" value="1"  style="width: 70px; height: 30px;"/>
						</div>
					</div>
						 <div style = "text-align: center;">
						<button type="submit" class = "addToCart-list">Buy now</button>
						</div>
					</form></th>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
</div>
</div>
</div>