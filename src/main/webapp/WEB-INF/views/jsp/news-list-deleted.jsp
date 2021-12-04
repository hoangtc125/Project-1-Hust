<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/news-save" var="urlSave"/>
<c:url value="/news-view" var="urlView"/>
<c:url value="/news-list" var="urlList"/>
<c:url value="/news-update" var="urlUpdate"/>
<c:url value="/news-restore" var="urlRestore"/>
<c:url value="/newsDelete" var="urlDelete"/>
<c:url value="/news-list-management" var="urlManage"/>
<c:url value="0" var="count"/>
<div class="d-flex justify-content-center">
<div>
<h1>List News Management</h1>
<a href="${urlManage}">Click here</a>
</div>
<br />
<br />
<table class="table table-striped">
  <tr>
    <th>Id</th>
    <th>Title 
    	<a href="news-list-deleted?sort=title"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-sort-alpha-down" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M10.082 5.629 9.664 7H8.598l1.789-5.332h1.234L13.402 7h-1.12l-.419-1.371h-1.781zm1.57-.785L11 2.687h-.047l-.652 2.157h1.351z"/>
  <path d="M12.96 14H9.028v-.691l2.579-3.72v-.054H9.098v-.867h3.785v.691l-2.567 3.72v.054h2.645V14zM4.5 2.5a.5.5 0 0 0-1 0v9.793l-1.146-1.147a.5.5 0 0 0-.708.708l2 1.999.007.007a.497.497 0 0 0 .7-.006l2-2a.5.5 0 0 0-.707-.708L4.5 12.293V2.5z"/>
</svg></a>
    </th>
    
    <th>View</th>
    <th>Restore</th>
    <th>Delete</th>
  </tr>
  <c:if test="${not empty listNews}">
<c:forEach var="news" items="${listNews}">
<tr style="border: 1px black solid">
<td>${count = count + 1}</td>
<td>${news.title}</td>
<td> <a href="${urlView}/${news.id}">View</a></td>
<td> <a href="${urlRestore}/${news.id}">Restore</a></td>
<td> <a href="${urlDelete}/${news.id}">Delete</a></td>
</tr>
</c:forEach>
</c:if>
</table>
</div>