<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/bill-save" var="urlSave" />
<c:url value="/product-view" var="urlView" />
<c:url value="/bill-update" var="urlUpdate" />
<c:url value="/updateCart" var="updateCart" />
<c:url value="/pay" var="urlPay" />
<c:url value="0" var="count" />

<style>
body{
margin-top: 20px;}

</style>
<div id="invoice" class="container" style = "margin-bottom: -80px;">
    <div class="invoice overflow-auto" style = "margin-bottom: 60px;">
        <div style="min-width: 600px">
            <main style = "margin-top: 70px;">
                <h1 class="product-title mb-4">Detailed Invoice</h1>
                <div style = "border-top:1px dashed #DDDDDD; margin-top: 70px;">
                    <br>
                    <br>
                    <h3 style="font-family: roboto; color: 00AFF0;">Owner</h3>
                </div>
                <div id="yourbill">
                <div class="media-inf d-flex">
                    <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
                    <div>
                        <h4 class="media-heading">${bill.username}</h4>
                        <ul class="list-unstyled list-inline media-detail pull-lef d-flex">
                          <li>Date order: </li>  <li>${bill.date}</li>
                        </ul>
                    </div>
                </div>
                <br>
                <br>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th style="width:5%"><b>ID</b></th>
                            <th style="width:30%"><b>PRODUCT</b></th>
                            <th style="width:20%; text-align: right"><b>PRICE</b></th>
                            <th style="width:20%; text-align: right"><b>QUANTITY</b></th>
                            <th style="width:20%; text-align: right"><b>TOTAL</b></th>
                        </tr>
                    </thead>
                    <tbody>
		               <c:if test="${not empty listItem}">
						<c:forEach var="item" items="${listItem}">
	                        <tr>
	                            <td class="no">${count = count + 1}</td>
	                            <td class="text-left">${item.getProduct().getName()}</td>
	                            <td class="unit">${item.getProduct().getPrice()} VND</td>
	                            <td class="qty">${item.getQuan()}</td>
	                            <td class="total-price">${item.getProduct().getPrice() * item.getQuan()} VND</td>
	                        </tr>
                       </c:forEach>
                       </c:if>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2"></td>
                            <td colspan="2"><br>GRAND TOTAL</td>
                            <td><br>${bill.sumProduct} VND</td>
                        </tr>
                    </tfoot>
                </table>
            </main>
        </div>
    
    <br>
    <br>
    <br>
    </div>
</div>