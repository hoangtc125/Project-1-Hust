<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
body{
    margin-top:120px;
    color: #1a202c;
    text-align: left; 
}
</style>
<div class= "container">
	<c:url value="/newsSoftDelete" var="urlSoftDelete" />
	<c:url value="/news-list-deleted" var="urlListSoftDeleted" />
	<c:url value="/news-view" var="urlView" />
    <div class="profile-main-body">
    
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/prj1.com">Home</a></li>
              <li class="breadcrumb-item"><a href="<c:url value="/user-list?sort=" />">List user</a></li>
              <li class="breadcrumb-item active" aria-current="page">User Profile</li>
            </ol>
          </nav>
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body" style = "height: 300px;">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4>${user.name}</h4>
                      <p class="text-secondary mb-1">${user.clazz}</p>

                      <c:if test="${canFollow == 1}">
							<div>
								<div class="btn btn-primary follow">
									<a href="/prj1.com/follow/${user.id}">Follow</a>
								</div>
								<div class="btn btn-outline-primary message"><a href="">Message</a></div>
							</div>
						</c:if>
						<c:if test="${canFollow == 0}">
							<div>
								<div class="btn btn-primary follow">
									<a href="/prj1.com/unFollow/${user.id}">Unfollow</a>
								</div>
								<div class="btn btn-outline-primary message"><a href="/prj1.com/mail-save/${news.author}">Message</a></div>
							</div>
						</c:if>
                      
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">MSSV</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${user.mssv}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${user.name}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">coin</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${user.coin} VND
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Class</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      ${user.clazz}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                      <a class="btn btn-info " target="__blank" href="/prj1.com/user-update/-1/${user.username}">Edit</a>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>

        <div class="card">
            <div class="card-body" style = "margin-bottom: 70px;">
            <br>
                <div>
                    <h1 class="product-title mb-4">News list</h1>
                </div>
                <c:if test="${pageContext.request.userPrincipal.name == user.username}">
                <div class = "btn btn-primary follow">
                    <a href="${urlListSoftDeleted}?me=1">View garbage</a>
                </div>
                <br>
                <br>
                <br>
                </c:if>
                <div class="row row-cols-1 row-cols-md-3 g-4">

			<c:if test="${empty listNews}">
				<p style = "margin-top: 49px; font-size: 150%; text-align: center"><b><i>0 News to display</i></b></p>
			</c:if>
			<c:if test="${not empty listNews}">
				<c:forEach var="news" items="${listNews}">
					<div class="col">
						<div class="card h-100">
							<div class = "new-img">
								<a href="${urlView}/${news.id}">
									<img
										src="https://thaythichtructhaiminh.com/templates/themes/images/XMLID.svg" width="100px"
										class="card-img-top" alt="...">
										</a>
							</div>
							<div class="card-body">
								<h5 class="card-title">${news.title}</h5>
								<ul class="list-unstyled list-inline media-detail pull-lef d-flex" style = "	color:#AAAAAA;font-size:12px;padding-right: 10px;font-weight:600;">
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
								<div class = "d-flex">
								<div class = "btn btn-outline-primary message">
									<a href="${urlView}/${news.id}">View Detail</a>
								</div>
								<c:if
									test="${pageContext.request.userPrincipal.name == news.author}">
									<div class = "btn btn-outline-primary message" style = "margin-left: 110px;">
									<a href="/prj1.com/newsSoftDelete/${news.id}/${news.author}">Delete
										your news</a>
										</div>
								</c:if>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
            </div>
          </div>
    </div>