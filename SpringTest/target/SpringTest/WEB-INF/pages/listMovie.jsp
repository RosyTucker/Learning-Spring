<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<head>
    <title>List Movies</title>
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
    <h1>List Movies</h1>
    <table class="table text-center table-striped">
        <thead class="table-header">
            <td>Title</td>
            <td>Director</td>
            <td>Year Published</td>
            <td>Rating</td>
            <td>Checked Out?</td>
        </thead>
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
</body>
</html>