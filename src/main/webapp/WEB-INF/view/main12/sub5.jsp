<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <c:forEach items="${myList}" varStatus="status" var="item">
        <c:if test="${status.first}">기술들 : </c:if>
        ${status.current}
        <c:if test="${not status.last}">,</c:if>
    </c:forEach>
</p>
</body>
</html>
