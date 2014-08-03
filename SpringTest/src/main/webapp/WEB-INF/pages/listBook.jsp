<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<head>
    <title>List Books</title>
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
    <h1>List Books</h1>
    <table class="table text-center table-striped">
        <thead class="table-header">
            <td>Title</td>
            <td>Author</td>
            <td>Year Published</td>
            <td>Checked Out?</td>

        </thead>
        <c:forEach items="${bookList}" var="book">
            <tr>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.yearPublished}</td>
                <td>${book.checkedOut}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>