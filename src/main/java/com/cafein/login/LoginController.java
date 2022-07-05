package com.cafein.login;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class LoginController {

    @RequestMapping(value = "/api/test", method = RequestMethod.GET)//get 방식의 메소드로 이 주소를 호출하면 실행할 수 있음
    @ResponseStatus(value = HttpStatus.OK)
    public String getApiTest() {
        return "{\"request\" : \"okay\"}";
    }
    @GetMapping("/api/v2/test")
    public ResponseEntity<?> getApiTest2(){
        return ResponseEntity.ok().body(new dtp());
    }

    @PostMapping("/api/v2/test")
    public ResponseEntity<?> getApiTest2(@RequestBody ReqestDto dto){
        dto.getContent();
        return ResponseEntity.ok().body(new dtp());
    }
}
