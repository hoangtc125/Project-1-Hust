<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="0" var="count" />
<div>
	<br /> <br />
	<div>
		<table class="table table-striped">
			<tr>
				<th>Id</th>
				<th>Date</th>
				<th>Content</th>
				<th>View</th>
			</tr>
			<c:if test="${not empty listNoti}">
				<c:forEach var="noti" items="${listNoti}">
					<tr style="border: 1px black solid">
						<td>${count = count + 1}</td>
						<td>${noti.date}</td>
						<td>${noti.content}</td>
						<td><a href="${noti.link}">View</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</div>