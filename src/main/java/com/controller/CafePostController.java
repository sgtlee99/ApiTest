package com.controller;

import com.cafein.login.CafePostRepository;
import com.cafein.login.CafePostService;
import com.cafein.login.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class CafePostController {

    private final CafePostService cafePostService;

    @DeleteMapping("/user/{num}/delete") //삭제
    public Long delete(@PathVariable Long post_num) {
        cafePostService.delete(post_num);
        return post_num;
    }
}
