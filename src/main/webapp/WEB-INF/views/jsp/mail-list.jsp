<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/mail-save" var="urlSave" />
<c:url value="/mail-view" var="urlView" />
<c:url value="/mail-update" var="urlUpdate" />
<c:url value="/mailDelete" var="urlDelete" />
<c:url value="0" var="count" />
<div class="container mt-5 mb-5 invoice">
		<h1 class="product-title mb-4" style = "margin-top: 70px;">Mail list</h1>
		<div class = "d-flex" style = "margin-top: 80px;">
			<div class="btn btn-primary follow" style = "text-align: left;">
			<a href="${urlSave}/all">Add email</a>
			</div>
			<div style = "margin-left: 1000px;">
				<div class="btn btn-outline-primary message" >
					<a href="?mode=send">Send</a>
				</div>
				<div class="btn btn-outline-primary message">
					<a href="?mode=receive">Receive</a>
				</div>
			</div>
		</div>
		<br>
		<br>
		<div>
        <div class="col-md-12 col-xl-12">
  
          <div class="card">
            <div class="card-body"  >
              <table class="table mb-0">
                <thead>
                  <tr>
                    <th scope="col" ><b>ID</b></th>
                    <th scope="col"><b>Sender</b></th>
                    <th scope="col"><b>Receiver</b></th>
                    <th scope="col"><b>Title</b></th>
                    <th scope="col"><b>Date</b></th>
                    <th scope="col"><b>Seen</b></th>
                    <th scope="col"><b>Action</b></th>
                  </tr>
                </thead>
                <tbody>
			<c:if test="${not empty listMail}">
				<c:forEach var="mail" items="${listMail}">
		                    <tr class="fw-normal">
		                        <th>${count = count + 1}</th>
		                        <th>
		                        <div class = "d-flex">
		                          <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-5.webp" class="shadow-1-strong rounded-circle" alt="avatar 1"
		                            style="width: 55px; height: auto;">
		                          <b>
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
								</div></b>
							</div>
		                        </th>
		                        <td class="align-middle">     
		                          <div class = "d-flex">
		                          <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="shadow-1-strong rounded-circle" alt="avatar 1"
		                            style="width: 55px; height: auto;">
		                          <b>
		                          <div class="nav-item dropdown d-flex" style="margin: 0 10px">
										<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
											role="button" data-bs-toggle="dropdown" aria-expanded="false">
											${mail.receiver} </a>
										<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
											<li><a class="dropdown-item"
												href="/prj1.com/user-view/-1/${mail.receiver}">View Profile</a></li>
											<li><a class="dropdown-item"
												href="/prj1.com/mail-save/${mail.receiver}">Send Mail</a></li>
										</ul>
								</div></b>
							</div>
		                        </td>
		                        <td class="align-middle">
		                          <span >${mail.title}</span >
		                        </td>
		                        <td class="align-middle">
		                          <h6 class="mb-0"><span class="badge bg-danger">${mail.date}</span></h6>
		                        </td>
		                         <td class="align-middle">
		                        
		                          <c:choose>
    									<c:when test="${mail.isRead == 'Yes'}">
    									<h6 class="mb-0"><span class="badge bg-success">${mail.isRead}</span></h6>
    									</c:when>
    									<c:when test="${mail.isRead == 'No'}">
    									<h6 class="mb-0"><span class="badge bg-danger">${mail.isRead}</span></h6>
    									</c:when>
    								</c:choose>
		                        </td>
		                        <td class="align-middle">
		                          <a href="${urlView}/${mail.id}/${pageContext.request.userPrincipal.name}" data-mdb-toggle="tooltip" title="View"><i class="fas fa-eye"></i></a>
		                          <a href="${urlDelete}/${mail.id}/${pageContext.request.userPrincipal.name}" data-mdb-toggle="tooltip" title="Remove" style="margin-left: 16px;"><i class="fas fa-trash-alt text-danger"></i></a>
		                        </td>
		                      </tr>
		                     </c:forEach>
		                 </c:if>
                </tbody>
              </table>
  
            </div>
          </div>
  
        </div>
        <br>
        <br>
	</div>
</div>