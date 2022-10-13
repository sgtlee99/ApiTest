package com.cafein.cafePost;

import com.cafein.login.User;
import com.cafein.login.UserService;
import com.dto.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
@Transactional
public class CafePostService {

    private final CafePostRepository cafePostRepository;

    public Long posting(String id, Long num, CafePostingRequestDto cafePostingRequestDto) { //카페글 등록
        CafePost cafePost = cafePostingRequestDto.toEntity();
        CafePost cafeSave = cafePostRepository.save(cafePost);
        cafeSave.saveNum(num); // Long -> User ?
        cafeSave.saveId(id);
        return cafeSave.getPost_num();
    }
    public void delete(Long post_num) { //삭제
        CafePost cafePost = findById(post_num);
        cafePostRepository.delete(cafePost);
    }

    public CafePost findById(Long post_num) {
        return cafePostRepository.findById(post_num).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 유저입니다."));
    }

    @Transactional
    public Long update(Long post_num, CafePostUpdateDto cafePostUpdateDto) { //수정
        CafePost cafePost = cafePostRepository.findById(post_num)
                                     .orElseThrow(() -> new IllegalArgumentException("해당 게시글이 존재하지 않습니다."));
        cafePost.update(cafePostUpdateDto);
        return post_num;
    }

    @Transactional(readOnly = true) // 트랜잭션 범위는 유지하되 기능을 조회로 제한함으로써 조회 속도가 개선된다.
    public CafePostReadRequestDto searchById(Long post_num) {
        CafePost cafePost = cafePostRepository.findById(post_num).orElseThrow(()
                -> new IllegalArgumentException("해당 게시물이 존재하지 않습니다."));

        return new CafePostReadRequestDto(cafePost);
    }

    @Transactional(readOnly = true)
    public List<CafePostListReadRequestDto> searchAll() {
        return cafePostRepository.findAll().stream() //boardRepository 결과로 넘어온 Board의 Stream을
                              .map(CafePostListReadRequestDto::new) //map을 통해 BoardListResponseDto로 변환하여
                              .collect(Collectors.toList()); //List로 반환
    }
    //findAllDesc가 인식이 안되는데 만들어야하나? 일단은 오름차순으로..
}