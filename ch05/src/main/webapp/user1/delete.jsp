<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user_id = request.getParameter("user_id");

	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mingyupark1997";
	String pass = "1234";

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);

		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER1 WHERE user_id = ?");
		psmt.setString(1, user_id);
		
		psmt.executeUpdate();

		psmt.close();
		conn.close();
		
	} catch(Exception e) {
		e.printStackTrace();
	}

	response.sendRedirect("./list.jsp");
%>