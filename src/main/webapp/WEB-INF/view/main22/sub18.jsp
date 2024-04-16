<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="padding: 20px; background-color: darkkhaki">
            ${message}
    </div>
</c:if>
<h1>${id}님 로그인을 성공하였습니다.</h1>
</body>
</html>
