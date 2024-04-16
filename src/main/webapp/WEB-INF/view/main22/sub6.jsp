<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${param.type eq 'fail'}">
    <div style="padding: 10px; background-color: chartreuse">
        아이디와 비밀번호를 확인하세요.
    </div>
</c:if>

<form action="/main22/sub7" method="post">
    <div>
        아이디 <input type="text" name="id" placeholder="아이디를 입력하세요.">
    </div>
    <div>
        비밀번호 <input type="password" name="password" placeholder="비밀번호를 입력하세요">
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
</form>


</body>
</html>
