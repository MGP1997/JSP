<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id"); 
	String name    = request.getParameter("name");
	String hp      = request.getParameter("hp");
	String age     = request.getParameter("age"); 

	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mingyupark1997";
	String pass = "1234";

	try {
		// JDBC 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");

		// DB 연결
		Connection conn = DriverManager.getConnection(host, user, pass);

		// SQL 준비
		String sql = "INSERT INTO USER1 VALUES (?, ?, ?, ?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		psmt.setString(2, name);
		psmt.setString(3, hp);
		psmt.setInt(4, Integer.parseInt(age)); // 나이는 정수로 변환

		// SQL 실행
		psmt.executeUpdate();

		// 자원 정리
		psmt.close();
		conn.close();

		// 성공 시 목록 페이지로 리디렉션
		response.sendRedirect("../list.jsp");

	} catch(Exception e){
		e.printStackTrace();
		out.println("에러 발생: " + e.getMessage());
	}
%>