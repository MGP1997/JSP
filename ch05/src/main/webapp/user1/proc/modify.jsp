<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");  // 문자열로 받아서 Integer로 변환 예정
	
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mingyupark1997";
	String pass = "1234";

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);

		String sql = "UPDATE USER1 SET name = ?, hp = ?, age = ? WHERE user_id = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, name);
		psmt.setString(2, hp);
		psmt.setInt(3, Integer.parseInt(age));
		psmt.setString(4, user_id);
		
		psmt.executeUpdate();

		psmt.close();
		conn.close();

	} catch(Exception e) {
		e.printStackTrace();
	}
	
	response.sendRedirect("../list.jsp");
%>