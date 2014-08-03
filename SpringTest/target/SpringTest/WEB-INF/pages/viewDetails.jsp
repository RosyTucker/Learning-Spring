<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<head>
    <title>List Books</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>


<div>
    Name: ${customer.name}<br>
    Library Number: ${customer.libraryNumber}<br>
    Password: ${customer.password}<br>
    Email: ${customer.contactInformation.email}<br>
    Address: ${customer.contactInformation.address}<br>
    Phone: ${customer.contactInformation.phone}<br>
</div>

<form method="POST">
    <input type="submit" name="action" value="Home"/>
    <form>
</body>
</html>