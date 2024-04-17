<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 정보 조회</h3>
<form action="/main25/sub4">
    고객 이름 :
    <input type="text" name="name" placeholder="고객 이름을 입력해주세요.">
    <input type="submit" value="조회하기">
</form>
<hr>
<div>
    <c:forEach items="${customers}" var="customer">
        <p><h3>${customer.id}번 고객님</h3></p>
        <p>고객명 : <input type="text" value="${customer.customerName}" readonly></p>
        <p>담당자 : <input type="text" value="${customer.contactName}" readonly></p>
        <p>주소 : ${customer.address} ${customer.city} ${customer.country} </p>
        <p>우편번호 : <input type="text" value="${customer.code}" readonly></p>
    </c:forEach>
</div>
</body>
</html>
