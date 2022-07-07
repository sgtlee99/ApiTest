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
        function postTest() { //create

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

            ;//ajax
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
    		이름 <input type="text" id="name" size="5"> 나이 <input type="number" id="age" size="5"> 주소 <input type="text" id="address">
    	</form>
    	DELETE : 삭제 <input type="button" value="testDeleteBtn" id="testDeleteBtn" onclick='deleteTest()'>
    	<input type="text" id="deleteId">
       	</li>
    </ul>
</body>
</html>