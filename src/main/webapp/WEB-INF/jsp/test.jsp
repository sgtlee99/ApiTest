<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function(){
    user_insert();
    form_init();
	<!--user_delete();
	user_list();
	user_insert();
	user_select();
	user_update();
	city_list();-->
});
function user_insert(){
	$('body').on('click', '#btnInsert', function(){
		var name = $("input:text[name='name']").val();
		var age   = $("input:text[name='age']").val();
		var address = $("input:text[name='address']").val();
		var userObj = {name:name, age:age, address:address};
		var result = confirm(name +'님을 정말 등록하시겠습니까?');
		if(result){
			$.ajax({
				url : 'user',
				method : 'POST',
				contentType:'application/json; charset=utf-8',
				dataType:'json',
				data: JSON.stringify(userObj),

				error:function(error,status,msg){
					alert("상태코드 " + status + "에러메시지" + msg );
				},
				success:function(xhr){
					console.log(xhr);
					if(xhr == 1){
						$('#btnInit').trigger('click');
					}
					user_list();
				}
			});
		}
	});
}
function form_init(){
	$('#btnInit').on('click', function(){
		$('#user_form').each(function(){
			this.reset();
		})
	});
}
</script>
</head>
<body>
	<div class="text-center">
		<h2>사용자 등록</h2>
	</div>

	<div  class="container p-3">
		<form id="user_form" method="post" action="userInsert.do">
			<table>
				<tr class="form-group">
					<th>name</th>
					<td><input class="form-control" type="text" name="name"></td>
				</tr>
				<tr class="form-group">
					<th>age</th>
					<td><input class="form-control" type="text" name="age"></td>
				</tr>
				<tr class="form-group">
					<th>address</th>
					<td><input class="form-control" type="text" name="address"></td>
				</tr>
			</table>
			<div class="container p-3">
				<div class="btn-group">
					<input type ="button" value="등록" class="btn btn-primary" id="btnInsert">
					<input type ="button" value="초기화" class="btn btn-info" id="btnInit">
					<input type ="button" value="수정" class="btn btn-secondary" id="btnUpdate">
				</div>
			</div>
		</form>
	</div>



	<hr>

	<div class="text-center">
		<h2>사용자 목록 Ajax</h2>
	</div>
	<div class="container p-3">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>name</th>
					<th>age</th>
					<th>address</th>
				</tr>
			</thead>
			<tbody id='list'>
			</tbody>
		</table>
	</div>
</body>
</html>