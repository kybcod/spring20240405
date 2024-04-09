<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>if</h3>

<c:if test="${age >= 20}">
    <p>투표 가능</p>
</c:if>

<c:if test="${age < 20}">
    <p>투표 불가능</p>
</c:if>

<%-- products 속성이 빈 리스트면 상품이 없습니다. 출력--%>
<c:if test="${empty products}">
    <p>상품이 없습니다.</p>
</c:if>

<c:if test="${! empty products}">
    <ul>
        <li>${products[0]}</li>
        <li>${products[1]}</li>
    </ul>
</c:if>

<c:if test="${5 < 8 && 9 < 2}" var="result">
    <p>출력1</p>
</c:if>
<c:if test="${not result}">
    <p>출력2</p>
</c:if>

<c:if test='${member.country == "korea" and member.age >= 20}' var="result1">
    <p>투표 가능</p>
</c:if>
<c:if test="${not result1}">
    <p>투표 불가능</p>
</c:if>

</body>
</html>
