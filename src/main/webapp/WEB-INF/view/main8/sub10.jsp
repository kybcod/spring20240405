<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${names["son"]}</h1>
<h1>${names["lee"]}</h1>
<h1>${names["kim"]}</h1>
<hr>
<h1>${names.son}</h1>
<h1>${names.lee}</h1>
<h1>${names.kim}</h1>
<hr>

<%-- 한글이거나 특수기호일 때는 밑에 처럼 작성 --%>
<h1>${others["손흥민"]}</h1>
<h1>${others["lee kang in"]}</h1>

</body>
</html>
