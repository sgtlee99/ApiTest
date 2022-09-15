package com.controller;

import com.cafein.cafePost.CafePostService;
import com.dto.*;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class CafePostController {

    private final CafePostService cafePostService;

    @PostMapping("/cafePost") // 생성
    public Long create(@RequestBody CafePostRegisterRequestDto cafePostRegisterRequestDto) {
        return cafePostService.register(cafePostRegisterRequestDto);
    }

    @PutMapping("/cafePost/update/{post_num}") //수정
    public Long update(@PathVariable Long post_num, @RequestBody CafePostUpdateDto cafePostUpdateDto) {
        return cafePostService.update(post_num, cafePostUpdateDto);
    }

    @GetMapping("/cafePost/info") //조회 목록
    public List<CafePostListReadRequestDto> allPost() {
        return cafePostService.searchAll();
    }

    @GetMapping("/cafePost/info/{post_num}") // 조회 상세
    public CafePostReadRequestDto detailPost(@PathVariable Long post_num) {
        return cafePostService.searchById(post_num);
    }

    @DeleteMapping("/cafePost/{post_num}/delete") //삭제
    public Long delete(@PathVariable Long post_num) {
        cafePostService.delete(post_num);
        return post_num;
    }
}
