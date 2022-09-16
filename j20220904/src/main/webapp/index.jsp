<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- ${pageContext.request.contextPath} : Context Path을 자동으로 붙여줌 --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/reset.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/index.css">
</head>
<body>
<div id="wrap">
	<div id="header">
		<jsp:include page="./main/header.jsp"></jsp:include>
	</div>
	
	<!-- <div id="banner">
		<div class="container">banner</div>
	</div> -->
	
	<div id="contents">
 	    <div id="contents1">
            <div class="container">contents1!</div>
        </div>
        <div id="contents2">
            <div class="container">contents2</div>
        </div>
        <div id="contents3">
            <div class="container">contents3</div>
        </div>
	</div>
	
	<div id=footer>
		<!-- <div id="footer-nav">
            <div class="container">footer-nav</div>
        </div> -->
        <div id="footer-info">
            <div class="container">
            	<jsp:include page="./main/footer.jsp"></jsp:include>
            </div>
        </div>
	</div>
</div>
</body>
</html>