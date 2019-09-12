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
        <script type="text/javascript">
            var result = 0;
            function  run(i) {
                var first = document.getElementById("first").value;
                var second = document.getElementById("second").value;

                if (first.length === 0 || second.length === 0) {
                    document.getElementById("message").innerHTML = "invalid";
                } else if (isNaN(first) || isNaN(second)) {
                    document.getElementById("message").innerHTML = "invalid";
                } else {
                    if (i == 1) {
                        result = parseFloat(first) + parseFloat(second);
                        document.getElementById("message").innerHTML = result;
                        return false;
                    } else if (i == 2) {
                        result = parseFloat(first) - parseFloat(second);
                        document.getElementById("message").innerHTML = result;
                        return false;
                    } else if (i == 3) {
                        result = parseFloat(first) * parseFloat(second);
                        document.getElementById("message").innerHTML = result;
                        return false;
                    } else {
                        result = parseFloat(first) % parseFloat(second);
                        document.getElementById("message").innerHTML = result;
                        return false;
                    }

                }
                return false;
            }
        </script>

    </head>
    <body>
        <h1>Arithmetic  Calculator</h1>
        <form action="#" method="post">
            First: <input type="text" id="first"><br>
            Second: <input type="text" id="second"> <br>
            <input type="button" onClick="run(1)" value="+" />
            <input type="button" onClick="run(2)" value="-" />
            <input type="button" onClick="run(3)" value="*" />
            <input type="button" onClick="run(4)" value="%" />
        </form>
        Result: <span id="message">---</span><br>
        <a href="age">Age Calculator</a>
    </body>
</html>
