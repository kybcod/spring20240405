<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--method: 전송 방식 결정, 기본(get)--%>
<%--get : 주소에 쿼리스트링으로 붙음, 민감한 정보 노출, 길이 제한--%>
<%--post : 요청 메세지 body(몸체)에 붙음, 민감한 정보 노출X(주소에 노출이 안됨), 길이 제한X --%>
<form action="/main20/sub17" method="get">
    <div>
        아이디
        <input type="text" name="id">
    </div>
    <div>
        패스워드
        <input type="password" name="password">
    </div>
    <div>
        자기소개
        <textarea name="describe" id="" cols="30" rows="10"></textarea>
    </div>
    <div>
        <input type="submit">
    </div>
</form>

<hr>

<form action="/main20/sub18" method="post">
    <div> 이름
        <input type="text" name="name">
    </div>
    <div> 도시
        <input type="text" name="city">
    </div>
    <div> 주소
        <input type="text" name="address">
    </div>
    <input type="submit">
</form>


</body>
</html>
