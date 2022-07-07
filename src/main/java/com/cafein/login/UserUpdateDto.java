package com.cafein.login;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
public class UserUpdateDto {

    private String user_id;
    private String user_pw;
    private String user_nick;
    private boolean user_com;
    private String user_email;
    private int user_group;
    private byte[] user_pro_img;
    private boolean user_sex;
    private int age;

}