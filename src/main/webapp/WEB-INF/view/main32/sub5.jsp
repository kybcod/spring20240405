<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    ${message}
</c:if>
<h3>직원 입력</h3>
<hr>
<div>
    <form method="post">
        <div>
            lastName <input type="text" name="lastName">
        </div>
        <div>
            firstName <input type="text" name="firstName">
        </div>
        <div>
            생일 <input type="date" name="birthDate">
        </div>
        <div>
            photo <input type="file" name="photo">
        </div>
        <div>
            노트 :
            <textarea rows="10" cols="30" name="notes"></textarea>
        </div>
        <div>
            <input type="submit" value="등록">
        </div>
    </form>
</div>

</body>
</html>

