package com.restapi.test;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class restController {

	@GetMapping("/welcome")
	public String init() { // 초기 로드 시 info.jsp페이지 로드
		return "welcome";
	}

	@GetMapping("/myName")
	@ResponseBody
	public ResponseEntity<Object> myName() { // 이름 데이터를 전달
		return new ResponseEntity<Object>("J4J", HttpStatus.OK); // 데이터와 상태코드 리턴
	}

	@GetMapping("/myInfo")
	@ResponseBody
	public ResponseEntity<Object> myInfo() { // 정보 데이터를 전달
		Info myInfo = new Info();
		myInfo.setName("J4J");
		myInfo.setPhone("010-2021-0226");
		myInfo.setAge(20);

		return new ResponseEntity<Object>(myInfo, HttpStatus.OK); // 데이터와 상태코드 리턴
	}

	@GetMapping("/compareInfo")
	@ResponseBody
	public ResponseEntity<Object> compareInfo(Info info) { // 전달받은 데이터와 값이 동일한지 판단 후 true, false 전달
		if(info.getName().equals("J4J") && info.getPhone().equals("010-2021-0226") && info.getAge() == 20) {
			return new ResponseEntity<Object>("true", HttpStatus.OK); // 데이터와 상태코드 리턴
		} else {
			return new ResponseEntity<Object>("false", HttpStatus.OK); // 데이터와 상태코드 리턴
		}
	}
}

