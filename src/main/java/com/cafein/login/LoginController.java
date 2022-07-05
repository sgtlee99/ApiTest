package com.cafein.login;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @RequestMapping(value = "/api/test", method = RequestMethod.GET)//get 방식의 메소드로 이 주소를 호출하면 실행할 수 있음
    @ResponseStatus(value = HttpStatus.OK)
    public String getApiTest() {
        return "{\"request\" : \"okay\"}";
    }
}
