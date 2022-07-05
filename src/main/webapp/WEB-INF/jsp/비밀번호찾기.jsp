<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
    <script type="text/javascript">
        (function() {
            emailjs.init('uw3gM16Mu-RHxVo3B');
        })();
    </script>
    <script type="text/javascript">
        window.onload = function() {
            document.getElementById('contact-form').addEventListener('submit', function(event) {
                event.preventDefault();
                this.contact_number.value = Math.random() * 100000 | 0;
                emailjs.sendForm('service_cool4739', 'template_vmztnqn', this)
                    .then(function() {
                        console.log('SUCCESS!');
                        alert("이메일 발송!");
                    }, function(error) {
                        console.log('FAILED...', error);
                    });
            });
        }
        function checkValue() {
    		if(!document.find.user_id.value) {
    			alert("아이디를 입력하세요.");
    			return false;
    		}
    		if(!document.find.user_email.value) {
    			alert("이메일을 입력하세요.");
    			return false;
    		}
    	}

    </script>
	<style>
		.container {
			width: 25vw;
			text-align: left;
			border: 5px solid gray;
			border-radius: 20px;
		}
		.s1 {
			width: 95%;
			margin: 10px auto;
		}
	</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<h2 style="text-align: center; margin-top: 8%; font-family:BernhardFashion BT; font-weight: bold;;">Cafe_in</h2>
	<div class="container" style="position: absolute; top: 25%; left: 37%;">
		<h2 style="margin-top: 2%;">비밀번호 찾기</h2>
		<div style=" "><!--이메일전송-->
			<form method="post" id="contact-form" name="find" onsubmit="return checkValue();">
				<input type="hidden" name="contact_number"><!--이메일전송에 반드시 필요함-->
				<input type="text" name="id" id="user_id" placeholder="아이디" style="width: 10vw; margin-bottom: 2%;">
				<input type="email" name="email" id="user_email" placeholder="이메일" style="width: 10vw; margin-bottom: 2%;">
				<div style="width: 5vw;"></div>
				<input class="eNum" type="hidden" name="email_num" id="1" value="">
				<input class="generate" type="submit" value='인증번호발송' style="margin-bottom: 2%;">
			</form>
		</div>
		<div style=""><!--인증번호입력-->
			<form id="confirm">
				<input type="text" name="form_user" id="2" placeholder="인증번호" style="width: 15vw; margin-bottom: 2%;">
				<div style="width: 5vw;"></div>
				<input type="button" value='인증번호확인' style="margin-bottom: 2%;" onclick="checkNum()">
			</form>
		</div>
		<div class="col-auto">
			<button type="submit" class="btn btn-primary" style="width: 99%; height: 4vh; color: white; background-color: red; margin: 4% auto; border: none;" onclick="location.href='로그인'">다음</button>
			<button type="submit" class="btn btn-primary" style="width: 99%; height: 4vh; color: white; background-color: red; margin-bottom: 4%; border: none;" onclick="location.href='회원가입'">가입하기</button>
		</div>
		<div class="s1">
			<a href="비밀번호찾기" style="margin: 10%;">비밀번호 찾기</a>
			<a href="로그인" style="margin: 10%;">로그인</a>
		</div>
		<script>
			const form1 = document.querySelector('form[id="contact-form"]');
			const email = form1.querySelector('input[class="eNum"]');
            const button1 = form1.querySelector(".generate");

            function generator(){
				let str = ''
				for (let i = 0; i < 6; i++) {
					str += Math.floor(Math.random() * 10);
				}
                //Math.random 0~1 사이의 난수 생성
                //Math.floor 소수점을 내림시켜 정수로 만듦
                email.value = str;
                //if (document.getElementById("1").value 값이 db에 있다면) {		db연동되어있을시에 시도해보기
				//	email.value = str;
				//} else {
				//	없는 아이디입니다.
				//}
            }

            button1.addEventListener("click", generator);
			
            function submitPost(url, parameter) {
            	method = "post";
            	var form = document.createElement("form");
            	form.setAttribute("method", method);
            	form.setAttribute("action", url);
            	for (var key in params) {
            		var hiddenField = document.createElement("input");
            		hiddenField.setAttribute("type", "text");
            		hiddenField.setAttribute("name", key);
            		hiddenField.setAttribute("value", params[key]);
            		form.appendChild(hiddenField);
            	}
            	document.body.appendChild(form);
            	form.submit();
            }
            
			function checkNum(){
				if(document.getElementById("1").value == '') {
					alert('인증번호를 먼저 받으세요.');
				} else if (document.getElementById("1").value == document.getElementById("2").value) {
					const user_email = form1.querySelector('input[type="email"]').value;
					const user_id = form1.querySelector('input[type="text"]').value;
					
					//submitPost('/findpw', {'id':'user_id', 'email':'user_email'});
					
					location.href="findpw?user_id=" + user_id + "&user_email=" + user_email;
				} else {
					alert('인증번호가 틀립니다.');
				}
			}

        </script>
	</div>
</body>
</html>