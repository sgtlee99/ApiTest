<%--JSP 페이지에 대한 정보를 page 디렉티브의 속성들을 사용하여 정의하였습니다. --%>
<%--JSP 페이지가 생성할 문서의 타입을 아래와 같이 지정하였습니다. --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
<form id="contact-form">
	<input type="email" id="searchTxt" value="bbb">
	<input type="submit" id="s" value="aaa" onclick="a();">
</form>
	<script>
		const form1 = document.querySelector('form[id="contact-form"]');

		function a(){
			const user_email = form1.querySelector('input[type="email"]').value;
			alert(user_email);
			location.href="findid?user_email=" + user_email;
		}
	</script>
</div>
</body>
</html>