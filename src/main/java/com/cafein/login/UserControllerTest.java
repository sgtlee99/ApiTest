package com.cafein.login;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class UserControllerTest {

    @LocalServerPort
    int port;

    @Autowired
    TestRestTemplate restTemplate;

    @Autowired
    UserRepository userRepository;

    @Autowired
    UserService userService;

    @AfterEach
    public void afterEach() {
        userRepository.deleteAll();
    }

    @Test
    void create_test() {
        // given
        String name = "John Doe";
        int age = 27;
        String address = "Seoul";

        User user = User.builder()
                .name(name)
                .age(age)
                .address(address)
                .build();

        String url = "http://localhost:" + port + "/user";

        // when
        ResponseEntity<Long> responseEntity = restTemplate.postForEntity(url, user, Long.class);

        // then
        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);

        User savedUser = userService.findById(responseEntity.getBody());
        assertThat(savedUser.getName()).isEqualTo(name);
        assertThat(savedUser.getAge()).isEqualTo(age);
        assertThat(savedUser.getAddress()).isEqualTo(address);
    }

    @Test
    void read_test() {
        // given
        String name = "John Doe";
        int age = 27;
        String address = "Seoul";

        Long savedId = userRepository.save(User.builder()
                .name(name)
                .age(age)
                .address(address)
                .build()).getId();

        String url = "http://localhost:" + port + "/user/" + savedId;

        // when
        ResponseEntity<User> responseEntity = restTemplate.getForEntity(url, User.class);

        // then
        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);

        User readUser = responseEntity.getBody();
        assertThat(readUser.getName()).isEqualTo(name);
        assertThat(readUser.getAge()).isEqualTo(age);
        assertThat(readUser.getAddress()).isEqualTo(address);
    }

    @Test
    void update_test() {
        // given
        String name = "John Doe";
        int age = 27;
        String address = "Seoul";

        Long savedId = userRepository.save(User.builder()
                .name(name)
                .age(age)
                .address(address)
                .build()).getId();

        String url = "http://localhost:" + port + "/user/" + savedId + "/update";
        String address2 = "Busan";

        // when
        ResponseEntity<Long> responseEntity = restTemplate.postForEntity(url, address2, Long.class);

        // then
        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);

        User updatedUser = userService.findById(savedId);
        assertThat(updatedUser.getAddress()).isEqualTo(address2);
    }

    @Test
    void delete_test() {
        // given
        String name = "John Doe";
        int age = 27;
        String address = "Seoul";

        Long savedId = userRepository.save(User.builder()
                .name(name)
                .age(age)
                .address(address)
                .build()).getId();

        String url = "http://localhost:" + port + "/user/" + savedId + "/delete";

        // when
        ResponseEntity<Long> responseEntity = restTemplate.postForEntity(url, null, Long.class);

        // then
        assertThat(responseEntity.getStatusCode()).isEqualTo(HttpStatus.OK);

        assertThatThrownBy(() -> userService.findById(savedId)).isInstanceOf(IllegalArgumentException.class);
    }
}