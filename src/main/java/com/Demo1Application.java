package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import java.time.LocalDateTime;

@SpringBootApplication
public class Demo1Application {
	public static void main(String[] args) {
		System.out.println(LocalDateTime.now());
		System.out.println();

		SpringApplication.run(Demo1Application.class, args);
	}
//
}
