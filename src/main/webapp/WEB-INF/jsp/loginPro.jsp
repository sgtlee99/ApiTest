<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
    // DB연결에 필요한 변수 선언
	String url = "jdbc:mariadb://localhost:3306/cafein";
	String uid = "root";
	String upw = "root";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from USER where user_id = ? and user_pw = ?";
	
	try{
		// 드라이버 호출
		Class.forName("org.mariadb.jdbc.Driver");
		
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
		
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_id);
		pstmt.setString(2, user_pw);
		
		// sql실행
		rs = pstmt.executeQuery();
		
		if(rs.next()){ // 로그인 성공(인증의 수단 session)
			user_id = rs.getString("user_id");
			String user_nick = rs.getString("user_nick");
			
			out.println("<script>alert('로그인 성공'); location.href='메인화면';</script>");
		} else{ // 로그인 실패
			out.println("<script>alert('로그인 실패'); location.href='로그인';</script>");
		}
	} catch(Exception e){
		e.printStackTrace();
		out.println("<script>alert('로그인 에러 관리자에게 문의하세요'); location.href='로그인';</script>");
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
 %>
<html>
<head>
	<script>
		alert("gd");
	</script>
</head>
<body>
</body>
</html>