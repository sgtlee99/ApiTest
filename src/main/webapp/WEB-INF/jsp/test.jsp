<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>
        title
    </title>
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
        function postTest() { //create //update시 null체크
               const data = {
                    name: $('#name').val(),
                    age: $('#age').val(),
                    address: $('#address').val(),
                };
            alert($('#name').val());
            $.ajax({
                type: "POST",
                url: "/user",
                data:JSON.stringify(data)
            }).done(function(){ // done - success 와 동일
                alert('성공');
            }).fail(function (error) {
                alert(JSON.stringify(error));
            });
        }
        function putTest() { // 수정 //null체크
               const data = {
                   user_pw : $('#user_pw').val(),
                   user_nick : $('#user_nick').val(),
                   user_email : $('#user_email').val(),
                   user_group : null
                   user_pro_img : null,
                   age : null,
                };
            alert(user_nick);
            $.ajax({
                type: "PUT",
                url: "/user/{user_num}/update",
                data:JSON.stringify(data)
            }).done(function(){ // done - success 와 동일
                alert('성공');
            }).fail(function (error) {
                alert(JSON.stringify(error));
            });
        }
        function getTest() {
            alert('get');
            $.ajax({
                type: "GET",
                url: "/user/"+$("#user_num").val(),
                success: function(data) {
                    alert(data.user_num+" "+data.user_id+" "+data.user_pw+" "+data.user_email);
                }
            });
        }
        function deleteTest() {
            alert('delete');
            $.ajax({
                type: "DELETE",
                url: "/user/"+$("#deleteId").val()+"/delete",
                success: function(data) {
                    alert('성공');
                }
            });
        }
        $(document).ready(function(){
            $("#testCode").submit(function() {
                alert("test");
            });
        });
    </script>
</head>
<body>
    스프링부트 rest api 테스트.
    <ul>
       	<li>
       	GET : 조회 <input type="button" value="testGetBtn" id="testGetBtn" onclick='getTest();'><input type="text" id="user_num"><br>

    	POST :생성 <input type="button" value="testCreateBtn" id="testCreateBtn" onclick='postTest()'>
        이름 <input type="text" id="name" size="5"> 나이 <input type="number" id="age" size="5"> 주소 <input type="text" id="address"><br>

        PUT : 수정 <input type="button" value="testPutBtn" id="testPutBtn" onclick='putTest()'>
        user_num <input type="text" name="user_num" size="2" id="user_num">
        user_pw <input type="text" name="user_pw" size="3" id="updateId">
        user_nick <input type="text" name="user_nick" size="5" id="user_nick">
        user_email <input type="text" name="user_email" size="10" id="user_email">

    	<br>DELETE : 삭제 <input type="button" value="testDeleteBtn" id="testDeleteBtn" onclick='deleteTest()'>
    	<input type="text" id="deleteId">
       	</li>
    </ul>
    <form id="testCode">
        <input type="submit" value="TEST">
    <form>
</body>
</html>