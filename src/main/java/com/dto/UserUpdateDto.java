package com.dto;

import com.cafein.login.Sex;
import lombok.*;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserUpdateDto {

    private String pw;
    private String nick;
    private String email;
    private Integer groups;
    //private byte[] proImg;
    private int age;
    private Sex sex;

}