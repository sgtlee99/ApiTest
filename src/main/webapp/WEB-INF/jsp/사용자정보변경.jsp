<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<meta name="viewport" conent="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
		.container1 {
			display: inline-block;
			text-align: left;
		}
		.bar {
			background-color: #D9D9D9;
			position: fixed;
			top: 0px;
			bottom: 0px;
			right: 0px;
		}
		<!--가로 스크롤 바
		.wrap-vertical{
			width: 275px;
			padding: 20px;
			overflow: scroll;
			color: #112031;
			background: #F0D9FF;
			border: 1px solid #000;
			overflow: auto;
			white-space: nowrap;
		}
		.wrap-vertical::-webkit-scrollbar{
			display: none;
		}
		-->
		.btn-primary{background-color: #f9e2d1;}
        .btn-primary:hover {
		    background-color: #f9e2d1;
		}
        .btn-primary:focus {
		    background-color: white;
		}
	</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<h1 style="text-align: center; margin-top: 1%; font-family:BernhardFashion BT; font-weight: bold; font-size: 2.4rem;">Cafe_in</h1>
	<div class="container1" style="position: absolute; border-bottom: 1px solid black; left: 25%; top: 10%; background-color: #EAEAEA; border: 3px solid #A0A0A0; border-radius: 20px;">
		<img src="resources/img/coffee.png" style="float: left; margin: 5%; width: 90%;" alt="이미지">
	</div>
	<div class="bar" style="width: 5vw;">
		<a href="메인화면">
			<img src="https://user-images.githubusercontent.com/102495801/167056604-ed2c2e9c-426d-455b-84f9-54bb4f82a0c2.png" alt="main_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
		</a>
		<a href="카페글쓰기">
			<img src="https://user-images.githubusercontent.com/102495801/167056127-afdaad04-d13b-4a33-a4c0-9c2d8904ead8.png" alt="write_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
		</a>
		<a href="사용자마이페이지">
			<img src="https://user-images.githubusercontent.com/102495801/167056576-0a2c3920-d8f8-47b2-bdcb-dd4d2a9cd205.png" alt="mypage_img" style="margin-top: 30%; width: 2vw; margin-left: 30%;">
		</a>
	</div>
	<div class="container1" style="position: absolute; left: 35%; top: 10%; padding: 1%; width: 33vw; height: ; border: 3px solid #A0A0A0; border-radius: 20px; background-color: #FDF2E9;">
		<div style="border-bottom: 2px solid black; height: 6vh; text-align: center;">
			<h2>나의 정보변경</h2>
		</div>
		<div class="container1" style="margin-top: 3%; width: 30.7vw;">
			<img src="https://user-images.githubusercontent.com/102495801/167056576-0a2c3920-d8f8-47b2-bdcb-dd4d2a9cd205.png" alt="■" style="float: left; width: 2vw;">
			<h5 style="margin-left: 1.5%; border-bottom: 1px solid black; float: left;">내 정보</h5>
		</div>
		<div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <h5 style="display: inline-block; width:12vw;">변경할 비밀번호</h5>
			<input type="password" class="form-control" id="" name="" style="width: 15vw; display: inline-block;">
		</div>
		<div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <h5 style="display: inline-block; width:12vw;">비밀번호 확인</h5>
			<input type="password" class="form-control" id="" name="" style="width: 15vw; display: inline-block;">
		</div>
        <div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <h5 style="display: inline-block; width:12vw;">닉네임 변경</h5>
			<input type="text" class="form-control" id="" name="" style="width: 15vw; display: inline-block;">
		</div>
        <div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <h5 style="display: inline-block; width:12vw;">이메일 변경</h5>
			<input type="email" class="form-control" id="" name="" style="width: 15vw; display: inline-block;">
		</div>
        <div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <h5 style="display: inline-block; width:12vw;">나이 설정</h5>
			<input type="text" class="form-control" id="" name="" style="width: 15vw; display: inline-block;">
		</div>
        <div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <h5 style="display: inline-block; width:12vw;">성별 변경</h5>

            <input class="form-check-input" type="checkbox" value="MALE" id="user_sex" name="user_sex" onclick="doOpenCheck2(this);">
			<label class="form-check-label" for="user_sex">
		        남자
			</label>
            <input class="form-check-input" type="checkbox" value="FEMALE id="user_sex" name="user_sex" onclick="doOpenCheck2(this);">
			<label class="form-check-label" for="user_sex">
				여자
			</label>
		</div>
        <div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <h5 style="display: inline-block; width:12vw;">프로필사진 변경</h5>
			<input type="text" class="form-control" id="" name="" style="width: 15vw; display: inline-block;">
		</div>
        <div class="container1" style="margin-top: 3%; width: 30.7vw;">
		    <button type="submit" class="btn btn-primary shadow-none" style="padding: 0.5%; float:right; border-color: #d29e79; color: #d29e79; width:6vw; height:2vw">
        	    변경 완료
            </button>
		</div>
	</div>
</body>
</html>