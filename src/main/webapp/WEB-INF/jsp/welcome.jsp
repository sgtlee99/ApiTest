<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#myTable {
		text-align: center;
	}
	
	.button {
		margin-right: 5px;
	}
</style>
</head>
<body>
	<h2>내 정보</h2>
	<table id="myTable">
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>나이</td>
		</tr>
		
		<tr>
			<td><input type="text" id="name" /></td>
			<td><input type="text" id="phone" /></td>
			<td><input type="number" id="age" /></td>
		</tr>
	</table>
	
	<input type="button" id="getName" class="button" value="이름 가져오기"/>
	<input type="button" id="getInfo" class="button" value="정보 가져오기"/>
	<input type="button" id="compare" class="button" value="정보 비교하기"/>
	
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> <!-- Jquery 사용을 위해 필요한 CDN -->
<script>
	$("#getName").click(function() { // body에서 id가 getName인 것을 클릭할 경우
		$.ajax({
			type: "GET", // HTTP Method 종류
			url: "/rest/myName", // 컨트롤러와 매핑된 URL
			success: function(data) {
				$("#name").val(data); // body에서 id가 name인 것에 data값을 저장 
			},
			error: function(error) {
				console.log(error);
			}
		})
	});
	
	$("#getInfo").click(function() { // body에서 id가 getInfo인 것을 클릭할 경우 
		$.ajax({
			type: "GET", // HTTP Method 종류
			url: "/rest/myInfo", // 컨트롤러와 매핑된 URL
			success: function(data) {
				$("#name").val(data.name); // body에서 id가 name인 것에 data.name값을 저장
				$("#phone").val(data.phone); // body에서 id가 name인 것에 data.phone값을 저장
				$("#age").val(data.age); // body에서 id가 name인 것에 data.age값을 저장
			},
			error: function(error) {
				console.log(error);
			}
		})
	});
	
	$("#compare").click(function() { // body에서 id가 compare인 것을 클릭할 경우
		let params = { // JSON 데이터
			name: $("#name").val(), // body에서 id가 name인 것에 담긴 value값을 가져오기
			phone: $("#phone").val(), // body에서 id가 phone인 것에 담긴 value값을 가져오기
			age: $("#age").val() // body에서 id가 age인 것에 담긴 value값을 가져오기
		}
	
		if(params.name == "" || params.phone == "" || params.age == "") {
			alert("정보를 모두 입력해주세요.");
			return;
		}
		
		$.ajax({
			type: "GET", // HTTP Method 종류
			url: "/rest/compareInfo", // 컨트롤러와 매핑된 URL
			data: params, // 파라미터로 넘길 데이터
			success: function(data) {
				if(data == "true") {
					alert("동일한 정보입니다.");
				} else {
					alert("다른 정보입니다.");
				}
			},
			error: function(error) {
				console.log(error);
			}
		})
	});
</script>
</html>