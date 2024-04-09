<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%-- java와 css --%>
<p>${myList.key1[0]}와 ${myList.key1[1]}</p>

<%-- react와 vue --%>
<p>${myList.key2[0]}와 ${myList.key2[1]}</p>

<%-- spring와 node --%>
<p>${myList["key 삼"][0]}와 ${myList["key 삼"][1]}</p>
</body>
</html>
