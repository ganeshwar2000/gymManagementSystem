<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Slot Booking Page</title>
<style type="text/css">
<%@ include file="/WEB-INF/css/slotBookPage.css" %>
</style>
</head>
<body>
<div class="container">
    <h1>Book Slot</h1>
    <div class="slot-container">
        <table>
            <tr>
                <th>Slot Id</th>
                <th>Slot Time</th>
                <th>Price</th>
            </tr>
            <tr>
                <td>${slot.slotId}</td>
                <td>${slot.slotTime}</td>
                <td>${slot.pricing}</td>
            </tr>
        </table>
    </div>
    <div class="form-container">
        <form:form action="/slot-book" method="post" modelAttribute="slotItemRecord">
        <input type="hidden" value="${slot.slotId}" name="slot_id"/>
        <table>
        <tr>
        <th>Item No</th>
        <th>Item Name</th>
        <th>Total Slot</th>
        <th>Seat Available</th>
        <th>Select</th>
        </tr>
        <c:forEach items="${itemList}" var="item">
        <tr>
        <td>${item.itemId}</td>
        <td>${item.itemName}</td>
        <td>${item.totalSeat}</td>
        <td>${item.seatVacant}</td>
        <td><input name="selectItem" type="radio" value="${item.itemId}"/></td>
        </tr>
        </c:forEach>
        </table>
        <button type="submit">Book</button>
        <a href="/index" ><button type="button">Return</button></a>
        </form:form>
    </div>
</div>
</body>
</html>
