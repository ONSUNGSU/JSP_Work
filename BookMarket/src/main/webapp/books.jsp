<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>

  
<html>
<head>
<link rel = "stylesheet" href = "./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class=display-3">도서 목록</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
		<div class="row">
			<%
				for(int i=0;i<listOfBooks.size();i++){
					Book book = listOfBooks.get(i);
				
			%>
		
			
<!--  			<div class="col-md-12">
				<img src="/upload/<%=book.getFilename() %>" style="width:10%; float:left;">
				<p><h5><b>[<%=book.getCategory() %>]<%=book.getName()%></b></h5>
				<p style="padding-top: 20px"><%=book.getDescription()%>
				<p><%=book.getAuthor()%>|<%=book.getPublisher() %>|<%=book.getUnitPrice() %>원
				<p> <a href="./book.jsp?id=<%=book.getBookId() %>"
				class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
				<hr>
			</div> -->
			<div class="col-md-12">
	    	<img src="/upload/<%=book.getFilename() %>" style="width:15%; float:left;">
	    	<div style="overflow: hidden; padding-left: 10%;">
	        <p><h5><b>[<%=book.getCategory() %>]<%=book.getName()%></b></h5></p>
	        <p style="padding-top: 20px;"><%=book.getDescription()%></p>
	        <p><%=book.getAuthor()%>|<%=book.getPublisher() %>|<%=book.getUnitPrice() %>원</p>
	        <p><a href="./book.jsp?id=<%=book.getBookId() %>"
	        class="btn btn-secondary" role="button">상세 정보 &raquo;></a></p>
	    	</div>
	    	<hr style="clear:both;">
		</div>
			
		
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>