<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ page  import="com.mycompany.web.dto.Counter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	  <h4>dispatcher8.jsp</h4>
	
	<%-- How1(응답을 만들떄 빠진다/랜더링이 안된다 네트워크 전송 X/jsp 자바 코드 이용) --%>
	<%Counter applicationCounter =(Counter)application.getAttribute("applicationCounter"); %>
	applicationCounter:  <%=applicationCounter.getValue() %><br/>
	
	<%Counter sessionCounter =(Counter)session.getAttribute("sessionCounter"); %>
	sessionCounter : <%=sessionCounter.getValue() %><br/>  
	<%Counter requestCounter =(Counter)request.getAttribute("requestCounter"); %>
	requestCounter : <%=requestCounter.getValue() %><br/>	<br/>
	
	<%-- how2(Expression language=EL) --%>
	applicationCounter: ${applicationCounter.value}<br/>
	sessionCounter : ${sessionCounter.value}<br/>  
	requestCounter : ${requestCounter.value}<br/>	<br/>
	</body>
</html>