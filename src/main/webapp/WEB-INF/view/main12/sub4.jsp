<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3" var="num">
    <p>반복 출력 코드 ${num}</p>
</c:forEach>

<hr>
<c:forEach items="${myList}" var="elem">
    <p>${elem}</p>
</c:forEach>

<hr>
<c:forEach items="${foods}" var="food">
    <p>${food}</p>
</c:forEach>

<hr>
<c:forEach items="${foods}" var="food" begin="1" end="2">
    <p>${food}</p>
</c:forEach>

<hr>
<c:forEach items="${myMap}" var="entry">
    <p>${entry.key} : ${entry.value}</p>
</c:forEach>
<%-- 순서X
lee : paris
kim : munchen
son : london
--%>

<hr>
<c:forEach items="${cars}" var="car">
    <p>${car.key}의 본사는 ${car.value}입니다.</p>
</c:forEach>

<hr>
<c:forEach items="${myList2}" var="elem">
    <p>${elem}</p>
</c:forEach>

<hr>
<c:forEach items="${myMap2}" var="entry">
    <p>${entry.key} : ${entry.value}</p>
</c:forEach>
<%-- 순서X
노티드 : 한국
랜디스 : 미국
버블티 : 대만
--%>

<hr>
<c:forEach items="${myList}" var="item" varStatus="status">
    <div style="border: 1px solid black; margin: 5px">
        <p>index : ${status.index}</p>
        <p>count : ${status.count}</p>
            <%--현재 루프의 횟수--%>
        <p>first : ${status.first}</p>
        <p>last : ${status.last}</p>
        <p>current : ${status.current}</p>
            <%--현재 아이템--%>
    </div>
</c:forEach>

<hr>
<p>
    <c:forEach items="${myList}" varStatus="status" var="item">
        ${item}<c:if test="${not status.last}">,</c:if>
    </c:forEach>
</p>

</body>
</html>
