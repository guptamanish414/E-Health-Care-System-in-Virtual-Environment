<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-HEALTHCARE</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="http://fonts.googleapis.com/css?family=Dosis:300,400,500,600,700" rel="stylesheet" type="text/css" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="text/javascript" language="javascript">


</script>
</head>
<body>
     <%
        String type=request.getParameter("type");
        String msg=request.getParameter("msg");
        if(msg==null){
            msg="";
        }
        %>
<div id="wrapper">
	<div id="header">
		<div id="logo">
                    <%--<h1><a href="#">E-HEALTHCARE</a></h1>--%>
                    <p><img src="images/ehealthcare.jpg" width="100%" height="95" alt="E-HEALTHCARE"/></p>
		</div>
 <div id="menu" class="topnav">
        <a href="home.jsp">Homepage</a>
        <a href="feedback.jsp" >Your Feedback</a>
        <a href="#" >About Us</a>
        <a href="http://www.cdackolkata.in/">Contact Us</a>
        <a href="javascript:void(0);" onclick="myFunction()"></a>
        <%-- <img src="images/building.jpg" width="200" height="85" alt="" />--%>
     </div>
	</div>
	<div id="page">
		<div id="content">
			<h2>Present Features</h2>
			<p><img src="images/img06.jpg" width="100%" height="75" alt="" /></p>
			<p>This is <strong>E-HEALTHCARE </strong>, a free, fully standard online healthcare website designed by <a href="http://www.cdackolkata.in">c-dac</a>.   The services  are from <a href="http://cdackolkata.in/"> </a>. This site is released under a <a href="http://www.cdackolkata.in/">c-dac</a> license, so you are pretty much free to use it accordingly) </p>

                        <p>The goal of this system is to bring the benefits of telemedicine to nursing home residents in an inexpensive, convenient manner. This can be achieved by demonstrating the feasibility of producing a portable telemedicine kit connected to a telemedicine network through video conferencing.
The nurse or primary care physician unpacks the kit, boots the tablet PC, and attaches peripherals required for the consultation.Textual notes, pen-inputted readings and observations, digital medical peripheral readings, and high-resolution still photographs are transmitted to the remote physician in real- or near real-time. The data for the session is encrypted and stored remotely and possibly locally as well. Telemedicine software features forms for these data that can be filled in automatically by digital medical peripherals, or through stylus or keyboard input from the nurse or primary care physician. Web based Online Bangla OHR s a real time communication among multiple clients. Once the clients have entered into the communicating system each client can
 Enter Bengali/English text through Online OHR to make the conversation more feasible and compact.
</p>
                        <img src="images/C-DAC2.png" height="200" width="200" alt=""/>
		</div>
		<div id="sidebar">
			<div id="tbox1">
				<h2>some words</h2>
				<ul class="style2">
					<li class="first">
						<h3><a href="index.jsp?type=Doctors">Login Here!!!!</a></h3>
                                                <p><img src="images/DoctorsSystem.jpg" width="50" height="50" alt="" /></p>
						<p>Doctors can Register to this site. After authentication of the registration doctors can enter into the Bengali Online Handwritten Prescription writing area</p>
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
    <td><input type="text" name="type" id="type" value="<%=type %>"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="button" id="button" value="Submit"></td>
  </tr>
  <tr>
      <td><a href="canvas.jsp?type=<%=type%>">New User</a></td>
    <td>&nbsp;</td>
  </tr>
  </table>
    </form>
  <table>
    <tr>
        <td><%=msg %></td>

    </tr>
  </table>
    </div>
					</li>

					<li>
						<h3><a href="http://www.cdackolkata.in//">Help Desk</a></h3>
                                                  <p><img src="images/Help-Desk.jpg" width="100" height="150" alt="" /></p>

					</li>
					<li>
						<h3><a href="#">some words</a></h3>
						<p><a href="#">some words.</a></p>
					</li>
				</ul>
				<p><a href="#" class="button-style">Read More</a></p>
			</div>
		</div>
	</div>

	<div id="footer">
		<p>some words <a href="http://www.cdackolkata.in"></a>. Photos by <a href="http://cdackolkata.in/"></a>.</p>
	</div>
</div>
</body>
              <script>
/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("menu");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
</html>
