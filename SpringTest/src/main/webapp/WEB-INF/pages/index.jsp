<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<head>
    <title>Home</title>
</head>
<h1 style="color:#7323d3">${welcome}</h1>



<div class="option">

    <form method="POST">
        <input type="submit" name="action" value="Add Customer"/>
        <input type="submit" name="action" value="Add Book"/>
        <input type="submit" name="action" value="Add Movie"/>
        <c:forEach items="${commandList}" var="command">
            <input type="submit" name="action" value="${command.text}"/>
        </c:forEach>
    </form>
</div>
<h1 style="color:#7323d3">${customerMessage}</h1>
<h1 style="color:#7323d3">${bookMessage}</h1>

</body>
</html>


</body>
</html>