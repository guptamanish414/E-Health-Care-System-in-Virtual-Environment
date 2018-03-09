<%-- 
    Document   : welcome
    Created on : Apr 17, 2013, 1:14:50 PM
    Author     : ASOK2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="jquery-2.0.2.min.js"></script>
        <%--<script type="text/javscript">
               $(document).ready(function(){
                   $("#send").click(function(){
                       $("#chatbox").val(function(p,c){
                           return c + $("#responsebox").val();
                       });
                   });
})
</script>--%>
        <script type="text/javascript" language="javascript" src="ajax.js"></script>
        <%--<script type="text/javascript" language="javascript" src="chat1.js"></script>--%>
        <link rel="stylesheet" type="text/css" href="chat.css">
        <title>JSP Page</title>
       
    </head>
    <body bgcolor="#CF4A41" text="white">
        <img src="images/img01.jpg" width="100" height="100" alt="" align="right"/>
        <%
        String id=null;
        id=session.getAttribute("id").toString();
        if(id.equals(null)){
            response.sendRedirect("idex.jsp");
        }else{%>
        <input type="text" id="user" value="<%out.print(id);%>"/>
            <%}
        %>
        <a href="logout?id=<%=id %>">Logout</a>
        <%--<a href="pres">Write Prescription</a><br>--%>
        <button type="button" onclick="">Open Application</button>
        <script type="text/javascript" language="javascript">
			function show(controlid,controlid1,controlid2,controlid3){
                                document.getElementById(controlid3).disabled=true;
				document.getElementById(controlid).style.visibility="visible";
                                document.getElementById(controlid1).style.visibility="visible";
                                document.getElementById(controlid2).style.visibility="visible";
			}
                        /*function addText(){
                            var text1=document.getElementById("chatbox").value;
                            var text2=document.getElementById("responsebox").value
                            var addtex=text1.concat(text2);
                            document.getElementById("chatbox").innerHTML=addtex;
                        }*/
                       /* function call(){
                            document.getElementById("chatbox").innerHTML=document.getElementById("responsebx").value;
                        }*/
                        function popUp(){
                            setInterval('chatResponse();',10000);
                           // var myvar= setInterval('chatResponse();',5000);
                           //setTimeout('chatResponse();',1000);

                        }

	</script>
        
        Check Patient's Availabilty:<input type="text" name="id" id="id"/><br>

        <div id="msg"></div><br>
        <button type="button" onclick="getAvaila();popUp();">Click Me</button><br>

        <a href="http:/192.168.3.2:8081/demo_audio_video.html" target="_blank">Start Video Conversation Here</a><br>


        Patient id:-<input type="text" name="patid" id="patid"/>
        <br/><a href="dwr">Download The Telemedicine application</a>
        <form action="uploadServlet" method="post" enctype="multipart/form-data">
        <div class="form-field">
            <label>Your Name: </label>
            <input type="text" name="name" size="20" />
        </div>
        <div class="form-field">
            <label>Your File: </label>
            <input type="file" name="document" size="25" />
        </div>
        <div class="btn-container">
            <input type="submit" value="Submit"/>
        </div>
    </form>
        <div id="chat">
            <button type="button" id="cbutton" onclick="show('chatbox','writebox','send','id')">Start Chat Here</button>
            <textarea id="chatbox" style="visibility:hidden"></textarea>
            <textarea id="writebox" style="visibility:hidden"></textarea>
            <textarea id="responsebox" style="visibility:hidden"></textarea>
            <%-- <button type="button" onclick="getChat();addText()" style="visibility:hidden" id="send">Send</button>--%>
            <button type="button" onclick="getChat()" style="visibility:hidden" id="send">Send</button>
       </div>
    </body>
</html>
