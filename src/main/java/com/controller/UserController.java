package com.controller;

import com.cafein.login.User;
import com.cafein.login.UserService;
import com.dto.UserLoginRequestDto;
import com.dto.UserReadRequestDto;
import com.dto.UserRegisterRequestDto;
import com.dto.UserUpdateDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class UserController {

    private final UserService userService;

    @PostMapping("/user") // 생성
    public Long create(@RequestBody UserRegisterRequestDto userRegisterRequestDto) {
        //System.out.println("user" + user.getName());
        //System.out.println("user" + user.getId());
        //System.out.println("user" + user.getAddress());
        return userService.register(userRegisterRequestDto);
    }

    @GetMapping("/user/{user_num}") // 조회
    public User read(@PathVariable Long user_num) {
        return userService.findById(user_num);
    }

    /*@GetMapping("/user/{user_num}") // 조회
    public Long read(@PathVariable Long user_num, @RequestBody UserReadRequestDto userReadRequestDto) {
        return userService.read(user_num, userReadRequestDto);
    }*/

    @PutMapping("/user/{user_num}/update") //수정
    public Long update(@PathVariable Long user_num, @RequestBody UserUpdateDto updateDto) {
        System.out.println("update api");
        return userService.update(user_num, updateDto);
    }

    @DeleteMapping("/user/{user_num}/delete") //삭제
    public Long delete(@PathVariable Long user_num) {
        userService.delete(user_num);
        return user_num;
    }

    @PostMapping("/user/login") //로그인
    public ResponseEntity<?> webLogin(@RequestBody UserLoginRequestDto dto) {
        userService.login(dto);
        return ResponseEntity.ok().body("success!");
        //return ResponseEntity.ok().body(userService.login(dto));
    }

}