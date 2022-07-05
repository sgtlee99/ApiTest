<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
					
	String user_id = request.getParameter("id");
	String user_email = request.getParameter("email");
	out.println("<script>alert('" + user_email + "');</script>");
	out.println("<script>alert('" + user_id + "');</script>");
	String user_pw = null;
	int user_num1;
	int user_num2;
					
	// DB연결에 필요한 변수 선언
	String url = "jdbc:mariadb://localhost:3306/cafein";
	String uid = "root";
	String upw = "root";
					
	Connection conn = null;
	PreparedStatement pstmt1 = null;
	PreparedStatement pstmt2 = null;
	PreparedStatement pstmt3 = null;
	ResultSet rs1 = null;
	ResultSet rs2 = null;
	ResultSet rs3 = null;
					
	String sql1 = "select user_num from USER where user_id = ?";
	String sql2 = "select user_num from USER where user_email = ?";
	String sql3 = "select user_pw from USER where user_num = ?";
				
	try{
		// 드라이버 호출
		Class.forName("org.mariadb.jdbc.Driver");
					
		// conn 생성
		conn = DriverManager.getConnection(url, uid, upw);
					
		// pstmt 생성
		pstmt1 = conn.prepareStatement(sql1);
		pstmt1.setString(1, user_id);
		pstmt2 = conn.prepareStatement(sql2);
		pstmt2.setString(1, user_email);
				
		// sql실행
		rs1 = pstmt1.executeQuery();
		rs2 = pstmt2.executeQuery();
					
		if(rs1.next()){ 
			user_num1 = rs1.getInt("user_num");
			if(rs2.next()){ 
				user_num2 = rs2.getInt("user_num");
				if (user_num1 == user_num2) {
					//pstmt 생성
					pstmt3 = conn.prepareStatement(sql3);
					pstmt3.setInt(1, user_num1);
					//sql 실행
					rs3 = pstmt3.executeQuery();
					if(rs3.next()){ 
						user_pw = rs3.getString("user_pw");	
						out.println("<script>alert('비밀번호는 " + user_pw + "'); location.href='비밀번호찾기';</script>");
					} else{ 
						out.println("<script>alert('조회 실패'); location.href='비밀번호찾기';</script>");
					}
				} else {
					out.println("<script>alert('조회불가능(정보 불일치)'); location.href='비밀번호찾기';</script>");
				}
			} else{ 
				out.println("<script>alert('없는 이메일입니다'); location.href='비밀번호찾기';</script>");
			}
		} else{ 
			out.println("<script>alert('없는 아이디입니다'); location.href='비밀번호찾기';</script>");
		}
	} catch(Exception e){
		e.printStackTrace();
		out.println("<script>alert('에러 관리자에게 문의하세요');</script>");
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt1 != null) pstmt1.close();
			if(rs1 != null) rs1.close();
			if(pstmt2 != null) pstmt2.close();
			if(rs2 != null) rs2.close();
			if(pstmt3 != null) pstmt3.close();
			if(rs3 != null) rs3.close();
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