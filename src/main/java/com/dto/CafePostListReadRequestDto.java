package com.dto;

import com.cafein.login.CafePost;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CafePostListReadRequestDto {

    private String post_title;
    private LocalDateTime post_date;
    private String id;
    private byte[] post_img;
    private long num; //필요한가?

    public CafePostListReadRequestDto(CafePost entity) {
        this.post_title = entity.getPost_title();
        this.post_date = entity.getPost_date();
        this.id = entity.getId();
        this.post_img = entity.getPost_img();
        this.num = entity.getNum();
    }
}