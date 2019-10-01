<%@ page  contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <h4>dispatcher5.jsp</h4>
	
	<%-- How1(응답을 만들떄 빠진다/랜더링이 안된다 네트워크 전송 X/jsp) --%>
	 name: <%=request.getAttribute("name") %> <br/>
	age : <%=request.getAttribute("age") %> <br/>  <br/>
	
	
	<%-- how2(Expression language=EL) --%>
	name: ${name} <br/>
	age : ${age} <br/>
	
</body>
</html>