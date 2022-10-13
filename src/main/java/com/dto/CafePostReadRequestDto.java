package com.dto;

import com.cafein.cafePost.CafePost;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CafePostReadRequestDto {

    private String post_title;
    private String post_text;
    //private LocalDateTime post_date; // test할때 date를 tag로
    //private String id;
    private byte[] post_img;
    private Long post_num;
    //private long num; //필요한가? //test할때 지우고..

    public CafePostReadRequestDto(CafePost entity) {
        //this.id = entity.getId();
        this.post_title = entity.getPost_title();
        this.post_text = entity.getPost_text();
        //this.post_date = entity.getPost_date();
        this.post_img = entity.getPost_img();
        this.post_num = entity.getPost_num();
        //this.num = entity.getNum();
    }
}