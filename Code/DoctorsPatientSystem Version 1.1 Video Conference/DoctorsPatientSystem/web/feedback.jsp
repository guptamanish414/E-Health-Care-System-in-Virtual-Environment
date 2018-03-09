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
   <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <script type="text/javascript" src="jquery-2.0.2.min.js"></script>
       <script>
         $(document).ready(function(){
         $("#btnsb").click(function(){

                if($("#email").val()!="" && $("#val2").val()!="" && $("#val4").val()!="" && $("#val6").val()!=""
                    //&& $("#val8").val()!="" && $("#val10").val()!="" && $("#val12").val()!="" && $("#Country").val()!="" && $("#zip").val()!="" ){
                        && $("#val8").val()!="" && $("#val10").val()!="" && $("#val12").val()!="" && $("#ta2").val()!="" && $("#ta4").val()!=""  ){



                                //if((data != null && $("#select").val()=="Doctors")||(data==null && $("#select").val()=="Patients")){
                                    //$.post('fdbckactn',{id:$("#email").val(),name:$("#val2").val(),pswd:$("#val4").val(),mail:$("#val6").val(),addr:$("#val8").val(),place:$("#val0").val(),state:$("#val12").val(),country:$("#Country").val(),zip:$("#zip").val()},alert("Registered Succefully"));
                                    $.post('fdbckactn',{email:$("#email").val(),value2:$("#val2").val(),value4:$("#val4").val(),value6:$("#val6").val(),value8:$("#val8").val(),value10:$("#val10").val(),value12:$("#val12").val(),value14:$("#ta2").val(),value16:$("#ta4").val()},alert("Feedback filled Succefully"));

                               // else{alert("Some thing Wrong");}



            }
            else{
                alert("Some fields are blank");

            }

          });
        });
    </script>
    </head>

    <body bgcolor="#CF4A41" text="white">
        <%-- <img src="images/C-DAC2.png" width="200" height="200" alt="" align="right"/>--%>


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
	  <div id="sidebar">
        <div id="center_col">
          <h4> Feedback Form</h4>
          <table width="10%" border="0" cellspacing="0" cellpadding="5">
            <tr>
              <td>      
            <tr bgcolor="#FFF8E7">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b> E-mail Address:<font color="#FF0000"> *</font></b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><input name="text" type="text" id="email" style="font-family: Georgia; font-size: 16px; font-weight: normal; color: #000000; background-color: #FFFFFF; border: 2px solid #6B5829; vertical-align: middle; padding-left: 2px;" size="20" maxlength="100" /></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>How would you rate your opinion of our company?<font color="#FF0000"> *</font></b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <select name="select" id="val2" style="width:150px">
                  <option value="ALB">High</option>
                  <option value="ALG">Neutral</option>
                  <option value="AND">Low</option>
                  <option value="ANG">Very Low</option>
                  <option selected="selected" value="USA">Very High</option>
                </select>
              </font></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>How would you rate knowledge of our stuff?<font color="#FF0000"> *</font></b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <select name="select" id="val4" style="width:150px">
                  <option value="b2">Very Unknowledgable</option>
                  <option value="b3">Knowledgable</option>
                  <option value="b4">Neutral</option>
                  <option value="b5">Unknowledgable</option>
                  <option selected="selected" value="b6">Very Knowledgable</option>
                </select>
              </font></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>How reasonable do you find our costs?<font color="#FF0000"> *</font></b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <select name="select" id="val6" style="width:150px">
                  <option value="c2">Reasonable</option>
                  <option value="c3">Average</option>
                  <option value="c4">Very High</option>
                  <option selected="selected" value="c5">Very Reasonable</option>
                  <option value="c6">Unreasonable</option>
                </select>
              </font></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>How would you rate our courtesy?<font color="#FF0000"> *</font></b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <select name="select" id="val8" style="width:150px">
                  <option value="d2">Professional</option>
                  <option value="d3">Neutral</option>
                  <option value="d4">Unprofessional</option>
                  <option selected="selected" value="d5">Very Professional</option>
                  <option value="d6">Very Unprofessional</option>
                </select>
              </font></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>How would you rate appearance of our store?<font color="#FF0000"> *</font></b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <select name="select" id="val10" style="width:150px">
                  <option value="e2">Good</option>
                  <option value="e3">Fair</option>
                  <option value="e4">Poor</option>
                  <option selected="selected" value="e5">Excellent</option>
                  <option value="e6">Terrible</option>
                </select>
              </font></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>How willig are you to recommand our company to others?<font color="#FF0000"> *</font></b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <select name="select" id="val12" style="width:150px">
                  <option value="f2">Willing</option>
                  <option value="f3">Neutral</option>
                  <option value="f4"> Unwilling</option>
                  <option selected="selected" value="f5">Very Willing</option>
                  <option value="f6">Very Unwilling</option>
                </select>
              </font></td>
            </tr>
            <tr bgcolor="#FFFFFF">
              <td style="border-bottom: 4px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>Feel free to share any comments or suggestions you may have.</b></font></td>
              <td style="border-bottom: 4px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <textarea name="textarea" cols="20" rows="5" id="ta2" style="font-family: Georgia; font-size: 16px; font-weight: normal; color: #000000; background-color: #FFFFFF; border: 2px solid #6B5829; vertical-align: middle; padding-left: 4px;"></textarea>
              </font></td>
            </tr>
            <tr bgcolor="#FFF8E7">
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia"><b>Are there any products or services we don't currently carry that you would like to see?</b></font></td>
              <td style="border-bottom: 2px double #6B5829;"><font color="#000000" size="3" face="Georgia">
                <textarea name="textarea" cols="20" rows="" id="ta4" style="font-family: Georgia; font-size: 16px; font-weight: normal; color: #000000; background-color: #FFFFFF; border: 2px solid #6B5829; vertical-align: middle; padding-left: 4px;"></textarea>
              </font></td>
            </tr>
            <tr>
              <td><font color="#FF0000" size="1" face="Verdana, Arial, Helvetica, sans-serif"><b>*</b></font> <font size="1" face="Verdana, Arial, Helvetica, sans-serif">Required</font>
                  <button type="button" id="btnsb"> Submit</button></td>
              <td align="right"><p>&nbsp;</p>
                  <p>&nbsp;</p></td>
            </tr>
          </table>
          <!-- End myContactForm.com Form HTML -->
        </div>
      </div>
	   <div id="content">
			<h2>Present Features</h2>
			<p><img src="images/img06.jpg" width="722" height="75" alt="" /></p>
			<p>This is <strong>E-HEALTHCARE </strong>, a free, fully standard online healthcare website designed by <a href="http://www.cdackolkata.in">c-dac</a>.   The services  are from <a href="http://cdackolkata.in/"> </a>. This site is released under a <a href="http://www.cdackolkata.in/">c-dac</a> license, so you are pretty much free to use it accordingly) </p>

                        <p>The goal of this system is to bring the benefits of telemedicine to nursing home residents in an inexpensive, convenient manner. This can be achieved by demonstrating the feasibility of producing a portable telemedicine kit connected to a telemedicine network through video conferencing.
The nurse or primary care physician unpacks the kit, boots the tablet PC, and attaches peripherals required for the consultation.Textual notes, pen-inputted readings and observations, digital medical peripheral readings, and high-resolution still photographs are transmitted to the remote physician in real- or near real-time. The data for the session is encrypted and stored remotely and possibly locally as well. Telemedicine software features forms for these data that can be filled in automatically by digital medical peripherals, or through stylus or keyboard input from the nurse or primary care physician. Web based Online Bangla OHR s a real time communication among multiple clients. Once the clients have entered into the communicating system each client can
 Enter Bengali/English text through Online OHR to make the conversation more feasible and compact.
</p>
                      <img src="images/C-DAC2.png" height="200" width="200" alt=""/></div>
  </div>

	<div id="footer">
		<p>some words <a href="http://www.cdackolkata.in"></a>. Photos by <a href="http://cdackolkata.in/"></a>.</p>
	</div>
</div>
</body>
</html>

