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
			text-align: left;
			margin: 1% auto;
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
	<div class="container">
		<h4 style="margin: 2%; 2%;"> 당신은 ㅇㅇ친구입니다.</h4>	
		<div style="text-align: center;">
			<img src="resources/img/coffee.png" alt="이미지">
		</div>
		<div class="col-auto">
			<button type="submit" class="btn btn-primary" style="width: 99%; color: white; background-color: red; margin: 3% auto; border: none;" onclick="location.href='메인화면'">완료</button>
		</div>
	</div>
</body>
</html>