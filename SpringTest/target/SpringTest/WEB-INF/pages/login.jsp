<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<head>
    <title>Login</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>

<div id="login">
    <form:form modelAttribute="loginBuilder">
        <label for="numberInput">Library Number: </label>
        <form:input path="libraryNumber" id="numberInput" />
        <br>
        <label for="passwordInput">Password: </label>
        <form:input type="password" path="password" id="passwordInput" />
        <br>
        <input type="submit" value="Submit" />
    </form:form>
</div>
</body>
</html>