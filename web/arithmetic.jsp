<%-- 
    Document   : arithmetic
    Created on : 11-Sep-2019, 10:43:31 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Arithmetic  Calculator</h1>
        <form action="arithmetic" method="post">
            First: <input type="text" name="first" value="${first_val}"><br>
            Second: <input type="text" name="second" value="${second_val}"> <br>
            <input type="submit" name="calculate" value="+" />
            <input type="submit" name="calculate" value="-" />
            <input type="submit" name="calculate" value="*" />
            <input type="submit" name="calculate" value="%" />
        </form>
        Result: ${message} <br>
        <a href="age">Age Calculator</a>
    </body>
</html>
