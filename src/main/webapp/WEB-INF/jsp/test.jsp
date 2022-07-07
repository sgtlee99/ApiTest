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
            contentType: "application/json",
			success:function(result){
				alert(result);
			},
			error: function (jqXHR) {
                alert("jqXHR status code:"+jqXHR.status+" message:"+jqXHR.responseText);
            }
		});//ajaxSetup
        function postTest() { //create
            alert('post');
            $.ajax({
                type: "POST",
                url: "/user",
                data:$("#createUserForm").serializeArray()
            }).done(function(){ // done - success 와 동일
                $("#createUserForm")[0].reset();
                alert('성공');
            });//ajax
        }
        function getTest() {
            alert('get');
            $.ajax({
                type: "GET",
                url: "/user/"+$("#id").val(),
                success: function(data) {
                    alert(data.id+" "+data.name+" "+data.age+" "+data.address);
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
    </script>
</head>
<body>
    스프링부트 rest api 테스트
    <ul>
       	<li>
       	GET : 조회 <input type="button" value="testGetBtn" id="testGetBtn" onclick='getTest()'><input type="text" id="id"><br>
    	POST :생성 <input type="button" value="testCreateBtn" id="testCreateBtn" onclick='postTest()'>
    	<form id="createUserForm">
    		이름 <input type="text" name="name" size="5"> 나이 <input type="number" name="age" size="5"> 주소 <input type="text" name="address">
    	</form>
    	DELETE : 삭제 <input type="button" value="testDeleteBtn" id="testDeleteBtn" onclick='deleteTest()'>
    	<input type="text" id="deleteId">
       	</li>
    </ul>
</body>
</html>