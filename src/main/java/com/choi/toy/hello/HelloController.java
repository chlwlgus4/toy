package com.choi.toy.hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        return "helloWorld";
    }

    @GetMapping("post")
    public String post() {
        return "post";
    }
}
