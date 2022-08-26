package com.test.springtest.service;

import com.test.springtest.dto.MemberDto;
import com.test.springtest.mapper.TestMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class TestService {

    private final TestMapper testMapper;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Transactional
    public int join(MemberDto memberDto) {
        String encodePass = bCryptPasswordEncoder.encode(memberDto.getPassword());
        memberDto.setPassword(encodePass);
        testMapper.join(memberDto);
        testMapper.auth(memberDto);
        return 0;
    }

}
