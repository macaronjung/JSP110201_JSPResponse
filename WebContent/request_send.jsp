<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 사용자가 입력한 값에 반응 -->

<%!
	int age;
%>

<%
	String str = request.getParameter("age");
	age = Integer.parseInt(str); /* 정수형으로 반환 */
	
	/* 조건 이용하여 다른 페이지로 보내기 */
	if(age>=20) {
		response.sendRedirect("pass.jsp?age=" + age);
	} else {
		response.sendRedirect("ng.jsp?age=" + age);
	}/* if end */
%>

<%= age %>

</body>
</html>