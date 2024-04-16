<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <thead>
    <tr>
        <th>NO</th>
        <th>first name</th>
        <th>last name</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items="${employees}" var="employee" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${employee.firstName}</td>
                <td>${employee.lastName}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
