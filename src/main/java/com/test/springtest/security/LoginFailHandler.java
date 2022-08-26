package com.test.springtest.security;

import lombok.extern.log4j.Log4j2;
import org.springframework.security.authentication.AccountExpiredException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Log4j2
public class LoginFailHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception)
            throws IOException, ServletException {
        String errorMsg = "";
        if (exception instanceof BadCredentialsException) {
            errorMsg = "아이디나 비밀번호가 맞지 않습니다. 다시 확인해 주세요.";
        } else if (exception instanceof DisabledException) {
            errorMsg = "계정이 삭제처리 혹은 비활성화 되었습니다. 관리자에게 문의하세요.";
        } else if (exception instanceof LockedException) {
            errorMsg = "잠긴 계정입니다.";
        } else if (exception instanceof AccountExpiredException) {
            errorMsg = "계정이 만료되었습니다.";
        } else {
            errorMsg = "이미 접속중입니다.";
        }
        request.setAttribute("errorMsg", errorMsg);
        request.getRequestDispatcher("/WEB-INF/views/member/login-view.jsp").forward(request, response);
    }
}
