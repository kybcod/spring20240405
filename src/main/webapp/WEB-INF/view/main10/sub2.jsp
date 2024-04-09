<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- 7 10 30--%>
<p>${myAttr[0].son} ${myAttr[0].lee} ${myAttr[0].kim}</p>

<%-- seoul tokyo 워싱턴--%>
<p>${myAttr[1].korea} ${myAttr[1].japan} ${myAttr[1]["미국"]}</p>

</body>
</html>
