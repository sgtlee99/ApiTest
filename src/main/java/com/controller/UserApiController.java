package com.controller;

import com.cafein.login.UserService;
import com.dto.UserLoginRequestDto;
import com.dto.UserRegisterRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
    public ResponseEntity<?> androidLogin(@RequestBody UserLoginRequestDto dto) {
        userService.login(dto);
        return ResponseEntity.ok().body("login success!");
        //return ResponseEntity.ok().body(userService.login(dto));
    }
    @PostMapping(value="/android/register")
    public ResponseEntity<?> androidRegister(@RequestBody UserRegisterRequestDto dto) {
        userService.register(dto);
        System.out.println("runnnn");
        return ResponseEntity.ok().body("register success!");
    }
}