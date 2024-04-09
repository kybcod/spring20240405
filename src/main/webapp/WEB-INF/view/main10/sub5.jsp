<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 값 1 --%>
<p>${data}</p>
<p>${requestScope.data}</p>
<p>${requestScope["data"]}</p>

<%-- 에러  <p>${데이타} --%>
<%-- 값 1 --%>
<p>${requestScope["데이타"]}</p>

<%-- 3 출력 --%>
<%--<p>${3}</p>--%>

<%-- 삼 --%>
<p>${requestScope["3"]}</p>


</body>
</html>
