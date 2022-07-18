package com.example.demo;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class Demo1Controller {

    @RequestMapping("/test") //테스트 페이지
    public String welcome() {
        return "test";
    }
    
    @RequestMapping("/로그인")
    public String login() {
        return "로그인";
    }
    
    @RequestMapping("/메인화면")
    public String main() {
        return "메인화면";
    }
    
    @RequestMapping("/비밀번호찾기")
    public String findpassword() {
        return "비밀번호찾기";
    }
    
    @RequestMapping("/설문조사")
    public String question() {
        return "설문조사";
    }
    
    @RequestMapping("/아이디찾기")
    public String findid() {
        return "아이디찾기";
    }
    
    @RequestMapping("/회원가입")
    public String register() {
        return "회원가입";
    }
    
    @RequestMapping("/설문조사후그룹")
    public String group() {
        return "설문조사후그룹";
    }
    
    @RequestMapping("/loginPro")
    public String loginProjsp() {
    	return "loginPro";
    }
    
    @RequestMapping("/joinPro")
    public String joinProjsp() {
    	return "joinPro";
    }
    
    @RequestMapping("/findid")
    public String findidjsp() {
    	return "findid";
    }
    
    @RequestMapping("/findpw")
    public String findpwjsp() {
    	return "findpw";
    }

    @RequestMapping("/cafe_write")
    public String cafewri() {
        return "cafe_write";
    }


}


