<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${not empty message}">
    <div style="padding: 10px; background-color: darkkhaki">${message}</div>
</c:if>
<h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa, quisquam sequi? A atque aut commodi consectetur,
    doloremque et, fuga illum laborum porro quasi quis rem sapiente soluta temporibus totam, voluptates.
</h1>
<p>
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque fuga ipsam labore magnam nostrum tempora totam veritatis
    voluptates! Ab accusantium aspernatur consectetur dignissimos eaque et nostrum numquam quas quasi voluptatem.
</p>
</body>
</html>
