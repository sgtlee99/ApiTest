package com.dto;


import com.cafein.login.Sex;
import com.cafein.login.User;
import com.cafein.login.Com;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class UserRegisterRequestDto {

    private String id;
    private String pw;
    private String nick;
    private Com com; //사용자구분(일반사용자/사업자)
    private String email;
    private Integer groups;
    private Sex sex;
    private Integer age;

    public User toEntity() {
        return User.builder()
                   .id(this.id)
                   .pw(this.pw)
                   .nick(this.nick)
                   .com(this.com)
                   .email(this.email)
                   .groups(this.groups)
                   .sex(this.sex)
                   .age(this.age)
                   .build();
    }
}
