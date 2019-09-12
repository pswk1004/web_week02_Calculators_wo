<%-- 
    Document   : agecalculator.jsp
    Created on : 11-Sep-2019, 12:38:06 PM
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
        <h1>Age Calculator</h1>
        <form action="age" method="post">
            Enter your age <input type="text" name="input_age"><br>
            <input type="submit" value="Age next birthday">
        </form>
        <span>${message}</span><br>
        <a href="arithmetic">Arithmetic Calculator</a>
    </body>
</html>
