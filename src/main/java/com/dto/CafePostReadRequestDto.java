package com.dto;

import com.cafein.login.Com;
import com.cafein.login.Sex;
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

    private String post_text;
    private String post_title;
    private LocalDateTime post_date;
    private String id;
    private byte[] post_img;
    private int num;

}