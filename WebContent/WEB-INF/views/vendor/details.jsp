<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h5> In vendor details page....</h5>
<h5 style="color: green;">${sessionScope.mesg}</h5>
<h5>Vendor Details : ${sessionScope.vendor_dtls}</h5>
<h5>Vendor Details : ${sessionScope.vendor_dtls.title}</h5>
<a href='<spring:url value="/product/add"></spring:url>'>add product</a>
</body>
</html>