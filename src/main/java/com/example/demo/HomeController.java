package com.example.demo;

import com.cafein.login.SessionManager;
import com.cafein.login.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    private final SessionManager sessionManager;

    public HomeController(SessionManager sessionManager) {
        this.sessionManager = sessionManager;
    }

    @RequestMapping("/test") //테스트 페이지
    public String welcome() {
        return "test";
    }

    @RequestMapping("/")
    public String login(HttpServletRequest request, Model model) {
        //세션 관리자에 저장된 회원 정보 조회
        User user = (User) sessionManager.getSession(request);

        // [세션ID 쿠키]에 해당되는 세션 데이터없음
        if (user == null) { return "로그인";}

        // 세션있음. 로그인상태 유지
        model.addAttribute("user", user);
        return "메인화면";
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


