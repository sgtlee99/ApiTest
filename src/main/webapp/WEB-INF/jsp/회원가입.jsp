<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
        $.ajaxSetup({
            dataType : "json",
            contentType: 'application/json; charset=utf-8',
			success:function(result){
				alert(result);
			},
			error: function (jqXHR) {
                alert("jqXHR status code:"+jqXHR.status+" message:"+jqXHR.responseText);
            }
		});//ajaxSetup
	    function doOpenCheck1(chk){
		    var obj = document.getElementsByName("user_com");
		    for(var i=0; i<obj.length; i++){
			    if(obj[i] != chk){
				    obj[i].checked = false;
			    }
		    }
	    }
	    function doOpenCheck2(chk){
		    var obj = document.getElementsByName("user_sex");
		    for(var i=0; i<obj.length; i++){
			    if(obj[i] != chk){
				    obj[i].checked = false;
			    }
		    }
	    }
	    function checkValue() {
		    if(!document.userInfo.user_id.value) {
			    alert("아이디를 입력하세요.");
			    return false;
		    }
		    if(!document.userInfo.user_pw.value) {
			    alert("비밀번호를 입력하세요.");
			    return false;
		    }
		    if(!document.userInfo.user_nick.value) {
			    alert("닉네임을 입력하세요.");
			    return false;
		    }
		    if(!document.userInfo.user_email.value) {
			    alert("이메일을 입력하세요.");
			    return false;
		    }
		    if(document.userInfo.user_pw.value != document.userInfo.user_pwcheck.value) {
			    alert("비밀번호를 동일하게 입력하세요.");
			    return false;
		    }
		    var check1 = document.querySelectorAll('input[name="user_com"]:checked').length;
		    if (check1 == 0) {
			    alert("사용자를 입력하세요.");
			    return false;
		    }
		    var check2 = document.querySelectorAll('input[name="user_sex"]:checked').length;
		    if (check2 == 0) {
			    alert("성별을 입력하세요.");
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
                         nick: $('#user_nick').val(),
                         email: $('#user_email').val(),
                         com: $('#user_com').val(),
                         sex: $('#user_sex').val(),
                     };
                     $.ajax({
                         type: "POST",
                         url: "/user",
                         data:JSON.stringify(data)
                     }).done(function(){ // done - success 와 동일
                         alert('성공');
                         location.href='설문조사';
                     }).fail(function (error) {
                         alert(JSON.stringify(error));
                     });
                }
            });
        });
	</script>
	<style>
		.container {
			float: center;
			width: 30vw;
			text-align: left;
			margin: 1% auto;
			border: 5px solid gray;
			border-radius: 20px;
		}
		.s1 {
			text-align: center;
		}
	</style>
</head>
<body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<h2 style="text-align: center; margin-top: 8%; font-family:BernhardFashion BT; font-weight: bold;;">Cafe_in</h2>
	<div class="container">
		<h2 style="margin-top: 2%;">회원가입</h2>
		<form name="userInfo" id="userInfo">
		    <div class="md-3">
			    <label for="user_id" class="form-label"></label>
			    <input type="text" name="user_id" class="form-control" id="user_id" placeholder="아이디">
		    </div>
		    <div class="md-3">
			    <label for="user_pw" class="form-label"></label>
			    <input type="password" name="user_pw" class="form-control" id="user_pw" placeholder="비밀번호">
		    </div>
		    <div class="md-3">
			    <label for="isUser_pw" class="form-label"></label>
			    <input type="password" name="user_pwcheck" class="form-control" id="isUser_pw" placeholder="비밀번호 확인">
		    </div>
		    <div class="md-3">
			    <label for="user_nick" class="form-label"></label>
			    <input type="text" name="user_nick" class="form-control" id="user_nick" placeholder="닉네임">
		    </div>
		    <div class="md-3">
			    <label for="user_email" class="form-label"></label>
			    <input type="email" name="user_email" class="form-control" id="user_email" placeholder="이메일">
		    </div>
		    <h5 style="text-align: center; margin-top: 4%;">사용자구별</h5>
		    <div class="form-check" style="float: left;"> <!-- 일반사용자 -->
			    <input class="form-check-input" type="checkbox" value="GUEST" id="user_com" name="user_com" onclick="doOpenCheck1(this);">
			    <label class="form-check-label" for="user_com">
				    일반 사용자
			    </label>
		    </div>
		    <div class="form-check" style="margin-left: 80%;"> <!-- 사업자 -->
			    <input class="form-check-input" type="checkbox" value="MANAGER" id="user_com" name="user_com" onclick="doOpenCheck1(this);">
			    <label class="form-check-label" for="user_com">
				    사업자
			    </label>
		    </div>
		    <h5 style="text-align: center; margin-top: 4%;">성별</h5>
		    <div class="form-check" style="float: left;"> <!-- 남자 -->
			    <input class="form-check-input" type="checkbox" value="MALE" id="user_sex" name="user_sex" onclick="doOpenCheck2(this);">
			    <label class="form-check-label" for="user_sex">
				    남자
			    </label>
		    </div>
		    <div class="form-check" style="margin-left: 80%;"> <!-- 여자 -->
			    <input class="form-check-input" type="checkbox" value="FEMALE id="user_sex" name="user_sex" onclick="doOpenCheck2(this);">
			    <label class="form-check-label" for="user_sex">
				    여자
			    </label>
		    </div>
		    <div class="col-auto">
			    <button type="submit" class="btn btn-primary" style="width: 99%; color: white; background-color: red; margin: 3% auto; border: none;">완료</button>
		    </div>
		</form>
		<div class="s1">
			<h5 style="margin-top: 2%; margin-right: 10%; display: inline-block;">이미 계정이 있습니다</h5>
			<a href="로그인" style="margin-top: 2%; display: inline-block;">로그인</a>
		</div>
	</div>
</body>
</html>