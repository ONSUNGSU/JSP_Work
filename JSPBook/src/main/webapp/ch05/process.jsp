<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		// name 파라미터의 값을 변수 name에 저장
		String name = request.getParameter("name");
	%>
	<p> 이름 : <%=name %><br>
	요청 정보 길이 : <%=request.getContentLength() %><br>
	클라이언트 전송 방식 : <%=request.getMethod() %><br>
	요청 URL : <%=request.getRequestURL() %><br>
	서버 이름 : <%=request.getServerName() %><br>
	서버 포트: <%= request.getServerPort() %><br>
</body>
</html>