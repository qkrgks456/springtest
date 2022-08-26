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
    <form action="/login" class="w-50 border p-3 bg-white shadow rounded align-self-center" method="post">
        <div class="d-inline-flex">
            <h1 class="ms-2 fw-bold">로그인</h1>
        </div>
        <div class="mb-3">
            <label for="id" class="form-label">아이디</label>
            <input type="text" class="form-control" id="id" name="userId" placeholder="아이디를 입력해주세요">
        </div>
        <div class="mb-3">
            <label for="pw" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="pw" name="userPw" placeholder="비밀번호를 입력해주세요">
        </div>
        <div class="text-center mt-3">
            <a href="/join-view" class="btn btn-primary rounded-0 me-1">회원가입</a>
            <button type="submit" class="btn btn-primary rounded-0 me-1">로그인</button>
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="rememberMe" name="remember" checked>
            <label class="form-check-label" for="rememberMe">로그인 유지</label>
        </div>
        <p>${errorMsg}</p>
    </form>
</div>
</body>
<script src="/resources/js/bootstrap.min.js"/>
</html>
