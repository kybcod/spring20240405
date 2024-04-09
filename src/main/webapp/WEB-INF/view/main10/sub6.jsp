<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
<ul>
    <%--흥민 18 런던--%>
    <li>${myList[0].name}</li>
    <li>${myList[0].age}</li>
    <li>${myList[0].address}</li>
</ul>
</p>
<p>
<ul>
    <%--강인 30 파리--%>
    <li>${myList[1].name}</li>
    <li>${myList[1].age}</li>
    <li>${myList[1].address}</li>
</ul>
</p>
<p>
<ul>
    <%--정후 40 샌프란시스코--%>
    <li>${myList[2].name}</li>
    <li>${myList[2].age}</li>
    <li>${myList[2].address}</li>
</ul>
</p>


</body>
</html>
