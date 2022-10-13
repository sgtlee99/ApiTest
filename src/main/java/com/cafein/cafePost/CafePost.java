package com.cafein.cafePost;

import com.cafein.login.User;
import com.dto.CafePostUpdateDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity //DB의 테이블을 뜻함
@Getter //Lombok의 Getter를 이용해 Getter 메소드를 생성하고 @Builder 를 이용해서 객체를 생성할 수 있게 처리한다
@NoArgsConstructor //@Builder를 이용하기 위해 @AllArgsConstructor 와 @NoArgsConstructor 를 같이 처리해야 컴파일 에러가 발생하지 않음
@AllArgsConstructor
@Builder
public class CafePost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // PK값 null을 주면 AUTO_INCREMENT
    private Long post_num;

    @Column(nullable = false) //DB Column을 명시
    private String post_text;

    @Column(nullable = false) //DB Column을 명시
    private String post_title;

    private LocalDateTime post_date;

    @Column //DB Column을 명시
    private String id; //세션에서 아이디를 들고오면 되지 않을까?

    @Column(columnDefinition = "longblob default 'EMPTY'")
    private byte[] post_img;

    @ManyToOne //user과 cafepost는 일대다
    @JoinColumn(name = "num") // 외래키
    private User num;

    private String post_tag;

    public void update(CafePostUpdateDto updateDto) {
        this.post_text = updateDto.getPost_text();
        this.post_title = updateDto.getPost_title();
        this.post_img = updateDto.getPost_img();
    }
    public void saveNum(Long num) {
        //Object obj = String.valueOf(num); //long->obj
        //User user = (User)obj; // object -> long
        //this.num = user;
        //System.out.println(num + " : " + this.num + " : " + user);
    }
    public void saveId(String id) {
        this.id = id;
    }
    /* @@@ byte -> string
     byte[] byteArray = {0x48, 0x65, (byte)0x6C, (byte)0x6C, (byte)0x6f, 0x20, 0x57, (byte)0x6f, 0x72, (byte)0x6c, 0x64};
     String data = new String(byteArray); //변환
     System.out.println(data);

     @@@ string -> byte
     String data = "Hello World";
     System.out.println(data.getBytes()); //byte array 출력
     System.out.println(byteArrayToHexaString(data.getBytes())); //byte array를 16진수 문자열로 출력
     */
}