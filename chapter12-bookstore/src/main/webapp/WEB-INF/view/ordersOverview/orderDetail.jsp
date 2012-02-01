<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page"
	xmlns:spring="http://www.springframework.org/tags"
	xmlns:fn="http://java.sun.com/jsp/jstl/functions"
	xmlns:form="http://www.springframework.org/tags/form"
	xmlns:c="http://java.sun.com/jsp/jstl/core" version="2.2">
	<jsp:directive.page import="java.util.Enumeration" />

	<h2>Order detail</h2>
	<div style="width: 500px; height: 100px; margin-top: 15px;">
		<table style="width: 100%;" rules="groups">
			<thead>
				<tr>
					<th align="left">Book titile</th>
					<th align="left">Book descriptipon</th>
					<th align="left">Book price</th>
				</tr>
			</thead>
			<tbody>
				<tr height="10px" />
				<c:forEach items="${order.orderDetails}" var="orderDetail" varStatus="status">
					<tr>
						<td>${orderDetail.book.title}</td>
						<td>${orderDetail.book.description}</td>
						<td>${orderDetail.book.price}</td>
					</tr>
				</c:forEach>
				<tr height="20px" />
			</tbody>
		</table>
	</div>

</jsp:root>