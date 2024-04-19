<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        a{
            text-decoration: none;
            color: blue;
        }
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
        .active{
            background-color: burlywood;
        }
    </style>
</head>
<body>
<h3>고객 정보</h3>
<hr>
<table>
    <thead>
    <tr>
        <th>직원 아이디</th>
        <th>이름</th>
        <th>생년월일</th>
        <th>사진</th>
        <th>설명</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employeeList}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.lastName} ${employee.firstName}</td>
            <td>${employee.birthDate}</td>
            <td>${employee.photo}</td>
            <td>${employee.notes}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<c:if test="${currentPage != 1}">
    <c:url var="link" value="/main27/sub2">
        <c:param name="page" value="1"/>
    </c:url>
    <span>
        <a href="${link}">맨앞</a>
    </span>
</c:if>

<c:if test="${not empty prevPageNumber}">
    <c:url var="link" value="/main27/sub2">
        <c:param name="page" value="${prevPageNumber}"/>
    </c:url>
    <span>
        <a href="${link}">이전</a>
    </span>
</c:if>

<%--전체 페이지 보여주기--%>
<c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
    <c:url var="link" value="/main27/sub2">
        <c:param name="page" value="${pageNumber}"/>
    </c:url>
    <span>
        <a class="${currentPage eq pageNumber ? 'active' : ''}" href="${link}">${pageNumber}</a>
    </span>
</c:forEach>

<c:if test="${not empty nextPageNumber}">
    <c:url var="link" value="/main27/sub2">
        <c:param name="page" value="${nextPageNumber}"/>
    </c:url>
    <span>
        <a href="${link}">다음</a>
    </span>
</c:if>

<c:if test="${currentPage < lastPageNumber}">
    <c:url var="link" value="/main27/sub2">
        <c:param name="page" value="${lastPageNumber}"/>
    </c:url>
    <span>
        <a href="${link}">맨뒤</a>
    </span>
</c:if>

</body>
</html>

