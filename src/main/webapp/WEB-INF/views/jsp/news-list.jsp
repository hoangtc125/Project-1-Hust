<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/news-view" var="urlView" />
<c:url value="0" var="count" />
<style>
body{
  padding-top: 55px;

  }
</style>
<div id = "news-post" class="container">
<div class = "col-11" style = "margin-left: 65px;">
<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" 
        preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
        <img src="https://vcdn-vnexpress.vnecdn.net/2021/09/26/DH-Bach-khoa-HN-9252-163168112-6845-6011-1632663405.jpg"></svg>

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Building C1</h1>
            <p>House C1 and its imprint in structuralism.</p>
            <p><a class="btn btn-lg btn-primary" href="https://www.facebook.com/dhbkhanoi/posts/757916784346347/">View more</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" 
        preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/>
        <img src="https://ts.hust.edu.vn/public/uploads/pbzq-ts-bkdv.jpg"></svg>

        <div class="container">
          <div class="carousel-caption">
            <h1>Ta Quang Buu Library</h1>
            <p>Address: 1 Dai Co Viet street - Hai Ba Trung - Hanoi</p>
            <p><a class="btn btn-lg btn-primary" href="https://www.hust.edu.vn/thu-vien-ta-quang-buu">View more</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item home-img">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
        <rect width="100%" height="100%" fill="#777"/>
        <img src="https://sie.hust.edu.vn/wp-content/uploads/2016/04/bk2017.jpg"></svg>

        <div class="container">
          <div class="carousel-caption text-end">
            <h1></h1>
            <p></p>
            <p><a class="btn btn-lg btn-primary" href="https://www.google.com/search?sxsrf=AOaemvIwba4bH0DaftxAybG2vo8O96Oy0A:1640106669401&source=univ&tbm=isch&q=b%E1%BB%A9c+t%C6%B0%E1%BB%9Dng+%C4%91%C3%A1+kh%E1%BA%AFc+t%C3%AAn+%C4%91%E1%BA%A1i+h%E1%BB%8Dc+b%C3%A1ch+khoa+h%C3%A0+n%E1%BB%99i&fir=8slGeCl2Do6SSM%252CYarlaVSGbO29qM%252C_%253BKeXaq4LP2tuqWM%252CMn9Zu0cpHCsxxM%252C_%253BXE2Wyci2H3kcSM%252CiEKF8G-I03SwTM%252C_%253BBSopp1p7Qdk2LM%252CJ2bW0eNWdH1nnM%252C_%253Bywm3MbO-zHMC9M%252CPFKOCdNy4J-AtM%252C_%253B6mZrmVf5ZnqxfM%252C5CSllZ_maqS18M%252C_%253BVc5u0hnDoX-CoM%252CsO9eefHjQlJcJM%252C_%253BY9yNM-2e4bfjxM%252Cr84FZwa4mPc15M%252C_%253BH1NBW_TGnik15M%252CttCic7-Q8ENacM%252C_%253BOZy6zqi0g_upHM%252CTVAOzo3YaMSngM%252C_&usg=AI4_-kQczBF1TTcLFk3ZGuZD5mzIMqo-3w&sa=X&ved=2ahUKEwjNi7G7sfX0AhUASmwGHT2iC-cQjJkEegQIERAC&biw=1920&bih=969&dpr=1#imgrc=Vc5u0hnDoX-CoM">View more</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="fasle"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  
	<div class="row">
      <div class="col-md-5"><br><hr></div>
      <div class="col-md-2">
        <h1 class="News">News</h1>
      </div>
      <div class="col-md-5"><br><hr></div>
    </div>
<br>
<br>
<div>
	<div class="row row-cols-1 row-cols-md-3 g-4">
		<c:if test="${empty listNews}">
			<span>No News Today</span>
			<img
				src="https://media.thaythichtructhaiminh.com/files/linh_trang/2021/05/05/chu-tang-chua-ba-vang-tu-tap-trong-rung-5-1927.jpg"
				class="card-img-top" alt="..." />
		</c:if>
		<c:if test="${not empty listNews}">
			<c:forEach var="news" items="${listNews}">
				<div class="col">
					<div class="card h-100">
					<div class = "new-img">
						<a href="${urlView}/${news.id}">
							<img src="https://media.thaythichtructhaiminh.com/files/thanh_mai/2021/06/17/2-2214.jpg" height="300px" class="card-img-top" alt="...">
						</a>
					</div>
						<div class="card-body">
							<h5 class="card-title">${news.title}</h5>
							<ul class="list-unstyled list-inline media-detail pull-lef d-flex">
                            <li><i class="fa fa-calendar"></i>${news.date}</li>
                        </ul>
							<div class = "d-flex" style = "margin-top: 20px">
							<h5 class="d-flex" style = "margin-top: 7px;">
								Author:
							</h5>
								<h5>
								<div class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#"
										id="navbarDropdown" role="button" data-bs-toggle="dropdown"
										aria-expanded="false"> ${news.author} </a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item"
											href="/prj1.com/user-view/-1/${news.author}">View Profile</a></li>
										<li><a class="dropdown-item"
											href="/prj1.com/mail-save/${news.author}">Send Mail</a></li>
									</ul>
								</div>
								</h5>
								</div>
							<p class="btn btn-primary follow">
								<a href="${urlView}/${news.id}">View</a>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
</div>
<br>
<br>
<br>
</div>
</div>