<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
					
	String id = null;
	String email = request.getParameter("email");
					
	// DB연결에 필요한 변수 선언
	String url = "jdbc:mariadb://localhost:3306/cafein";
	String uid = "root";
	String upw = "root";
					
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
					
	String sql = "select id from USER where email = ?";
				
	try{
		// 드라이버 호출
		Class.forName("org.mariadb.jdbc.Driver");
					
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
					
		// pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
				
		// sql실행
		rs = pstmt.executeQuery();
		
					
		if(rs.next()){ 
			id = rs.getString("id");
							
			out.println("<script>alert('아이디는 " + id + "'); location.href='아이디찾기';</script>");
		} else{ 
			out.println("<script>alert('조회 실패'); location.href='아이디찾기';</script>");
		}
	} catch(Exception e){
		e.printStackTrace();
		out.println("<script>alert('에러 관리자에게 문의하세요');</script>");
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
</head>
<body>
</body>
</html>