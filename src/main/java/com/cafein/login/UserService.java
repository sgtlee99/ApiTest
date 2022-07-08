package com.cafein.login;

import com.dto.UserLoginRequestDto;
import com.dto.UserRegisterRequestDto;
import com.dto.UserUpdateDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@RequiredArgsConstructor
@Service
@Transactional
public class UserService {

    private final UserRepository userRepository;

    public User findById(Long user_num) {
        return userRepository.findById(user_num).orElseThrow(() -> new IllegalArgumentException("존재하지 않는 유저입니다."));
    }

    @Transactional
    public Long save(User user) {
        return userRepository.save(user).getUser_num();
    }

    @Transactional
    public Long update(Long user_num, UserUpdateDto updateDto) {
        User user = findById(user_num);
        user.update(updateDto);
        return user_num;
    }

    @Transactional
    public void delete(Long user_num) {
        User user = findById(user_num);
        userRepository.delete(user);
    }

    public Long login(UserLoginRequestDto requestDto) {

        User user = userRepository.findByUserId(requestDto.getId())
                .orElseThrow(() -> new IllegalCallerException("테이블에 유저가 없습니다"));
        if (user.getUser_pw().equals(requestDto.getPassword())) {
            return user.getUser_num();
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
        return save.getUser_num();
    }
}