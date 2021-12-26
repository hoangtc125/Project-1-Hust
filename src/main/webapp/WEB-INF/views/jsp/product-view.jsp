<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
body {
	margin-top: 50px;
}

.product-body {
	margin-left: 100px;
}
</style>
<div id="news-post" class="container">
	<div style="margin-left: 65px;" class="col-12">
		<div class="product-body"
			style="margin-top: 100px; margin-bottom: 70px;">
			<div class="container">
				<div class="row">
					<div class="d-flex product">
						<a href="/prj1.com"> Home </a> <i
							class="fas fa-angle-double-right icon-next"></i> <a
							href="<c:url value="/product-list?sort=" />"> List product </a> <i
							class="fas fa-angle-double-right icon-next"></i>
						<p>
							<b>${product.name}</b>
						</p>
					</div>
					<div class="col-5">
						<img
							src="${product.image}"
							width="100%" id="productImg" height="400px">
						<div class="small-img-row">

							<div class="small-img-col">
								<img
									src="${product.image}"
									width="100%" height="120px" class="small-img">
							</div>
							<div class="small-img-col">
								<img
									src="${product.image}"
									width="100%" height="120px" class="small-img">
							</div>
							<div class="small-img-col">
								<img
									src="${product.image}"
									width="100%" height="120px" class="small-img">
							</div>
							<div class="small-img-col">
								<img
									src="${product.image}"
									width="100%" height="120px" class="small-img">
							</div>
						</div>
					</div>
					<div class="col-5">
						<h1 style="color: rgb(78, 77, 77); font-family: Helvetica;">${product.name}</h1>
						<div class="d-flex sold-avai">
							<p>
								<b class="sold">${product.sold}</b> sold
							</p>

							<p>
								<b class="availible">${product.unSold}</b> available
							</p>
						</div>
						<h4 class='price_product hnn'>${product.price}VND</h4>
						<br>


						<th scope="col"><c:url value="/updateCart" var="updateCart" />
							<form action="${updateCart}" method="get">
								<div class="d-flex id-product">
									<h5 style="font-family: Helvetica; color: gray;" class="ID">ID
									</h5>
									<input style="width: 100px; height: 45px" readonly="true"
										name="id" value="${product.id}"
										class="form-control text-center" />
								</div>
								<br /> <br />
								<div class="d-flex">
									<div class="d-flex">
										<h5 style="font-family: Helvetica; color: gray;" class="size">Quantity</h5>
										<input name="quan" type="number"
											class="form-control text-center" value="1"
											style="width: 100px; height: 45px" />
									</div>
									<div class="d-flex">
										<h5 style="font-family: Helvetica; color: gray;" class="size">Size</h5>
										<select class="form-control form-control-lg text-center"
											style="width: 100px; font-family: Helvetica; color: gray; height: 45px">
											<option value="">XL</option>
											<option value="">XXL</option>
											<option value="">Small</option>
											<option value="">Large</option>
											<option value="">Medium</option>
										</select>
									</div>
								</div>
								<br /> <br />
								<div style="text-align: center;">
									<button type="submit" class="addToCart">Add to cart</button>
								</div>
							</form></th>
					</div>
				</div>
				<!-- <div class="productdetail col-9">
					<h3 style="color: rgb(78, 77, 77); font-family: Helvetica;">Product
						detail</h3>
					<p>Women's long-sleeved shirt with beautiful office style
						LOKISO SM01.</p>
					<p>Women's shirt is a polite and luxurious outfit besides
						stylish outfits, there will be times when she needs to find the
						salvation of the sets. Women's wide form shirts are often favored
						by stylish and stylish girls thanks to their spacious and airy
						designs. With 2 basic colors, black and white, she can choose for
						the occasion of walking around, going out but still being as
						feminine as possible because of the soft ribbed silk material.</p>
					<p>Long sleeve shirts are traditionally designed but have been
						creative with many different designs. Today, it has been modified
						with more accents to create a number of unique women's shirts such
						as: long-sleeved shirt with split collar, low-sleeve button-down
						shirt, back shirt, button-down shirt. shoulder buttons, short
						sleeve shirt,..</p>
				</div> -->
			</div>
			<script>
            var productImg = document.getElementById("productImg");
            var smallImg = document.getElementsByClassName("small-img");
            smallImg[0].onclick = function(){
                productImg.src = smallImg[0].src;
            }
            smallImg[1].onclick = function(){
                productImg.src = smallImg[1].src;
            }
            smallImg[2].onclick = function(){
                productImg.src = smallImg[2].src;
            }
            smallImg[3].onclick = function(){
                productImg.src = smallImg[3].src;
            }
        </script>
			<div class="col-10">
				<c:url value="/saveCommentProduct" var="saveComment" />
				<form:form
					action="${saveComment}/${product.id}/${pageContext.request.userPrincipal.name}"
					method="POST" modelAttribute="comment" id="formcomment">
					<div class="form-floating">
						<form:textarea path="content" class="form-control"
							placeholder="Leave a comment here" id="floatingTextarea2"
							style="height: 100px" />
						<label for="floatingTextarea2">Comments</label>
					</div>
					<button class="btn btn-primary" onclick="checklogin()">Post</button>
					<br>
					<br>
					<br>
					<br>
				</form:form>
				<c:if test="${not empty listComment}">
					<c:forEach var="comment" items="${listComment}">
						<div class="content-item container" id="comments">
							<div class="container">
								<div class="row">
									<div class="col-sm-12">
										<!-- COMMENT 1 - START -->
										<div class="media d-flex">
											<a class="pull-left" href="#"><img class="media-object"
												src="https://bootdey.com/img/Content/avatar/avatar1.png"
												alt=""></a>
											<div class="media-body">
												<a class="nav-link dropdown-toggle" href="#"
													id="navbarDropdown" role="button" data-bs-toggle="dropdown"
													aria-expanded="false"> ${comment.sender} </a>
												<p>${comment.content}</p>
												<ul
													class="list-unstyled list-inline media-detail pull-lef d-flex">
													<li><i class="fa fa-calendar"></i>${comment.date}</li>
												</ul>
												<ul
													class="list-unstyled list-inline media-detail pull-right"
													style="margin-left: 750px;">
													<li class=""><c:choose>
															<c:when test="${roleAdmin == true}">
																<div class="comment">
																	<a
																		href="/prj1.com/commentDeleteProduct/${comment.id}/${product.id}">Delete</a>
																</div>
															</c:when>
															<c:when
																test="${pageContext.request.userPrincipal.name == comment.sender}">
																<div class="comment">
																	<a
																		href="/prj1.com/commentDeleteProduct/${comment.id}/${product.id}">Delete</a>
																</div>
															</c:when>
														</c:choose></li>
												</ul>
												<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
													<li><a class="dropdown-item"
														href="/prj1.com/user-view/-1/${comment.sender}">View
															Profile</a></li>
													<li><a class="dropdown-item"
														href="/prj1.com/mail-save/${comment.sender}">Send mail</a></li>
												</ul>
											</div>
										</div>
										<!-- COMMENT 1 - END -->

										<!-- COMMENT 2 - START -->
									</div>
								</div>
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
			</div>
		</div>
	</div>
</div>
