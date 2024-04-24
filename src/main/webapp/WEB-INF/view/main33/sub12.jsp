<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, td, tr, th {
            border-collapse: collapse;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: khaki; padding: 20px">${message}</div>
</c:if>
<h3>my_table10에 데이터 추가하기</h3>
<form action="" method="post">
    <div>
        제목 <input type="text" name="title" placeholder="제목">
    </div>
    <div>
        이름 <input type="text" name="name" placeholder="이름">
    </div>
    <div>
        나이 <input type="number" name="age" placeholder="0">
    </div>
    <div>
        가격 <input type="number" name="price" placeholder="0.00" step="0.01">
    </div>
    <div>
        출판일 <input type="date" name="published" value="1900-01-01">
    </div>
    <div>
        삽입시간 <input type="datetime-local" name="inserted">
    </div>
    <div style="display: flex">
        <div>
            <input type="submit" value="추가">
        </div>
        <div>
            <input type="submit" value="삭제">
        </div>
    </div>
</form>
<hr>
<h3>my_table10 조회하기</h3>
<table>
    <thead>
        <tr>
            <th>제목</th>
            <th>이름</th>
            <th>나이</th>
            <th>가격</th>
            <th>출판일</th>
            <th>수정일</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${list}" var="list">
            <tr>
                <td>${list.title}</td>
                <td>${list.name}</td>
                <td>${list.age}</td>
                <td>${list.price}</td>
                <td>${list.published}</td>
                <td>${list.inserted}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
