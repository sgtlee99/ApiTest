package com.cafein.login;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RequiredArgsConstructor
@Service
@Transactional
public class CafePostService {

    private final CafePostRepository cafePostRepository;
    public void delete(Long post_num) { //삭제
        CafePost cafePost = findById(post_num);
        cafePostRepository.delete(cafePost);
    }

    private CafePost findById(Long post_num) {
        return cafePostRepository.findById(post_num).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 유저입니다."));
    }
}