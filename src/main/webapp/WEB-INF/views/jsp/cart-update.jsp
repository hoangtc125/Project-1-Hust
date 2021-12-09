<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

  <a href="<c:url value="/cart-view/-1/" />">Your Cart</a>
  <br />
  <h1>Product: ${item.getProduct().getName()}</h1>
  <h1>Price: ${item.getProduct().getPrice()}</h1>
<c:url value="/updateCart" var="updateCart" />
  <form action="${updateCart}" method="get" >
      ID: <input name="id" readonly="true" value="${id}"/> <br/> <br/>
      Quantity: <input name="quan" type="text" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form>