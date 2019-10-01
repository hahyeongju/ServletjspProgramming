<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <h4>dispatcher6.jsp</h4>
	
	<%-- How1(응답을 만들떄 빠진다/랜더링이 안된다 네트워크 전송 X/jsp) --%>
	title: <%=request.getAttribute("title") %> <br/>
	content : <%=request.getAttribute("content") %> <br/>  <br/>
	
	<%-- how2(Expression language=EL) --%>
	title: ${title} <br/>
	content : ${content} <br/>
	
</body>
</html>