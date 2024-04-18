<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>상품 조회</h3>
<%--action의 값이 없거나 생략되면 현재 요청 경로로 보냄--%>
<form>
    상품명
    <input value="${prevSearch}" name="search" type="text" placeholder="조회할 상품명을 입력해주세요." size="30" >
<%--    form 내의 button 요소는 submit 버튼 역할을 합니다.--%>
    <button>조회</button>
<%--    <input type="submit" value="조회하기">--%>
</form>
<hr>
<form>
    카테고리 선택
    <div>
        <select name="category" multiple>

            <c:forEach items="${categoryList}" var="category">
                <c:set var="selected" value="false"></c:set>
                <c:forEach items="${prevCategorySelect}" var="prevSelect">
                    <c:if test="${category.id == prevSelect}">
                        <c:set var="selected" value="true"></c:set>
                    </c:if>
                </c:forEach>

                <option ${selected ? "selected" : ""} value="${category.id}">${category.name}</option>
            </c:forEach>
        </select>
    </div>
    <div>
        <button>조회</button>
    </div>
</form>

<c:if test="${empty products}" var="emptyProduct">
    <p style="background-color: beige; padding: 20px 20px; width: 300px">조회된 상품이 없습니다.</p>
</c:if>
<c:if test="${not emptyProduct}">
    <table>
        <thead style="background-color: burlywood">
        <tr>
            <th>아이디</th>
            <th>상품명</th>
            <th>공급업체</th>
            <th>카테고리</th>
            <th>Unit</th>
            <th>가격</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product">
            <tr style="background-color: beige">
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.supplierId}</td>
                <td>${product.categoryId}</td>
                <td>${product.unit}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
