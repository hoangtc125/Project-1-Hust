<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/news-save" var="urlSave" />
<c:url value="/news-view" var="urlView" />
<c:url value="/news-update" var="urlUpdate" />
<c:url value="/newsSoftDelete" var="urlSoftDelete" />
<c:url value="/news-list-deleted" var="urlListSoftDeleted" />
<c:url value="0" var="count" />
<div class="container mt-5 mb-5 invoice">
		<h1 class="product-title mb-4" style = "margin-top: 70px;">News list</h1>
		<div style = "margin-top: 80px; text-align: left;">
			<div class="btn btn-primary follow">
				<a href="${urlSave}">Add news</a>
			</div>
			<div class="btn btn-outline-primary message">
				<a href="${urlListSoftDeleted}">View garbage</a>
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
                    <th scope="col" style = "width: 5%"><b>ID</b></th>
                    <th scope="col" style = "width: 12%"><b>Author</b></th>
                    <th scope="col" style = "width: 48%"><b>Title</b> <a href="news-list?sort=Title"><svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-sort-alpha-down"
							viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10.082 5.629 9.664 7H8.598l1.789-5.332h1.234L13.402 7h-1.12l-.419-1.371h-1.781zm1.57-.785L11 2.687h-.047l-.652 2.157h1.351z" />
        <path d="M12.96 14H9.028v-.691l2.579-3.72v-.054H9.098v-.867h3.785v.691l-2.567 3.72v.054h2.645V14zM4.5 2.5a.5.5 0 0 0-1 0v9.793l-1.146-1.147a.5.5 0 0 0-.708.708l2 1.999.007.007a.497.497 0 0 0 .7-.006l2-2a.5.5 0 0 0-.707-.708L4.5 12.293V2.5z" />
</svg></a></th>
                    <th scope="col" style = "width: 20%"><b>Date</b></th>
                    <th scope="col" style = "width: 15%"><b>Actions</b></th>
                  </tr>
                </thead>
                <tbody>
			<c:if test="${not empty listNews}">
				<c:forEach var="news" items="${listNews}">
		                    <tr class="fw-normal">
		                        <th>${count = count + 1}</th>
		                        <th>
		                          <span class="ms-2"><b>${news.author}</b></span>
		                        </th>
		                        <td class="align-middle">
		                          <img src="${news.image}" alt="avatar 1"
		                            style="width: 55px; height: auto;">
		                          <span >${news.title}</span >
		                        </td>
		                        <td class="align-middle">
		                          <h6 class="mb-0"><span class="badge bg-danger">${news.date}</span></h6>
		                        </td>
		                        <td class="align-middle">
		                          <a href="${urlView}/${news.id}" data-mdb-toggle="tooltip" title="View"><i class="fas fa-eye"></i></a>
		                          <a href="${urlUpdate}/${news.id}/${pageContext.request.userPrincipal.name}" data-mdb-toggle="tooltip" title="Edit" style="margin-left: 12px;"><i class="fas fa-edit text-success"></i></a>
		                          <a href="${urlSoftDelete}/${news.id}/${pageContext.request.userPrincipal.name}" data-mdb-toggle="tooltip" title="Remove" style="margin-left: 12px;"><i class="fas fa-trash-alt text-danger"></i></a>
		                        </td>
		                      </tr>
		                     </c:forEach>
		                 </c:if>
                </tbody>
              </table>
  
            </div>
          </div>
  
        </div>
	</div>
</div>