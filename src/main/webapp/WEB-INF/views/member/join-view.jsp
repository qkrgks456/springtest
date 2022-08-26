<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div class="d-flex justify-content-center container h-100">
    <form action="/join" class="w-50 border p-3 bg-white shadow rounded align-self-center" method="post">
        <div class="d-inline-flex">
            <h1 class="ms-2 fw-bold">회원가입</h1>
        </div>
        <div class="mb-3">
            <label for="username" class="form-label">아이디</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="아이디를 입력해주세요">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해주세요">
        </div>
        <div class="text-center mt-3">
            <input type="submit" value="회원가입" class="btn btn-primary rounded-0 me-1">
        </div>
    </form>
</div>
</body>
<script src="/resources/js/bootstrap.min.js"/>
</html>
