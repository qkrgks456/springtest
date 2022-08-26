package com.test.springtest.controller;

import com.test.springtest.dto.MemberDto;
import com.test.springtest.service.TestService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Log4j2
@Controller
@RequiredArgsConstructor
public class TestController {

    private final TestService testService;

    @GetMapping("/sample")
    public String sample(Model model) throws Exception {
        model.addAttribute("test", "안녕");
        return "test";
    }

    @PostMapping("/upload")
    public String upload(@RequestParam MultipartFile file, Model model) {
        log.info(file.getOriginalFilename());
        return "test";
    }

    @GetMapping("/login-view")
    public String loginView(Authentication authentication) {
        if (authentication != null) {
            return "/member/member-in";
        }
        return "/member/login-view";
    }

    @GetMapping("/join-view")
    public String joinView() {
        return "/member/join-view";
    }

    @PostMapping("/join")
    public String join(@ModelAttribute MemberDto memberDto) {
        testService.join(memberDto);
        return "/member/login-view";
    }

    @GetMapping("/member/test")
    public String memberTest() {
        return "/member/member-in";
    }

    @GetMapping("/admin/test")
    public String adminTest() {
        return "/admin/test";
    }

    @GetMapping("/access-denied-page")
    public String accessDeniedPage() {
        return "/access-denied";
    }

    @GetMapping("/good")
    public String good() {
        return "/access-denied";
    }
}
