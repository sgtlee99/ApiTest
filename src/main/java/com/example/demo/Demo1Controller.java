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

    @RequestMapping("/")
    public String defalut() {
        return "로그인";
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
    public String findId() {
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

    @RequestMapping("/카페글쓰기")
    public String cafeInfo() {
        return "카페글쓰기";
    }

    @RequestMapping("/사용자마이페이지")
    public String guestMyPage() {
        return "사용자마이페이지";
    }

    @RequestMapping("/사용자정보변경")
    public String guestChangeInfo() {
        return "사용자정보변경";
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
    
}


