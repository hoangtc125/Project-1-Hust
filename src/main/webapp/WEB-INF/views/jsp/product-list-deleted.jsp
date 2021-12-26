<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/product-save" var="urlSave" />
<c:url value="/product-view" var="urlView" />
<c:url value="/product-list" var="urlList" />
<c:url value="/product-update" var="urlUpdate" />
<c:url value="/product-restore" var="urlRestore" />
<c:url value="/productDelete" var="urlDelete" />
<c:url value="/product-list-management" var="urlManage" />
<c:url value="0" var="count" />
<div class="container mt-5 mb-5 invoice">
		<h1 class="product-title mb-4" style = "margin-top: 70px;">Gargabe</h1>
		<div style = "margin-top: 80px; text-align: left;">
			<div class="btn btn-primary follow">
				<a href="${urlManage}">List product</a>
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
                    <th scope="col"><b>Name</b></th>
                    <th scope="col"><b>Sold</b></th>
                    <th scope="col"><b>Available</b></th>
                    <th scope="col"><b>Price</b></th>
                    <th scope="col"><b>Actions</b></th>
                  </tr>
                </thead>
                <tbody>
			<c:if test="${not empty listProduct}">
				<c:forEach var="product" items="${listProduct}">
		                    <tr class="fw-normal">
		                        <th>${count = count + 1}</th>
		                        <th>
		                          <img src="${product.image}"
								class="card-img-top" alt="..."
		                            style="width: 55px; height: auto;">
		                          <span class="ms-2"><b>${product.name}</b></span>
		                        </th>
		                        <td class="align-middle">
		                          <span >${product.sold}</span >
		                        </td>
		                        <td class="align-middle">
		                          <span >${product.unSold}</span >
		                        </td>
		                        <td class="align-middle">
		                          <h5 class="mb-0"><span class="badge bg-danger">${product.price}</span></h5>
		                        </td>
		                        <td class="align-middle">
		                          <a href="${urlView}/${product.id}" data-mdb-toggle="tooltip" title="View"><i class="fas fa-eye"></i></a>
		                          <a href="${urlRestore}/${product.id}" data-mdb-toggle="tooltip" title="Restore" style="margin-left: 12px;"><i class="fas fa-trash-restore text-success"></i></a>
		                          <a href=a href="${urlDelete}/${product.id}" data-mdb-toggle="tooltip" title="Remove" style="margin-left: 12px;"><i class="fas fa-trash-alt text-danger"></i></a>
		                        </td>
		                      </tr>
		                     </c:forEach>
		                 </c:if>
                </tbody>
              </table>
              <br>
              <br>
              <br>
  
            </div>
          </div>
  
        </div>
	</div>
</div>