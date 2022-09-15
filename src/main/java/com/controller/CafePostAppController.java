package com.controller;

import com.cafein.login.CafePostService;
import com.dto.CafePostListReadRequestDto;
import com.dto.CafePostReadRequestDto;
import com.dto.CafePostRegisterRequestDto;
import com.dto.CafePostUpdateDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class CafePostAppController {

    private final CafePostService cafePostService;

    @PostMapping("/android/cafePost") // 생성
    public ResponseEntity<?> create(@RequestBody CafePostRegisterRequestDto cafePostRegisterRequestDto) {
        cafePostService.register(cafePostRegisterRequestDto);
        return ResponseEntity.ok().body("create success!");
    }

    @PutMapping("/android/cafePost/update/{post_num}") //수정
    public ResponseEntity<?> update(@PathVariable Long post_num, @RequestBody CafePostUpdateDto cafePostUpdateDto) {
        cafePostService.update(post_num, cafePostUpdateDto);
        return ResponseEntity.ok().body("login success!");
    }

    @GetMapping("/android/cafePost/info") //조회 목록
    public List<CafePostListReadRequestDto> allPost() {
        return cafePostService.searchAll();
    }

    @GetMapping("/android/cafePost/info/{post_num}") // 조회 상세
    public CafePostReadRequestDto detailPost(@PathVariable Long post_num) {
        return cafePostService.searchById(post_num);
    }

    @DeleteMapping("/android/cafePost/{post_num}/delete") //삭제
    public Long delete(@PathVariable Long post_num) {
        cafePostService.delete(post_num);
        return post_num;
    }
    @GetMapping("/android/cafePost/infoTest")
    public List<CafePostListReadRequestDto> testPost() {
        return cafePostService.searchAll();
    }
}
