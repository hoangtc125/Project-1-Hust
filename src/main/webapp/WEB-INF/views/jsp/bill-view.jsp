<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/bill-save" var="urlSave"/>
<c:url value="/product-view" var="urlView"/>
<c:url value="/bill-update" var="urlUpdate"/>
<c:url value="/updateCart" var="updateCart" />
<c:url value="/pay" var="urlPay"/>
<c:url value="0" var="count"/>
<div>
<div>
<h1>Owner: ${bill.username}</h1>
<h1>Date: ${bill.date}</h1>
</div>
<br />
<br />
<div>
<table class="table table-striped">
  <tr>
    <th>Id</th>
    <th>Product</th>
    <th>Quantity</th>
    <th>Price per product</th>
    <th>Sum</th>
  </tr>
  <c:if test="${not empty listItem}">
<c:forEach var="item" items="${listItem}">
<tr style="border: 1px black solid">
<td>${count = count + 1}</td>
<td>${item.getProduct().getName()}</td>
<td>${item.getQuan()}</td>
<td>${item.getProduct().getPrice()}</td>
<td>${item.getProduct().getPrice() * item.getQuan()}</td>
</tr>
</c:forEach>
</c:if>
</table>
<h1>SUM: ${bill.sumProduct}</h1>
</div>
</div>