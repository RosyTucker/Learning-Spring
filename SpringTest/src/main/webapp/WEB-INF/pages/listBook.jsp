<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<head>
    <title>List Books</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>


<div>
    <table>
        <tr>
            <td>Title</td>
            <td>Author</td>
            <td>Year Published</td>
        </tr>

        <c:forEach items="${bookList}" var="book">
            <tr>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.yearPublished}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<form method="POST">
    <input type="submit" name="action" value="Home"/>
    <form>
</body>
</html>