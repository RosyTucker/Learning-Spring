<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<head>
    <title>View Details</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet"  type="text/css" />
    <link href="<c:url value="/resources/css/biblioteca.css" />" rel="stylesheet"  type="text/css" />
</head>
<header>
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <h1>Biblioteca</h1>
            </div>
            <div class="navbar-right">
                <h2>${loginMessage}</h2>
            </div>
        </div>
    </div>
</header>

<div class="content col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 text-center">
    <h1>View Details</h1>
    <table class="center-block">
        <tbody>
        <tr><td class="text-right table-label">Name: </td><td class="table-value">${customer.name}</td></tr>
        <tr><td class="text-right table-label">Library Number: </td><td class="table-value">${customer.libraryNumber}</td></tr>
        <tr><td class="text-right table-label">Password: </td><td class="table-value">${customer.password}</td></tr>
        <tr><td class="text-right table-label">Email: </td><td class="table-value">${customer.contactInformation.email}</td></tr>
        <tr><td class="text-right table-label">Address: </td><td class="table-value">${customer.contactInformation.address}</td></tr>
        <tr><td class="text-right table-label">Phone: </td><td class="table-value">${customer.contactInformation.phone}</td></tr>
        </tbody>
    </table>
</div>
</div>
</body>
</html>