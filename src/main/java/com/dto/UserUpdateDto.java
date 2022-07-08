package com.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
public class UserUpdateDto {

    private String user_pw;
    private String user_nick;
    private String user_email;
    private int user_group;
    private byte[] user_pro_img;
    private int age;

}