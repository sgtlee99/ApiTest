package com.cafein.login;

import com.dto.UserLoginRequestDto;
import com.dto.UserRegisterRequestDto;
import com.dto.UserUpdateDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@RequiredArgsConstructor
@Service
@Transactional
public class UserService {

    private final UserRepository userRepository;
    private final HttpSession httpSession;

    public User findById(Long num) {
        return userRepository.findById(num).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 유저입니다."));
    }

    @Transactional
    public Long save(User user) { //저장
        return userRepository.save(user).getNum();
    }

    @Transactional
    public Long update(Long num, UserUpdateDto updateDto) { //수정
        User user = userRepository.findById(num)
                                .orElseThrow(() -> new IllegalCallerException("없음"));
        user.update(updateDto);
        return num;
    }

    /*@Transactional
    public Long read(Long user_num, UserReadRequestDto userReadRequestDto) { //읽기
        User user = userRepository.findById(user_num)
                                  .orElseThrow(() -> new IllegalCallerException("없음"));
        return user_num;
    }*/

    @Transactional
    public void delete(Long num) { //삭제
        User user = findById(num);
        userRepository.delete(user);
    }

    public Long login(UserLoginRequestDto requestDto, HttpServletResponse response) {

        User user = userRepository.findByUserId(requestDto.getId())
                .orElseThrow(() -> new IllegalCallerException("테이블에 유저가 없습니다"));
        if (user.getPw().equals(requestDto.getPw())) {
            httpSession.setAttribute("user",user);
            return user.getNum();
        } else {                                            
            System.out.println(requestDto.getId());
            System.out.println(requestDto.getPw());
            throw new IllegalCallerException("패스워드불일치");
        }
    }
    public Long androidLogin(UserLoginRequestDto requestDto) {

        User user = userRepository.findByUserId(requestDto.getId())
                                  .orElseThrow(() -> new IllegalCallerException("테이블에 유저가 없습니다"));
        if (user.getPw().equals(requestDto.getPw())) {
            return user.getNum();
        } else {
            throw new IllegalCallerException("패스워드불일치");
        }
    }

  /*  public void login2(UserSaveRequestDto requestDto) { // void

        User user = userRepository.findByUserId(requestDto.getId())
                .orElseThrow(() -> new IllegalCallerException("테이블에 유저가 없습니다"));
        if (!user.getUser_pw().equals(requestDto.getPassword())) {
            throw new IllegalCallerException("패스워드불일치");
        } else {

        }
    }*/

    public Long register(UserRegisterRequestDto requestDto) {
        User user = requestDto.toEntity();
        User save = userRepository.save(user);
        return save.getNum();
    }
}