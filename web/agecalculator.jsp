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
        <script type="text/javascript">
           function  validation(){
               var input=document.getElementById("age").value;
                if (input.length ===0){                    
                    document.getElementById("message").innerHTML = "You must give your current age";
                }else if (isNaN(input) ) {
                     document.getElementById("message").innerHTML = "You must enter a number.";
                 }else{
                     var nextage=parseFloat(input)+1;
                     document.getElementById("message").innerHTML = "Your age next birthday will be "+nextage;
                 }
                 return false;
           }
        </script>
        
    </head>
    <body>
        <h1>Age Calculator</h1>
        <form action="#" method="post" onsubmit="return validation();">
            Enter your age <input type="text" id="age"><br>
            <input type="Submit" value="Age next birthday">
        </form>
        <span id="message"></span><br>
        <a href="arithmetic">Arithmetic Calculator</a>
    </body>
</html>
