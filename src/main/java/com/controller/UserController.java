package com.controller;

import com.cafein.login.SessionManager;
import com.cafein.login.User;
import com.cafein.login.UserService;
import com.dto.UserLoginRequestDto;
import com.dto.UserReadRequestDto;
import com.dto.UserRegisterRequestDto;
import com.dto.UserUpdateDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@RequiredArgsConstructor
@RestController
public class UserController {

    private final UserService userService;
    private final SessionManager sessionManager;

    @PostMapping("/user") // 생성
    public Long create(@RequestBody UserRegisterRequestDto userRegisterRequestDto) {
        //System.out.println("user" + user.getName());
        //System.out.println("user" + user.getId());
        //System.out.println("user" + user.getAddress());
        return userService.register(userRegisterRequestDto);
    }

    @GetMapping("/user/{num}") // 조회
    public User read(@PathVariable Long num) {
        return userService.findById(num);
    }

    /*@GetMapping("/user/{user_num}") // 조회
    public Long read(@PathVariable Long user_num, @RequestBody UserReadRequestDto userReadRequestDto) {
        return userService.read(user_num, userReadRequestDto);
    }*/

    @PutMapping("/user/{num}/update") //수정
    public Long update(@PathVariable Long num, @RequestBody UserUpdateDto updateDto) {
        System.out.println("update api");
        return userService.update(num, updateDto);
    }

    @DeleteMapping("/user/{num}/delete") //삭제
    public Long delete(@PathVariable Long num) {
        userService.delete(num);
        return num;
    }

    @PostMapping("/user/login") //로그인
    public ResponseEntity<?> webLogin(@RequestBody UserLoginRequestDto dto, HttpServletResponse response) {
        userService.login(dto);
        sessionManager.createSession(dto, response); //세션 관리자를 통해 세션을 생성하고, 유저 데이터 보관
        return ResponseEntity.ok().body("success!");
        //return ResponseEntity.ok().body(userService.login(dto));
    }

}

//https://jiwondev.tistory.com/171?category=879790 로그인 유지 참고 사이트

