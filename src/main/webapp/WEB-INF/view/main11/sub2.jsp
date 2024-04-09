<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>empty 연산자</h3>
<p>길이가 0인 컬렉션, 문자열, 존재하지 않는 attribute, null 일 때 true</p>
<p>${empty attr1}</p>
<%--false--%>
<p>${empty attr2}</p>
<%--true--%>
<p>${empty attr3}</p>
<%--false--%>
<p>${empty attr4}</p>
<%--true--%>
<p>${empty ""}</p>
<%--true--%>
<p>${empty attr0}</p>
<%--true--%>
<p>${empty attr5}</p>
<%--true--%>
<p>${empty 0}</p>
<%--false--%>

<hr>
안비어있는지 확인할 때 사용
<p>${! empty attr1}</p>
<%--false--%>
<p>${! empty attr2}</p>
<%--true--%>
<p>${! empty attr3}</p>
<%--false--%>
<p>${! empty attr4}</p>


</body>
</html>
