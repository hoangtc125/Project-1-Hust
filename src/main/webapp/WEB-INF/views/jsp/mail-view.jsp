<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container mt-5 mb-5 invoice">
		<h1 class="product-title mb-4" style = "margin-top: 70px;">View mail</h1>
		<div style = "margin-top: 80px; text-align: left;">
			<div class="btn btn-primary follow">
				<a href="<c:url value="/mail-list/${pageContext.request.userPrincipal.name}" />">List Mail</a><br />
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
                    <th scope="col" style = "width: 50%; text-align: center"><b>Sender</b></th>
                    <th scope="col" style = "width: 10%; text-align: center"><b></b></th>
                    <th scope="col" style = "width: 40%; text-align: center"><b>Receiver</b></th>
                  </tr>
                </thead>
                <tbody>
		                    <tr class="fw-normal">
		                        <td class = "align-middle">
		                        <div class = "d-flex">
		                        <b><div class="nav-item dropdown d-flex" style="margin: 0 10px">
		                        <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-5.webp" class="shadow-1-strong rounded-circle" alt="avatar 1"
		                            style="width: 80px; height: auto;">
		                           		 <div>
											<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
												role="button" data-bs-toggle="dropdown" aria-expanded="false">
												${mail.sender} </a>
												<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
													<li><a class="dropdown-item"
														href="/prj1.com/user-view/-1/${mail.sender}">View Profile</a></li>
													<li><a class="dropdown-item"
														href="/prj1.com/mail-save/${mail.sender}">Send Mail</a></li>
												</ul>
												
												<ul class="list-unstyled list-inline media-detail pull-lef d-flex" style = "margin-left: 20px; 	color:#AAAAAA;font-size:12px;padding-right: 10px;font-weight:600;">
						                            <li><i class="fa fa-calendar"></i>${mail.date}</li>
						                        </ul>
										</div>
									</div>
									</b>
								</div>
								<div style = "margin-top: 40px; margin-left: 50px" class = "row">
								<p><b>${mail.title}</b></p>
								<div class = "col-9">${mail.content} <br>
								<br>
								<br>
								<br>
								<br>
								</div>
					
								</div>
		                        </td>
		                        <th>
		                         <div style="font-size: 550%; color: rgb(16, 212, 16);">
								        &#10151;
								    </div>
		                        </th>
		                     <td>  
		                     
		                          <div class = "d-flex" style = "margin-left: 190px;">
		                          <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="shadow-1-strong rounded-circle" alt="avatar 1"
		                            style="width: 80px; height: auto;">
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
		                      </tr>

                </tbody>
              </table>
  
            </div>
          </div>
  
        </div>
	</div>
</div>