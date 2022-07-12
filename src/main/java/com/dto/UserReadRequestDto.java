package com.dto;

import com.cafein.login.Sex;
import com.cafein.login.Com;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserReadRequestDto {

    private String id;
    private String pw;
    private String nick;
    private Com com;
    private String email;
    private Integer groups;
    private byte[] proImg;
    private int age;
    private Sex sex;

}