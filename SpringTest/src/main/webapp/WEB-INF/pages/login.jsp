<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<head>
    <title>Login</title>
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
    <h1>Login</h1>
    <div id="login">
    <form:form modelAttribute="loginBuilder">
        <label for="numberInput">Library Number: </label>
        <form:input path="libraryNumber" id="numberInput" />
        <br>
        <label for="passwordInput">Password: </label>
        <form:input type="password" path="password" id="passwordInput" />
        <br>
        <input class="submit-button btn" type="submit" value="Submit" />
    </form:form>
</div>
    </div>
</body>
</html>