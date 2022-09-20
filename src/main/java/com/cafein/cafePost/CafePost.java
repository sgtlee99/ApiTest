package com.cafein.cafePost;

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

    @Column(nullable = false) //DB Column을 명시
    private String id; //세션에서 아이디를 들고오면 되지 않을까?

    @Column(columnDefinition = "longblob default 'EMPTY'")
    private byte[] post_img;

    @ManyToOne //user과 cafepost는 일대다
    @JoinColumn(name = "num") // 외래키
    private String num;

    private String post_tag;

    public void update(CafePostUpdateDto updateDto) {
        this.post_text = updateDto.getPost_text();
        this.post_title = updateDto.getPost_title();
        this.post_img = updateDto.getPost_img();
    }
    public void saveNum(String num) {
        this.num = num; // object -> long
    }
}