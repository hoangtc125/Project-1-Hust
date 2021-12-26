<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/cart-save" var="urlSave" />
<c:url value="/product-view" var="urlView" />
<c:url value="/cart-update" var="urlUpdate" />
<c:url value="/updateCart" var="updateCart" />
<c:url value="/pay" var="urlPay" />
<c:url value="0" var="count" />
<div id="news-post" class="container">
	<div style="margin-left: 65px;" class="col-11">
		<section class="pt-5 pb-5">
			<br> <br> <br> <br>
			<div class="container">
				<div class="row w-100">
					<div class="col-lg-12 col-md-12 col-12">
						<h3 class="yourcart">Your Shopping Cart</h3>
						<p class="numOfProduct">
							<i class="quantityOfProduct">${num}</i> products
						</p>
						<h2 class="Owner">
						<img src="${user.image}" class="card-img-top" alt="..."
														style="width: 55px; height: auto;">
						Owner: ${cart.username}</h2>
						<h3 class="Coin">Coin: ${user.coin} VND</h3>
						<table id="shoppingCart" class="table">
							<thead>
								<tr>
									<th style="width: 40%">Product Name</th>
									<th style="width: 10%">Id</th>
									<th style="width: 10%">Quantity</th>
									<th style="width: 10%">View</th>
									<th style="width: 10%">Edit</th>
									<th style="width: 20%">Price</th>
								</tr>
							</thead>

							<c:if test="${not empty listItem}">
								<c:forEach var="item" items="${listItem}">
									<tr>
										<td data-th="Product">
											
												<div class=" d-flex">
													<img src="${item.getProduct().image}" class="card-img-top" alt="..."
														style="width: 55px; height: auto;">
														<h4 style = "margin-left: 10px;">${item.getProduct().getName()}</h4>
												</div>
												
													
													
													<div class="text-left mt-sm-2">
													<div class="button_remove">
														<a
															href="${updateCart}?id=${item.getProduct().getId()}&quan=0"
															class="btn_remove">Remove</a>
													</div>
													<br>
												</div>
										
										</td>
										<td data-th="Id"><br>${count = count + 1}</td>
										<td data-th="Quantity"><br> ${item.getQuan()}</td>
										<td data-th="View"><br>
										<a href="${urlView}/${item.getProduct().getId()}"><i
												class="fas fa-eye"></i></a></td>
										<td data-th="Edit"><br>
										<a href="${urlUpdate}/${item.getProduct().getId()}"><i
												class="fas fa-edit"></i></a>
										<td data-th="Price" class='price_product'><br>${item.getProduct().getPrice()}
											VND</td>
									</tr>
									<br>
								</c:forEach>
							</c:if>
						</table>
						<div class='line'></div>

						<div class="button_addproduct">
							<a href="/prj1.com/product-list" class="btn_remove">Add
								product</a>
						</div>
						<div class="total">
							<h4 class='total_text'>Total:</h4>
							<h4 class="total_price">${cart.sumProduct}VND</h4>
						</div>

					</div>
				</div>

				<div class="btn_confirm">
					<a href="${urlPay}" class="confirm">Confirm</a>
				</div>

			</div>
		</section>
	</div>
</div>