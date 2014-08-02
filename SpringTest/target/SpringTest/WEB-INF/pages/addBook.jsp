<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<head>
    <title>Add Book</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>


<div id="addBook">
    <form:form modelAttribute="bookBuilder">
        <label for="titleInput">Title: </label>
        <form:input path="title" id="titleInput" />
        <br>
        <label for="authorInput">Author: </label>
        <form:input path="author" id="authorInput" />
        <br>
        <label for="yearInput">Year: </label>
        <form:input path="year" id="yearInput" />
        <br>
        <input type="submit" value="Submit" />
    </form:form>
</div>
</body>
</html>