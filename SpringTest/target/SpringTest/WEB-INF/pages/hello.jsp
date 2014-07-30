<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<title>FirstForm</title>

<form:form modelAttribute="user">
<%--<form:form modelAttribute="user">--%>
<label for="firstNameInput">First Name: </label>
    <form:input path="firstName" id="firstNameInput" />
    <label for="surnameInput">Surname: </label>
    <form:input path="surname" id="surnameInput" />
    <br/>
    <input type="submit" value="Submit" />
</form:form>
<h1 style="color:#d35f4c">${message}</h1>
</body>

</html>