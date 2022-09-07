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

    @PostMapping("/app/cafePost") // 생성
    public ResponseEntity<?> create(@RequestBody CafePostRegisterRequestDto cafePostRegisterRequestDto) {
        cafePostService.register(cafePostRegisterRequestDto);
        return ResponseEntity.ok().body("create success!");
    }

    @PutMapping("/app/cafePost/update/{post_num}") //수정
    public ResponseEntity<?> update(@PathVariable Long post_num, @RequestBody CafePostUpdateDto cafePostUpdateDto) {
        cafePostService.update(post_num, cafePostUpdateDto);
        return ResponseEntity.ok().body("login success!");
    }

    @GetMapping("/app/cafePost/info") //조회 목록
    public List<CafePostListReadRequestDto> allPost() {
        return cafePostService.searchAll();
    }

    @GetMapping("/app/cafePost/info/{post_num}") // 조회 상세
    public CafePostReadRequestDto detailPost(@PathVariable Long post_num) {
        return cafePostService.searchById(post_num);
    }

    @DeleteMapping("/app/cafePost/{post_num}/delete") //삭제
    public Long delete(@PathVariable Long post_num) {
        cafePostService.delete(post_num);
        return post_num;
    }
}
