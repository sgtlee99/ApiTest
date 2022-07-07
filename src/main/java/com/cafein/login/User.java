package com.cafein.login;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity //DB의 테이블을 뜻함
@Getter //Lombok의 Getter를 이용해 Getter 메소드를 생성하고 @Builder 를 이용해서 객체를 생성할 수 있게 처리한다
@NoArgsConstructor //@Builder를 이용하기 위해 @AllArgsConstructor 와 @NoArgsConstructor 를 같이 처리해야 컴파일 에러가 발생하지 않음
@AllArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // PK값 null을 주면 AUTO_INCREMENT
    private Long user_num;

    @Column(nullable = false) //DB Column을 명시
    private String user_id;

    @Column(nullable = false)
    private String user_pw;

    @Column(nullable = false)
    private String user_nick;

    @Column(nullable = false)
    private boolean user_com; //사용자구분

    @Column(nullable = false)
    private String user_email;

    @Column(nullable = false)
    private String user_group;

    @Column(nullable = false)
    private byte[] user_pro_img;

    @Column(nullable = false)
    private int age;

    private String address;

    @Builder
    public User(String name, int age, String address) {
        this.name = name;
        this.age = age;
        this.address = address;
    }

    public void update(String address) {
        this.address = address;
    }
}