<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<head>
    <title>Add Customer</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>


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
        <input type="submit" value="Submit" />
    </form:form>
</div>
</body>
</html>