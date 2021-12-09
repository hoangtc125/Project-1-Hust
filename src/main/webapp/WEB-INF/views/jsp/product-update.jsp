<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

  <a href="<c:url value="/product-list-management" />">List Product Management</a>
  <br />
  <h1>Edit Product:</h1>
  <c:url value="/updateProduct" var="updateProduct" />
  <form:form action="${updateProduct}" method="POST" modelAttribute="product">
      Id: <form:input path="id" readonly="true" /> <br/> <br/>
      Name: <form:input path="name" /> <br/> <br/>
      Price: <form:input path="price" /> <br/> <br/>
      Available: <form:input path="unSold" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>