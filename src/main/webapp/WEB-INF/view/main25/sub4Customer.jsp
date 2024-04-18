<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>고객 목록</h3>
<%--action의 값이 없거나 생략되면 현재 요청 경로로 보냄--%>
<form>
    고객명
    <input value="${prevSearch}" name="search" type="text" placeholder="조회할 고객 이름을 입력해주세요.">
    <input type="submit" value="조회하기">
</form>
<hr>
<form>
    국가
    <select name="country" multiple>
        <c:forEach items="${countryList}" var="country">
            <option value="${country}">${country}</option>
        </c:forEach>
    </select>
    <button>조회</button>
</form>
<hr>
<table border="1">
    <thead>
    <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>연락처 이름</th>
        <th>주소</th>
        <th>도시</th>
        <th>우편번호</th>
        <th>국적</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
            <td>${customer.city}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
        </tbody>
</table>

<%--<div>--%>
<%--    <c:forEach items="${customers}" var="customer">--%>
<%--        <p><h3>${customer.id}번 고객님</h3></p>--%>
<%--        <p>고객명 : <input type="text" value="${customer.customerName}" readonly></p>--%>
<%--        <p>연락처 이름 : <input type="text" value="${customer.contactName}" readonly></p>--%>
<%--        <p>주소 : ${customer.address}, ${customer.city}, ${customer.country} </p>--%>
<%--        <p>우편번호 : <input type="text" value="${customer.code}" readonly></p>--%>
<%--    </c:forEach>--%>
<%--</div>--%>

</body>
</html>