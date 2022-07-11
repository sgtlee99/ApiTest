package com.dto;

import com.cafein.login.Sex;
import lombok.*;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserUpdateDto {

    private String user_pw;
    private String user_nick;
    private String user_email;
    private int user_group;
    private byte[] user_pro_img;
    private int age;
    private Sex sex;

}