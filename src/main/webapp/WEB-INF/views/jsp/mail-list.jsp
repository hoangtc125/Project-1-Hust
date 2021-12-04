<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/mail-save" var="urlSave"/>
<c:url value="/mail-view" var="urlView"/>
<c:url value="/mail-update" var="urlUpdate"/>
<c:url value="/mailDelete" var="urlDelete"/>
<c:url value="0" var="count"/>
<div>
<div>
<h1>Add New Email:</h1>
<a href="${urlSave}">Add here</a>
</div>
<button class="btn btn-outline-success" ><a href="?mode=receive">Receive</a></button>
<button class="btn btn-outline-success" ><a href="?mode=send">Send</a></button>
<br />
<br />
<div>
<table class="table table-striped">
  <tr>
    <th>Id</th>
    <th>Title</th>
    <th>Seen</th>
    <th>Sender</th>
    <th>Receiver</th>
    <th>View</th>
    <th>Delete</th>
  </tr>
  <c:if test="${not empty listMail}">
<c:forEach var="mail" items="${listMail}">
<tr style="border: 1px black solid">
<td>${count = count + 1}</td>
<td>${mail.title}</td>
<td>${mail.isRead}</td>
<td>${mail.sender}</td>
<td>${mail.receiver}</td>
<td> <a href="${urlView}/${mail.id}/${pageContext.request.userPrincipal.name}">View</a></td>
<td> <a href="${urlDelete}/${mail.id}/${pageContext.request.userPrincipal.name}">Delete</a></td>
</tr>
</c:forEach>
</c:if>
</table>
</div>
</div>