<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<head>
    <title>Checkout Book</title>
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
    <h1>Checkout Book</h1>
    <div id="checkoutBook">
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
            <input id="submit" class="submit-button btn" type="submit" value="Submit" />
        </form:form>
    </div>
</div>
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bibliotecaBook.js" />"></script>
</body>
</html>