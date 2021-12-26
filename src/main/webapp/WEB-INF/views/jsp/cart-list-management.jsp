<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/cart-save" var="urlSave" />
<c:url value="/cart-view" var="urlView" />
<c:url value="/cart-update" var="urlUpdate" />
<c:url value="/cartSoftDelete" var="urlSoftDelete" />
<c:url value="/cart-list-deleted" var="urlListSoftDeleted" />
<c:url value="0" var="count" />
<div class="container mt-5 mb-5 invoice">
		<h1 class="product-title mb-4" style = "margin-top: 70px;">Cart  management</h1>
		<br>
		<br>
        <div class="col-md-12">
  
          <div class="card">
            <div class="card-body"  >
              <table class="table mb-0">
                <thead>
                  <tr>
                    <th scope="col"><b>ID</b></th>
                    <th scope="col"><b>Username</b></th>
                    <th scope="col"><b>view</b>
                  </tr>
                </thead>
                <tbody>
			<c:if test="${not empty listCart}">
				<c:forEach var="cart" items="${listCart}">
		                    <tr class="fw-normal">
		                        <th>${count = count + 1}</th>
		                        <th>
		                          <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/avatar-5.webp" class="shadow-1-strong rounded-circle" alt="avatar 1"
		                            style="width: 55px; height: auto;">
		                          <span class="ms-2"><b>${cart.username}</b></span>
		                        </th>
		                        <td class="align-middle">
		                           <a href="${urlView}/${cart.id}" data-mdb-toggle="tooltip" title="View"><i class="fas fa-eye"></i></a>
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
