<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/main20/sub12">
    <input type="text" name="type">
    <br>
    <textarea name="content"></textarea>
    <br>
    <select name="city" id="">
        <option value="london">런던</option>
        <option value="seoul">서울</option>
        <option value="chicago">시카고</option>
    </select>
    <br>
</form>

<hr>

<form action="/main20/sub13">
    <div>
        <div>
            <input type="radio" name="city" value="seoul" id="">
            서울
        </div>
        <div>
            <input type="radio" name="city" value="london" id="">
            런던
        </div>
        <div>
            <input type="radio" name="city" value="incheon" id="">
            인천
        </div>
    </div>
    <input type="submit">
</form>
<hr>
<form action="/main20/sub14">
    <div>
        <input type="checkbox" name="foods" id="" value="pizza">
        피자
    </div>
    <div>
        <input type="checkbox" name="foods" id="" value="noodle">
        국수
    </div>
    <div>
        <input type="checkbox" name="foods" id="" value="burger">
        햄버거
    </div>
    <div>
        <input type="submit">
    </div>
</form>
<hr>
<form action="/main20/sub15">
    <div>
        <select name="type" id="">
            <option value="skt">skt</option>
            <option value="kt">kt</option>
            <option value="lg">lg</option>
        </select>
    </div>
    <hr>
    <div>
        <input type="radio" name="phone" value="010"> 010
    </div>
    <div>
        <input type="radio" name="phone" value="011"> 011
    </div>
    <div>
        <input type="radio" name="phone" value="016"> 016
    </div>
    <hr>
    <div>
        <input type="checkbox" name="book" value="novel"> 소설
    </div>
    <div>
        <input type="checkbox" name="book" value="poetry"> 시
    </div>
    <div>
    <input type="checkbox" name="book" value="essay"> 수필
    </div>
    <div>
        <input type="submit">
    </div>
</form>
</body>
</html>
