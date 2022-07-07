package com.cafein.login;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@RequiredArgsConstructor
@Service
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
}