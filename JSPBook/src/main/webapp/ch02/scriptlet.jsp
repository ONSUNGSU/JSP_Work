<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<!-- 선언문 : 변수 메서드 정의-->
	<%! int count = 3; 
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	
	<!--스트립틀립 : 자바로직 -->
	<%
		for (int i =1; i <= count; i++){
			out.println("Java Server Pages " + i + ".<br>");
		}
	%>
	
	<!-- 표현문 : 출력 -->
	<%= makeItLower("Hello World") %>
</body>
</html>