package com.service.impl;

import com.service.TestService;
import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl implements TestService {

    public String test() {
        System.out.println("spring与springMVC整合成功");
        return "hello";
    }
}
