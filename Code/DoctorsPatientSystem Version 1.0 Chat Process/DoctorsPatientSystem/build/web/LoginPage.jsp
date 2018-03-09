<%-- 
    Document   : index
    Created on : Apr 11, 2013, 5:35:51 PM
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
    <script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
    <link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css">
</head>
    <body>
    <h1>Wellcome To Doctors Patients System</h1>
    <div id="style3">
      <table width="100%">
        <tr>
          <td><ul id="MenuBar1" class="MenuBarVertical">
            <li><a href="#">Home</a>            </li>
            <li><a href="#">Search</a></li>
            <li><a class="MenuBarItemSubmenu" href="#">Advices</a>
              <ul>
                <li><a class="MenuBarItemSubmenu" href="#">Item 3.1</a>
                  <ul>
                    <li><a href="#">Item 3.1.1</a></li>
                    <li><a href="#">Item 3.1.2</a></li>
                  </ul>
                </li>
                <li><a href="#">Item 3.2</a></li>
                <li><a href="#">Item 3.3</a></li>
              </ul>
            </li>
            <li><a href="#">Contact Us</a></li>
          </ul></td>
        </tr>
      </table>
    
    </div>
    <div id="style4">
        <form method="post" action="log">
    <table width="100%">
  <tr>
    <td>User's Login</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>User ID</td>
    <td><label for="id"></label>
      <input type="text" name="id" id="id"></td>
  </tr>
  <tr>
    <td>Password</td>
    <td><label for="password"></label>
      <input type="password" name="password" id="password"></td>
  </tr>
  <tr>
    <td>Users Type</td>
    <td><input type="text" name="type" id="type"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="button" id="button" value="Submit"></td>
  </tr>
  <tr>
      <td><a href="canvas.jsp">New User</a></td>
    <td>&nbsp;</td>
  </tr>
  </table>
    </form>
    
    </div>
    <script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
    </script>
</body>
</html>
