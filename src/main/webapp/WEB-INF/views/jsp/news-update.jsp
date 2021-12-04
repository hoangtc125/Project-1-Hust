<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

  <a href="<c:url value="/news-list-management" />">List News Management</a>
  <br />
  <h1>Edit News:</h1>
  <c:url value="/updateNews" var="updateNews" />
  <form:form action="${updateNews}" method="POST" modelAttribute="news">
      Id: <form:input path="id" readonly="true" /> <br/> <br/>
      Title: <form:input path="Title" /> <br/> <br/>
      Content: <form:input path="Content" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>