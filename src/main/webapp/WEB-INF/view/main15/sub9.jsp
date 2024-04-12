<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--el의 내장 객체 param : request 파라미터를 key, value 쌍으로 저장한 Map--%>
<%--${param["name"}--%>
<div>name : ${param.name}</div>
<div>age : ${param.age}</div>
<div>city : ${param.city}</div>
<div>address : ${param.address}</div>
<div>model : ${param.model}</div>

<hr>
<div>${param.title}</div>
<div>${param.content}</div>
<div>${param.car}</div>

<hr>
<%-- ?q=bts&song=dynamite&company=하이브 --%>
<div> 가수 : ${param.q}</div>
<div> 노래 : ${param.song}</div>
<div> 소속사 : ${param.company}</div>

</body>
</html>
