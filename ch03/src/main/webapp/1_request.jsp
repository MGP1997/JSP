<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 내장객체 - request</title>
		<!--
			날짜 : 202/07/28
			이름 : 박민규
			내용 : JSP 내장객체 request 실습하기 
			
			Request 내장객체
			- 클라이언트의 요청 정보를 갖는 JSP 내장객체
			- 클라이언트의 전송데이터를 수신처리하는 기능 제공
			
			GET요청
			- 기본 데이터 요청 방식, 전송데이터를 쿼리스트링으로 전송(URL주소에 붙여 전송)
			- 보안에 취약하지만 POST 전송대비 빠른 전송
			
			POST요청
			- 데이터를 요청객체의 body에 저장해서 전송되는 방식
			- 보안에 유리하고 대량의 데이터 전송에 적합	
		 -->
	</head>
	<body>
		<h3>JSP 내장객체 - request</h3>	
		
		<h4>GET요청</h4>
		<a href="./proc/result1.jsp?uid=a101">요청 1</a>
		<a href="./proc/result1.jsp?uid=a102&name=홍길동">요청 2</a>
		<a href="./proc/result1.jsp?uid=a103&name=김유신&age=23">요청 3</a>
		
		<h4>POST요청</h4> 
		<form action="./proc/result2.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" placeholder="아이디를 입력하세요.">
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름을 입력하세요.">
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="birth" placeholder="생년월일를 입력하세요.">
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="전송하기" />
					</td>
				</tr>
			</table>	
			
		
		
		
		</form>
		
		
	</body>
</html>