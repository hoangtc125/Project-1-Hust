<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="0" var="count" />
<div class="container mt-5 mb-5 invoice">
		<h1 class="product-title mb-4" style = "margin-top: 70px;">Notification</h1>

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
                    <th scope="col"><b>Date</b></th>
                    <th scope="col"><b>Content</b></th>
                    <th scope="col"><b>View</b></th>
                  </tr>
                </thead>
                <tbody>
			<c:if test="${not empty listNoti}">
				<c:forEach var="noti" items="${listNoti}">
		                    <tr class="fw-normal">
		                        <td>${count = count + 1}</td>
		                        <td class="align-middle">
		                          <h6 class="mb-0"><span class="badge bg-dark">${noti.date}</span></h6>
		                        </td>
		                          <c:choose>
    									<c:when test="${noti.content == 'Pay successfully'}">
    									<td class="align-middle alert fade alert-simple alert-success alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show">
    									  <div class="col-sm-12">
									          <div>
									 
									            <i class="start-icon far fa-check-circle faa-tada animated"></i>
									            <strong class="font__weight-semibold">Well done! ${noti.content}</strong>
									          </div>
									        </div>
    									</td>
    									</c:when>
    									
    									<c:when test="${noti.content == 'Pay Failed'}">
    									<td class="alert fade alert-simple alert-danger alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">
    									  <div class="col-sm-12">
									          <div>
									 
                                              <i class="start-icon far fa-times-circle faa-pulse animated"></i>
									            <strong class="font__weight-semibold">Oh snap! ${noti.content}</strong>
									          </div>
									        </div>
    									</td>
    									</c:when>
                                        <c:when test="${noti.content == 'Have a new comment in which news you commented'}">
    									<td class="alert fade alert-simple alert-primary alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">
    									  <div class="col-sm-12">
									          <div>
									 
									            <i class="start-icon fa fa-thumbs-up faa-bounce animated"></i>
									            <strong class="font__weight-semibold">${noti.content}</strong>
									          </div>
									        </div>
    									</td>
    									</c:when>
                                        <c:when test="${noti.content == 'Your news had been uploaded successfully'}">
    									<td class="alert fade alert-simple alert-info alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">
    									  <div class="col-sm-12">
									          <div>
									 
									            <i class="start-icon far fa-check-circle faa-tada animated"></i>
									            <strong class="font__weight-semibold">Well done! ${noti.content}</strong>
									          </div>
									        </div>
    									</td>
    									</c:when>
    									<c:otherwise>
    									<td class="alert fade alert-simple alert-warning alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">
    									  <div class="col-sm-12">
									          <div>
									 
									            <i class="start-icon fas fa-comment-medical faa-tada animated"></i>
									            <strong class="font__weight-semibold">${noti.content}</strong>
									          </div>
									        </div>
    									</td>
    									</c:otherwise>
    									
    							</c:choose>
		                       
		                        <td class="align-middle" style = "text-align: center;">
		                          <a href="${noti.link}" data-mdb-toggle="tooltip" title="View"><i class="fas fa-eye"></i></a>
		                      
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