<%-- 
    Document   : newjsp1
    Created on : Jul 8, 2013, 12:14:13 PM
    Author     : ASOK2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text /html; charset=UTF-8">
        <script type="text/javascript" language="javascript" src="ajax.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <script type="text/javascript" language="javascript">
            function getchatResponse(){
               setInterval('chatResponse();',3000);
            }
        </script>
        <button type="button" onclick="getchatResponse()">clickMe</button>
        <div id="msg"></div>
    </body>
</html>
