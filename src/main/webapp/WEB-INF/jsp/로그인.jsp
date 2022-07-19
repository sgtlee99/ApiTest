<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
        $.ajaxSetup({
            dataType : "text",
            contentType: 'application/json; charset=utf-8',
			success:function(result){
				alert(result);
			},
			error: function (jqXHR) {
                alert("jqXHR status code:"+jqXHR.status+" message:"+jqXHR.responseText);
            }
		});//ajaxSetup
		function checkValue() {
			if(!document.userInfo.user_id.value) {
				alert("아이디를 입력하세요.");
				return false;
			}
			if(!document.userInfo.user_pw.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
		}
        $(document).ready(function(){
            $("#userInfo").submit(function(event) {
                if (checkValue() == false) {
                    alert('입력해');
                    return false;
                } else {
                    event.preventDefault();
                    const data = {
                        id: $('#user_id').val(),
                        pw: $('#user_pw').val(),
                    };
                    $.ajax({
                        type: "POST",
                        url: "/user/login",
                        data:JSON.stringify(data)
                    }).done(function(){ // done - success 와 동일
                        location.href='메인화면';
                    }).fail(function (error) {
                        //alert(JSON.stringify(error));
                        alert('아이디 비밀번호 불일치');
                    });
                }
            });
        });
	</script>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<h2 style="text-align: center; margin-top: 8%; font-family:BernhardFashion BT; font-weight: bold;;">Cafe_in</h2>
	
	<form name="userInfo" id="userInfo">
	
	<div class="container">
		<img src="resources/img/coffee.png" style="margin-top: 5%" alt="이미지">
		<div class="md-3">
			<label for="user_id" class="form-label"></label>
			<input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디">
		</div>
		<div class="mb-3">
			<label for="user_pw" class="form-label"></label>
			<input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호">
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