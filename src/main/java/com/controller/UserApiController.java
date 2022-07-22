package com.controller;

import com.cafein.login.User;
import com.cafein.login.UserService;
import com.dto.UserLoginRequestDto;
import com.dto.UserRegisterRequestDto;
import com.dto.UserUpdateDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RequiredArgsConstructor
@RestController
public class UserApiController {

    private final UserService userService;

    @PostMapping(value="/android")
    public ResponseEntity<?> androidResponse(@RequestBody UserLoginRequestDto dto) {
        System.out.println("Connection from Android");
        System.out.println("id: " + dto.getId() + ", pw: " + dto.getPw());
        return ResponseEntity.ok().body(dto.getId());
    }
    @PostMapping(value="/android/login")
    public ResponseEntity<?> androidLogin(@RequestBody UserLoginRequestDto dto, HttpServletResponse response) {
        userService.login(dto, response);
        return ResponseEntity.ok().body("login success!");
        //return ResponseEntity.ok().body(userService.login(dto));
    }
    @PostMapping(value="/android/register")
    public ResponseEntity<?> androidRegister(@RequestBody UserRegisterRequestDto dto) {
        userService.register(dto);
        System.out.println("runnnn");
        return ResponseEntity.ok().body("register success!");
    }

    @PutMapping(value="/android/update")
    public ResponseEntity<?> androidUpdate(HttpSession httpSession, @RequestBody UserUpdateDto dto) {
        User user = (User)httpSession.getAttribute("user");
        userService.update(user.getNum(), dto);
        System.out.println("runnnn");
        return ResponseEntity.ok().body("update success!");
    }
}