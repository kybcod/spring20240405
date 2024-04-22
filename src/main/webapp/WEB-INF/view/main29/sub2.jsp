<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: rosybrown; padding: 20px">${message}</div>
</c:if>
<h3>직원 조회</h3>
<form>
    직원 번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty customer}">
    <p>조회된 고객이 없습니다.</p>
</c:if>
<c:if test="${not empty employee}">
    <div>
        직원 번호 <input type="text" readonly value="${employee.id}">
    </div>
    <div>
        성 <input type="text" readonly value="${employee.lastName}">
    </div>
    <div>
        이름 <input type="text" readonly value="${employee.firstName}">
    </div>
    <div>
        생년월일 <input type="date" readonly value="${employee.birthDate}">
    </div>
    <div>
        사진 <input type="file" readonly value="${employee.photo}">
    </div>
    <div>
        설명
        <textarea cols="30" rows="10">${employee.notes}</textarea>
    </div>

    <form action="/main29/sub2/delete" method="post" onsubmit="return confirm('정말로 삭제하시겠습니까?')">
        <div>
            <input hidden="hidden" type="text" name="id" value="${employee.id}">
        </div>
        <button style="background-color: rosybrown">삭제</button>
    </form>
</c:if>



</body>
</html>
