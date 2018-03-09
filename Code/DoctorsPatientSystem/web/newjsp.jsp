<%-- 
    Document   : newjsp
    Created on : Jul 3, 2013, 11:59:16 AM
    Author     : ASOK2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="http://code.jquery.com/jquery-2.0.2.min.js"></script>
         <script>
            $(document).ready(function(){
                $("#btn1").click(function(){
                    $("#check").val(function(p,c){
                        return c + " Arnab";
                    });
                });
            });
        </script>
        <title>JSP Page</title>
    </head>
    <body>
       
        <textarea id="check">Hello</textarea>
        <button type="button" id="btn1">ClickMe</button>
    </body>
</html>
