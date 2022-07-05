package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Demo1Application extends SpringBootServletInitializer{
	//ㅗㅂa
	//asdfasdfasdfasdf
	//ㅏㅘㅓㅗㅓㅏㅘㅓㅘ

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {

		String asdf = "abc";
		String asdf2 = " ";
		String asdf3 = " ";
		String asdf4 = " ";
		return application.sources(Demo1Application.class);


	}
//gvvgvgvjvjv
	public static void main(String[] args) {
		SpringApplication.run(Demo1Application.class, args);
	}

}
