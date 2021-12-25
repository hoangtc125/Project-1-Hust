<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="HEADER">
  <header class="p-3 fixed-top">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 mb-md-0" id="main-menu">
          <li><a href="/prj1.com" class="nav-link px-2 text-white">HOME</a></li>
          <li><a href="/prj1.com/product-list" class="nav-link px-2">SHOP</a></li>
          <li><a href="https://github.com/hoangtc125/Project-1-Hust" class="nav-link px-2">GITHUB</a></li>
          <li><a href="https://drive.google.com/drive/folders/1kAIsVMfNHi0V81b8w80BbJYqUzV3bW_9?usp=sharing" class="nav-link px-2">DRIVE</a></li>
        	<li><a href="/prj1.com/news-save" class="nav-link px-2">Add Your News</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex" action="<c:url value="/user-list" />" method="get">
          <input name="mssv" type="search" class="form-control" placeholder="Search user by MSSV" aria-label="Search">
          <button type="submit" class="btn btn-success" >Search</button>
        </form>
        <div class="text-end">
        
        
        
        <div class="nav-item dropdown d-flex" >
			<c:if test="${not empty pageContext.request.userPrincipal.name}">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
					${pageContext.request.userPrincipal.name} </a>
				<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item"
						href="/prj1.com/user-view/-1/${pageContext.request.userPrincipal.name}">Your
							account</a></li>
					<li><a class="dropdown-item"
						href="/prj1.com/user-update/-1/${pageContext.request.userPrincipal.name}">Setting</a></li>
					<li><a class="dropdown-item" href="/prj1.com/user-list">User
							Management</a></li>
					<li><a class="dropdown-item"
						href="/prj1.com/noti-view">Your Notification</a></li>
					<li><a class="dropdown-item"
						href="/prj1.com/news-list-management">News Management</a></li>
					<li><a class="dropdown-item"
						href="/prj1.com/product-list-management">Product Management</a></li>
					<li><a class="dropdown-item"
						href="/prj1.com/cart-list-management">Cart Management</a></li>
					<li><a class="dropdown-item" href="/prj1.com/cart-view/-1/">Your
							Cart</a></li>
					<li><a class="dropdown-item"
						href="/prj1.com/bill-list-management">Bill Management</a></li>
					<li><a class="dropdown-item" href="/prj1.com/bill-list">Your
							Bill</a></li>
					<li><a class="dropdown-item"
						href="/prj1.com/mail-list/${pageContext.request.userPrincipal.name}">
							<button type="button" class="btn btn-primary position-relative">
								Your Mail <span
									class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger "
									id="myspan"> 99+ </span>
							</button>
					</a></li>

					<li><hr class="dropdown-divider"></li>
					<li>
						<form class="dropdown-item"
							action="<c:url value="/j_spring_security_logout" />"
							method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="submit" value="Logout" />
						</form>
					</li>
				</ul>
			</c:if>
			<c:if test="${empty pageContext.request.userPrincipal.name}">
				<button class="btn btn-outline-light btn-login">
					<a href="/prj1.com/login">Login</a>
				</button>
			</c:if>
		</div>
          




        </div>
      </div>
    </div>
  </header>
 </div>