package com.cafein.board;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Data
@Entity
public class Board {
    @Id @GeneratedValue
    private Long seq;           //pk

    private String title;       //제목

    @Column(updatable = false)
    private String writer;      //작성자

    private String content;     //내용

    @Column(insertable = false, updatable = false, columnDefinition = "datetime default now()")
    private Date createDate;    //생성일자

    @Column(insertable = false, updatable = false, columnDefinition = "int not null default '0'")
    private Long cnt;           //조회수
}
