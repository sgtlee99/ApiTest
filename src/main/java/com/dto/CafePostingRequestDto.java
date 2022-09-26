package com.dto;

import com.cafein.cafePost.CafePost;
import com.cafein.login.User;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CafePostingRequestDto {

    private String post_title;
    private String post_text;
    //private LocalDateTime post_date;

    private String post_tag;
    //private String id;
    private byte[] post_img;
    private User num;

    public CafePost toEntity() {
        return CafePost.builder()
                       //.id(this.id)
                       .post_text(this.post_text)
                       .post_title(this.post_title)
                       .post_tag(this.post_tag)
                       //.post_date(this.post_date)
                       .post_img(this.post_img)
                       .num(this.num)
                       .build();
    }
    // 바이트를 받고 비트맵으로 변환(웹앱에서) 로컬(서버)에서 파일(이미지넣)
    // 백엔드에서는 비트맵을 폴더에저장, 비트맵을 링크로바꿔서 DB에 저장

}