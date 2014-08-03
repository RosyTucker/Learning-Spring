<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<head>
    <title>List Movies</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>
<div>
    <table>
        <tr>
            <td>Title</td>
            <td>Director</td>
            <td>Year Published</td>
            <td>Rating</td>
            <td>Checked Out?</td>
        </tr>
        <c:forEach items="${movieList}" var="movie">
            <tr>
                <td>${movie.title}</td>
                <td>${movie.director}</td>
                <td>${movie.yearPublished}</td>
                <td>${movie.rating}</td>
                <td>${movie.checkedOut}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<form method="POST">
    <input type="submit" name="action" value="Home"/>
</form>
</body>
</html>