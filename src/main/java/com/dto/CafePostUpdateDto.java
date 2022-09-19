package com.dto;

import com.cafein.login.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@Builder
@NoArgsConstructor
public class CafePostUpdateDto {

    private String post_text;
    private String post_title;
    private byte[] post_img;


    @Builder
    public CafePostUpdateDto(String post_title, String post_text, byte[] post_img) {
        this.post_text = post_text;
        this.post_title = post_title;
        this.post_img = post_img;
    }

}