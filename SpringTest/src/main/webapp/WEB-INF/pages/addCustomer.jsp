<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<head>
    <title>Add Customer</title>
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
    <h1>Add Customer</h1>
    <div id="addCustomer">
        <form:form modelAttribute="customerBuilder">
            <label for="libraryInput">Library Number: </label>
            <form:input path="libraryNumber" id="libraryInput" />
            <br>
            <label for="nameInput">Name: </label>
            <form:input path="name" id="nameInput" />
            <br>
            <label for="passwordInput">Password: </label>
            <form:input type="password" path="password" id="passwordInput" />
            <br>
            <label for="emailInput">Email: </label>
            <form:input type="email" path="email" id="emailInput" />
            <br>
            <label for="addressInput">Address: </label>
            <form:input path="address" id="addressInput" />
            <br>
            <label for="phoneInput">Phone: </label>
            <form:input path="phoneNumber" id="phoneInput" />
            <br>
            <input class="submit-button btn" type="submit" value="Submit" />
        </form:form>
    </div>
</div>
</body>
</html>