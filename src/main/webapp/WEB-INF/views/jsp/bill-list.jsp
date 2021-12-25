<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:url value="/bill-save" var="urlSave" />
<c:url value="/bill-view" var="urlView" />
<c:url value="/bill-update" var="urlUpdate" />
<c:url value="/billSoftDelete" var="urlSoftDelete" />
<c:url value="/bill-list-deleted" var="urlListSoftDeleted" />
<c:url value="0" var="count" />
<style>
body{
margin-top: 20px;}

</style>
<div id="invoice" class="container" style = "margin-bottom: -80px;">
    <div class="invoice overflow-auto" style = "margin-bottom: 60px;">
        <div style="min-width: 600px">
            <main style = "margin-top: 70px;">
                <h1 class="product-title mb-4">Your bill</h1>
                <table style = "margin-top: 100px;">
                    <thead>
                        <tr>
                            <th style="width:5%"><b>ID</b></th>
                            <th style="width:30%"><b>NAME</b></th>
                            <th style="width:30%; text-align: left"><b>DATE</b></th>
                            <th style="width:10%; text-align: center"><b>VIEW</b></th>
                            <th style="width:20%; text-align: right"><b>TOTAL</b></th>
                        </tr>
                    </thead>
                    <tbody>
						<c:if test="${not empty listBill}">
							<c:forEach var="bill" items="${listBill}">
	                        <tr>
	                            <td class="no">${count = count + 1}</td>
	                            <td class="text-left">${bill.nameBill}</td>
	                            <td class="unit" style = "text-align: center;">${bill.date}</td>
	                            <td class="qty" style = "text-align: center;"><a href="${urlView}/${bill.id}"><i class="fas fa-eye"></i></a></td>
	                            <td class="total-price">${bill.sumProduct} VND</td>
	                        </tr>
	                     </c:forEach>
	                     </c:if>
                    </tbody>
                </table>
            </main>
        </div>
    
    <br>
    <br>
    <br>
    </div>
</div>