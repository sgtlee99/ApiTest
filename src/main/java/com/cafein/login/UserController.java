package com.cafein.login;

import com.dto.UserUpdateDto;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class UserController {

    private final UserService userService;

    @PostMapping("/user") // 생성
    public Long create(@RequestBody User user) {
        //System.out.println("user" + user.getName());
        //System.out.println("user" + user.getId());
        //System.out.println("user" + user.getAddress());
        return userService.save(user);
    }

    @GetMapping("/user/{user_num}") // 조회
    public User read(@PathVariable Long user_num) {
        return userService.findById(user_num);
    }

    @PutMapping("/user/{user_num}/update") //수정
    public Long update(@PathVariable Long user_num, @RequestBody UserUpdateDto updateDto) {
        return userService.update(user_num, updateDto);
    }

    @DeleteMapping("/user/{user_num}/delete") //삭제
    public Long delete(@PathVariable Long user_num) {
        userService.delete(user_num);
        return user_num;
    }

}