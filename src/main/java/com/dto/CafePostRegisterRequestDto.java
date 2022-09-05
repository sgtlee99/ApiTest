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
public class CafePostRegisterRequestDto {

    private String post_text;
    private String post_title;
    private LocalDateTime post_date;
    private String id;
    private byte[] post_img;
    private long num;

    public CafePost toEntity() {
        return CafePost.builder()
                       .id(this.id)
                       .post_text(this.post_text)
                       .post_title(this.post_title)
                       .post_date(this.post_date)
                       .post_img(this.post_img)
                       .num(this.num)
                       .build();
    }

}