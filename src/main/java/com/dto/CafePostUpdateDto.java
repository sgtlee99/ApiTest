package com.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CafePostUpdateDto {

    private String post_text;
    private String post_title;
    private LocalDateTime post_date;
    private byte[] post_img;

}