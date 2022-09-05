package com.cafein.login;

import com.dto.UserUpdateDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity //DB의 테이블을 뜻함
@Getter //Lombok의 Getter를 이용해 Getter 메소드를 생성하고 @Builder 를 이용해서 객체를 생성할 수 있게 처리한다
@NoArgsConstructor //@Builder를 이용하기 위해 @AllArgsConstructor 와 @NoArgsConstructor 를 같이 처리해야 컴파일 에러가 발생하지 않음
@AllArgsConstructor
@Builder
public class CafePost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // PK값 null을 주면 AUTO_INCREMENT
    private Long postnum;

    @Column(nullable = false) //DB Column을 명시
    private Long num;

    @Column(nullable = false) //DB Column을 명시
    private String posttext;

    @Column(nullable = false) //DB Column을 명시
    private String posttitle;

    private LocalDateTime revpostdate;

    @Column(nullable = false) //DB Column을 명시
    private String id; //세션에서 아이디를 들고오면 되지 않을까?

    @Column(columnDefinition = "longblob default 'EMPTY'")
    private byte[] proImg;

    @ManyToOne
    @JoinColumn(name = "user_num")
    private User user;


}