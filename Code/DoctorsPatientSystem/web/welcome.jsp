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
 <script type="text/javascript" src="jquery-2.0.2.min.js"></script>
        <script type="text/javascript" language="javascript" src="ajax.js"></script>
        <script>
               $(document).ready(function(){
                   $(window).load(function(){
                       $("#chat").hide();
                       $("#form-field").hide();
                       $("#form-field2").hide();
                       $("#patname").hide();
                       $("#show1").hide();
                   });
                   $("#clickMe2").click(function(){
                       $("#chat").show(1000);
                       $("#id").attr("disabled","disabled");
                   });
                    $("#clickMe4").click(function(){
                       $("#form-field2").show(1000);
                   });
                    $("#clickMe").click(function(){
                       $("#form-field").show(1000);
                   });
                   $("#endchat").click(function(){
                       $("#chat").hide(1000);
                       $("#id").removeAttr("disabled");
                   });
		$("#showpres").click(function(){
		    $("#patname").show(1000);
		$("#show1").show(1000);
            });
            

});

</script>
          <link rel="stylesheet" type="text/css" href="chat.css">

</head>
<body>
    <%
        String id=null;
        id=session.getAttribute("id").toString();
        if(id.equals(null)){
            response.sendRedirect("index.jsp");
        }else{%>
        <%--<input type="text" id="user" value="<%out.print(id);%>" disabled="true"/>--%>
            <%}
        %>
        <%--<a href="logout?id=<%=id %>">Logout</a>--%>
        <%--<a href="pres">Write Prescription</a><br>--%>
       <%-- <button type="button" onclick="">Open Application</button>--%>
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
                    <%-- <h1><a href="#">E-HEALTHCARE</a></h1>--%>
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
				<ul class="style2">
					<li class="first">
						<br>
                                                     <input type="text" id="user" value="<%out.print(id);%>" disabled="true"/>
 <a href="logout?id=<%=id %>"><font color="black">Logout</a>
        <div id="msg"></div>
        Check Patient's Availabilty:
        <input type="text" name="id" id="id"/>

		<button type="button" onclick="getAvaila();popUp();">CheckAvailability</button>
        <p><br>





            <%--Patient id:-<input type="text" name="patid" id="patid"/>--%>
        </p>
		 <p> &nbsp;<input id="clickMe4" type="button" value="Start Video Conversation" onclick="HideShow_video();" />
		 <div align="left" id="form-field2">
        <p><a href="http://192.168.3.9:8000/demos/demo_audio_video_simple.html" target="_blank">Start Video Conversation Here</a>&nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>
		</div>
        <p> &nbsp;<input id="clickMe" type="button" value="Start Telemedicine Application"/>

		<%--<a href="HideShow_ohr()">Start Telemedicine application</a>--%>
                <form action="FileUploadServlet?docname=<%out.print(id);%>" method="post" enctype="multipart/form-data">
        <div align="right" class="form-field" id="form-field">
          <p><a href="dwr">Download The Telemedicine application</a>          </p>
          <label>Upload Prescription to the Server <br>
          Your Name: </label>
          <input type="text" name="name" size="20" />
       <%-- </div>
        <div align="center" class="form-field">--%>
       
            <label> <br>
            Your File: </label>
            <input type="file" name="document" size="25" />
            <input name="submit" type="submit" value="Submit"/>
            
			<p></p>
            <%--</div>
        <div align="center" class="btn-container">--%>
        </div>
    </form>
	   <p> &nbsp;<input id="clickMe2" type="button" value="Start TextChat" />
               <input id="endchat" type="button" value="End Chat"/><br>
			   <input id="showpres" type="button" value="Show Prescription"/>
			   <form method="post" action="sps">
			   	<input type="text" name="patname" id="patname" value="Your Patient ID"/>
                                <input type="text" name="docid" value="<%out.print(id);%>" style="visibility: hidden"/>
				<input type="submit" value="submit" id="show1"/>

			   </form>

    <div align="right" id="chat">

        <textarea id="chatbox" ></textarea>
        <br>
            <textarea id="writebox" ></textarea>
            <br>
            <br>
            <button type="button" onclick="getChat();addText()"  id="send">Send</button>
            <button type="button" onclick="getChat()"  id="send">Send</button>
    </div>
                                                <p><img src="images/DoctorsSystem.jpg" width="50" height="50" alt="" /></p>
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

