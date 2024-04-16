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
<form action="/main22/sub17" method="post">
    <div style="padding: 10px">아이디
        <input type="text" name="id">
    </div>
    <div style="padding: 10px">비밀번호
        <input type="password" name="password">
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
</form>

</body>
</html>
