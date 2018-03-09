<%-- 
    Document   : registration
    Created on : Apr 15, 2013, 11:37:13 AM
    Author     : ASOK2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body bgcolor="#CF4A41" text="white">
        <img src="images/C-DAC.png" width="200" height="200" alt="" align="right"/>

        <% String msg = request.getParameter("msg");
            if (msg == null) {
                msg = "";
            }
        %>
        <h1>Doctors/Patients Registration Form:-</h1>

        <label for="select"></label>
        <form action="reg" method="post">
            <table width="72%" height="246" id="style1">
                <tr>
                    <td>User id:-</td>
                    <td><label for="textfield3"></label>
                        <input type="text" name="id" id="textfield3"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><label for="textfield4"></label>
                        <input type="text" name="name" id="textfield4"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" id="password"></td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td><select name="select" size="1" id="select">
                            <option selected>Doctors</option>
                            <option>Patients</option>
                        </select></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="Submit"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><%=msg%></td>
                </tr>
            </table>
        </form>
        <a href="home.jsp"><font color="white">Home</font></a>
    </body>
</html>
