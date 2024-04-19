<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>고객 정보</h3>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>contact</th>
        <th>address</th>
        <th>city</th>
        <th>post</th>
        <th>country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
            <td>${customer.city}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div>
    <c:forEach begin="1" end="${lastPageNumber}" var="pageNumber">
        <c:url var="link" value="/main27/sub1">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">${pageNumber}</a>
<%-- 파라미터 하나일 때, url 태그 없이
            <a href="/main27/sub1?page=${pageNumber}" />--%>
        </span>
    </c:forEach>
</div>
</body>
</html>
