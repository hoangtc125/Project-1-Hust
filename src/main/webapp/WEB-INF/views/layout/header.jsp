<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="/prj1.com">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link"
					href="/prj1.com/product-list">Shop</a></li>
				<li class="nav-item"><a class="nav-link"
					href="https://github.com/hoangtc125/Project-1-Hust">Link GitHub</a>
				</li>
				<li class="nav-item"><a class="nav-link disabled">Project 1</a>
				</li>
				<li class="nav-item">
					<button class="btn btn-outline-success">
						<a href="/prj1.com/news-save">Add Your News</a>
					</button>
				</li>
			</ul>
		</div>
		<form class="d-flex" style="margin-top: 10px"
			action="<c:url value="/user-list" />" method="get">
			<input name="mssv" class="form-control me-2" type="search"
				placeholder="Search user by mssv" aria-label="Search" />
			<button class="btn btn-outline-success" type="submit">Search</button>
		</form>
		<div class="nav-item dropdown d-flex" style="margin: 0 80px">
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
				<button class="btn btn-outline-success">
					<a href="/prj1.com/login">Login</a>
				</button>
			</c:if>
		</div>
	</div>
</nav>