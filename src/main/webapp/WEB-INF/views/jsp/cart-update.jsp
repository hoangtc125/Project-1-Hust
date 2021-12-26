<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="container mt-5 mb-5 invoice">
		<h1 class="product-title mb-4" style = "margin-top: 70px;">Edit quantity</h1>
		<div class="container">
            <div class="row" style="margin-top: 100px; text-align: center; margin-bottom: 150px;">
                <div class="d-flex product" style = "margin-left: 300px;">
                    <a href="/prj1.com">
                        Home
                    </a>
                    <i class="fas fa-angle-double-right icon-next"></i>
                    <a href="<c:url value="/cart-view/-1/" />">Your Cart</a>
                    <i class="fas fa-angle-double-right icon-next"></i>
                    <p><b>Edit quantity</b></p>
                </div>
                <div  class = "col-3"></div>
                <div class="col-3">
                    <img src="${product.image}" width="300px;" id="productImg" height="350px">
                </div>
                <div class="col-3" style = "margin-left: 20px;">
                    <h4 style="color: rgb(78, 77, 77); font-family: Helvetica;"><strong>${product.getName()}</strong></h4>
                    <br>
                    <h5 class = 'price_product hnn'>${product.getPrice()} VND</h5>
                    <br>
                    
                    
                  <th scope="col"><c:url value="/updateCart" var="updateCart" />
					<c:url value="/updateCart" var="updateCart" />
						<form action="${updateCart}" method="get">
						<div class = "d-flex" style = "margin-left: 55px;">
						<h5 style="font-family: Helvetica; color: gray;">ID </h5> 
						<input style = "width: 60px;  height: 25px" readonly="true" name="id" value="${product.id}" class="form-control text-center"/>
						</div>
						 <br />
						
						<div class = "d-flex"><h5 style="font-family: Helvetica; color: gray;">Quantity</h5> 
						<input name="quan" type="number" class="form-control text-center" value="${quan}"  style="width: 80px; height: 30px"/>
						</div>
						
						 <br /> <br />
						 <div style = "text-align: center;">
						<button type="submit" class = "btn btn-danger">Done</button>
						</div>
					</form>
					</th>
                </div>
            </div>
   
        </div>


        </div>