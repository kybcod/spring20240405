<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .table {
            border-collapse: collapse;
            border: 1px solid black;
            width: 100%;
        }

        .table th,
        .table td {
            border: 1px solid black;
            text-align: center;
            padding-top: 5px;
            padding-bottom: 5px;
        }
    </style>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th>NO.</th>
        <th>이름</th>
        <th>팀</th>
        <th>국적</th>
        <th>종목</th>
        <th>포지션</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${playerList}" varStatus="status" var="player">
        <tr>
            <td>${status.count}</td>
            <td>${player.name}</td>
            <td>${player.country}</td>
            <td>${player.team}</td>
            <td>${player.event}</td>
            <td>
                <c:forEach items="${player.position}" var="position" varStatus="posStatus">
                    ${position}
                    <c:if test="${not posStatus.last}">,</c:if>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
