<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<head>
    <title>Add Movie</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>


<div id="addMovie">
    <form:form modelAttribute="movieBuilder">
        <label for="titleInput">Title: </label>
        <form:input path="title" id="titleInput" />
        <br>
        <label for="directorInput">Director: </label>
        <form:input path="director" id="directorInput" />
        <br>
        <label for="yearInput">Year: </label>
        <form:input path="year" id="yearInput" />
        <br>
        <label for="ratingInput">Rating: </label>
        <form:input type ="number" path="rating" id="ratingInput" />
        <br>
        <input type="submit" value="Submit" />
    </form:form>
</div>
</body>
</html>