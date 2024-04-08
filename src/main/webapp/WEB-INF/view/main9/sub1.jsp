<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- ${attributeName.propertryName} --%>
<h1>${person.name}</h1>
<h1>${person.age}</h1>
<hr>

<%-- ${attributeName["propertryName"] --%>
<h1>${person["name"]}</h1>
<h1>${person["age"]}</h1>
</body>
</html>
