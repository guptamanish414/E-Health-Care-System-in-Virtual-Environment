 <%--
    Document   : WelcomPatients
    Created on : Apr 17, 2013, 3:40:31 PM
    Author     : ASOK2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>E-HEALTHCARE</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Dosis:300,400,500,600,700" rel="stylesheet" type="text/css" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
  <script type="text/javascript" language="javascript" src="ajax.js"></script>
        <script type="text/javascript" src="jquery-2.0.2.min.js"></script>
        <script>
            $(document).ready(function(){
                $(window).load(function(){
                    $("#vid").hide();
                    $("#pres").hide();
                    $("#chat").hide();
                });
                $("#vidCon").click(function(){
                    $("#vid").show(1000);
                });
                $("#getPres").click(function(){
                    $("#pres").show(1000);
                });
                $("#cbutton").click(function(){
                    $("#chat").show(1000);
                    $("#id").attr("disabled",true);
                });
                $("#endchat").click(function(){
                    $("#chat").hide(1000);
                    $("#id").removeAttr("disabled");
                });
                   });
            </script>
        <link rel="stylesheet" type="text/css" href="chat.css">
        <title>JSP Page</title>
    </head>

    <body>
        
    WelCome
    <%
        String id=null;
        String filename=null;
        id=session.getAttribute("id").toString();
        if(id.equals(null)){
            response.sendRedirect("idex.jsp");
        }else{%>


        
          <%  filename=id.concat(".pdf");
        }
        %>
         <script type="text/javascript" language="javascript">

                        function popUp(){
                            setInterval('chatResponse();',5000);
                           // var myvar= setInterval('chatResponse();',5000);
                            //setTimeout('chatResponse();',1000);

                        }
                        function show(){
                            $("#chat").show();
                        }

	</script>
        

<div id="wrapper">
	<div id="header">
		<div id="logo">
                    <%--<h1><a href="#">E-HEALTHCARE</a></h1>--%>
                    <p><img src="images/ehealthcare.jpg" width="450" height="95" alt="E-HEALTHCARE"/></p>
		</div>
		<div id="menu">
			<ul>
				<li><a href="home.jsp" accesskey="1" title="">Homepage</a></li>
				<li><a href="feedback.jsp" accesskey="2" title="">Your Feedback</a></li>
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				<li><a href="http://www.cdackolkata.in/" accesskey="5" title="">Contact Us&nbsp;&nbsp;</a></li>
                                <%-- <img src="images/building.jpg" width="200" height="85" alt="" />--%>
			</ul>
		</div>
	</div>
	<div id="page">
		<div id="content">
			<h2>Present Features</h2>
			<p><img src="images/img06.jpg" width="722" height="75" alt="" /></p>
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
                                 <input type="text" id="user" value="<%out.print(id);%>" disabled="disabled"/>
                                 <a href="logout?id=<%=id %>"><font color="black">Logout</font></a><br>
				<ul class="style2">
					<li class="first">
						 Enter Doctors ID:
       <input type="text" id="id" name="docid"/>
       <div id="msg"></div>
       <button type="button" onclick="getAvaila();popUp();">Check</button>
       <p>&nbsp;</p>
       <p><br>
          <%--<input type="text" name="id" value="<%=id%>" id="id1" style="visibility:hidden"/>--%>
		  <input type="button" name="vidCon" id="vidCon" value="Visit Doctors"/><br>
		  <div id="vid">
          <a href="http://192.168.3.2:8000/demos/demo_audio_video_simple.html" target="_blank">Start Video Conversation Here</a><br>
         	</div>


          <%--<a href="download?filename=<%=filename %>"><font color="white">Dowload Here</font></a>--%>

	   <input type="button" name="getPres" id="getPres" value="Get Your Presciptions"/>
	   <div id="pres">
       <form action="download" method="get">
            Please Enter Docter Id:-<input type="text" name="docid"/>
            <input type="text" name="filename" value="<%=filename %>" style="visibility:hidden"/><br>
            <input type="submit" value="Download Here"/>
    </form>
	</div>

        <br>
		<input type="button" id="cbutton" value="Chat With Doctor"/>
		<input type="button" id="endchat" value="End Chat"/>
        <div id="chat">

            <textarea id="chatbox"></textarea>
            <textarea id="writebox"></textarea>
            <%--<button type="button" onclick="getChat();addText();" style="visibility:hidden" id="send">Send</button>--%>
            <button type="button" onclick="getChat()" id="send">Send</button>
       </div>
                                                <p><img src="images/img04.jpg" width="90" height="90" alt="" /></p>
						<p>Doctors can Register to this site. After authentication of the registration doctors can enter into the Bengali Online Handwritten Prescription writing area</p>
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
</html>

