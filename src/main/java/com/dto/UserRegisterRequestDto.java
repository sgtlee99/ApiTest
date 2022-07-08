package com.dto;


import com.cafein.login.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class UserRegisterRequestDto {

    private String user_id;
    private String user_pw;

    private String user_nick;

    private boolean user_com; //사용자구분(일반사용자/사업자)

    private String user_email;

    private Integer user_group;

    private byte[] user_pro_img;

    private boolean user_sex;

    private Integer age;

    public User toEntity() {
        return User.builder()
                   .user_id(this.user_id)
                   .user_pw(this.user_pw)
                   .user_nick(this.user_nick)
                   .user_com(this.user_com)
                   .user_email(this.user_email)
                   .user_group(this.user_group)
                   .user_pro_img(this.user_pro_img)
                   .user_sex(this.user_sex)
                   .age(this.age)
                   .build();
    }
}
