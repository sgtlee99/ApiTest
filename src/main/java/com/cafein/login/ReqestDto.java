package com.cafein.login;

import lombok.*;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ReqestDto {
    private String title;
    private String content;
}
