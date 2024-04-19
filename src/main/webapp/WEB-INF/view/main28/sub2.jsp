<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="padding: 20px; background-color: khaki">${message}</div>
</c:if>
<h3>직원 정보</h3>
<form action="" method="post">
    <div>
        LastName <input type="text" name="lastName">
    </div>
    <div>
        FirstName <input type="text" name="firstName">
    </div>
    <div>
        BirthDate <input type="date" name="birthDate">
    </div>
    <div>
        Photo <input type="file" name="photo">
    </div>
    <div>
        notes
        <textarea name="notes" cols="30" rows="10"></textarea>
    </div>
    <div>
        <input type="submit" value="등록">
    </div>
</form>
</body>
</html>
