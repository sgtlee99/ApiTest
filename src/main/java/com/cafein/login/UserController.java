package com.cafein.login;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class UserController {

    private final UserService userService;

    @PostMapping("/user") // 생성
    public Long create(@RequestBody User user) {
        return userService.save(user);
    }

    @GetMapping("/user/{id}") // 조회
    public User read(@PathVariable Long id) {
        return userService.findById(id);
    }

    @PutMapping("/user/{id}/update") //수정
    public Long update(@PathVariable Long id, @RequestBody String address) {
        return userService.update(id, address);
    }

    @DeleteMapping("/user/{id}/delete") //삭제
    public Long delete(@PathVariable Long id) {
        userService.delete(id);
        return id;
    }

}