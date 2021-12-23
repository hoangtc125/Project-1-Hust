<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style="display: align-items-center">
	<a
		href="<c:url value="/mail-list/${pageContext.request.userPrincipal.name}" />">List
		Mail</a><br />
	<h1>View Mail:</h1>
	Title: ${mail.title} <br /> Date: ${mail.date} <br /> Sender:
	<div class="nav-item dropdown d-flex" style="margin: 0 10px">
		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
			role="button" data-bs-toggle="dropdown" aria-expanded="false">
			${mail.sender} </a>
		<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			<li><a class="dropdown-item"
				href="/prj1.com/user-view/-1/${mail.sender}">View Profile</a></li>
			<li><a class="dropdown-item"
				href="/prj1.com/mail-save/${mail.sender}">Send Mail</a></li>
		</ul>
	</div>
	<br /> Receiver: ${mail.receiver} <br /> content: ${mail.content} <br />
</div>