package com.choi.toy.hello;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        log.debug("hello");
        return "helloWorld";
    }

    @GetMapping("post")
    public String post() {
        return "post";
    }
}
