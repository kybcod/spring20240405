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
<h3>고객 정보 조회 및 수정</h3>
<form>
    번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customer}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${not empty customer}">
    <h3>${customer.id}번 고객님</h3>
    <form action="/main32/sub7/update" method="post">
        <div>
            이름 <input type="text" name="name" value="${customer.name}">
        </div>
        <div>
           계약명 <input type="text" name="contactName" value="${customer.contactName}">
        </div>
        <div>
            주소 <input type="text" name="address" value="${customer.address}">
        </div>
        <div>
            도시 <input type="text" name="city" value="${customer.city}">
        </div>
        <div>
            우편번호
            <input type="text" value="${customer.postalCode}" name="postalCode">
        </div>
        <div>
            국가
            <input type="text" value="${customer.country}" name="country">
        </div>
        <div style="display: none">
            <input type="text" name="id" value="${customer.id}">
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>
</body>
</html>
