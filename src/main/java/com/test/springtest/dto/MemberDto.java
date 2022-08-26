package com.test.springtest.dto;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class MemberDto {

    private int pkey;

    @NotBlank
    private String username;

    @NotBlank
    private String password;

    private String enabled;

}
