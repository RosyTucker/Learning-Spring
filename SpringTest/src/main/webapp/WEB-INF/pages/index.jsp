<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<head>
    <title>Home</title>
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
    <form method="POST">
        <input class="btn menu-button" type="submit" name="action" value="Add Customer"/>
        <input class="btn menu-button" type="submit" name="action" value="Add Book"/>
        <input class="btn menu-button" type="submit" name="action" value="Add Movie"/>
        <br>
        <c:set var="count" value="0"/>
        <c:forEach items="${commandList}" var="command">
            <input class="btn menu-button" type="submit" name="action" value="${command.text}"/>
            <c:set var="count" value="${count + 1}"/>
            <c:if test="${count == 3}"><br/><c:set var="count" value="0"/>
            </c:if>
        </c:forEach>
    </form>
    <h1 class="message">${customerMessage} and ${bookMessage}</h1>
</div>
</body>
</html>
