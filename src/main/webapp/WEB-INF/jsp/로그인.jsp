<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
		.container {
			float: center;
			width: 25vw;
			height: 48vh;
			text-align: center;
			margin: 1% auto;
			border: 5px solid gray;
			border-radius: 20px;
		}
		.s1 {
			width: 95%;
			margin: 10px auto;
		}
		a {
			text-decoration: none;
		}
	</style>
	<script>
		function chechValue() {
			if(!document.userInfo.user_id.value) {
				alert("아이디를 입력하세요.");
				return false;
			}
			if(!document.userInfo.user_pw.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
		}
	</script>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<h2 style="text-align: center; margin-top: 8%; font-family:BernhardFashion BT; font-weight: bold;;">Cafe_in</h2>
	
	<form method="post" action="loginPro" name="userInfo">
	
	<div class="container">
		<img src="resources/img/coffee.png" style="margin-top: 5%" alt="이미지">
		<div class="md-3">
			<label for="exampleFormControlInput1" class="form-label"></label>
			<input type="text" class="form-control" id="exampleFormControlInput1" name="user_id" placeholder="아이디">
		</div>
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="form-label"></label>
			<input type="password" class="form-control" id="exampleFormControlInput1" name="user_pw" placeholder="비밀번호">
		</div>
		<div class="col-auto">
			<button type="submit" class="btn btn-primary" style="width: 99%; color: white; background-color: red; border: none;">
			로그인
			</button>
		</div>
		<div class="s1">
			<a href="아이디찾기" style="margin: 2%;">아이디 찾기</a>
			<a href="비밀번호찾기" style="margin: 2%;">비밀번호 찾기</a>
			<a href="회원가입" style="margin: 2%;">회원가입</a>
		</div>
	</div>
	
	</form>
	
</body>
</html>