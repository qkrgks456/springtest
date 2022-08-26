package com.test.springtest.mapper;


import com.test.springtest.dto.MemberDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TestMapper {

    List<MemberDto> test();

    int testInsert();

    int testUpdate();

    int join(@Param("dto") MemberDto memberDto);

    int auth(@Param("dto") MemberDto memberDto);


}
