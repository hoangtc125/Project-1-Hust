<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/bill-save" var="urlSave"/>
<c:url value="/bill-view" var="urlView"/>
<c:url value="/bill-update" var="urlUpdate"/>
<c:url value="/billSoftDelete" var="urlSoftDelete"/>
<c:url value="/bill-list-deleted" var="urlListSoftDeleted"/>
<c:url value="0" var="count"/>
<div>
<br />
<br />
<div>
<table class="table table-striped">
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Sum</th>
    <th>Date</th>
    <th>View</th>
  </tr>
  <c:if test="${not empty listBill}">
<c:forEach var="bill" items="${listBill}">
<tr style="border: 1px black solid">
<td>${count = count + 1}</td>
<td>${bill.nameBill}</td>
<td>${bill.sumProduct}</td>
<td>${bill.date}</td>
<td> <a href="${urlView}/${bill.id}">View</a></td>
</tr>
</c:forEach>
</c:if>
</table>
</div>
</div>