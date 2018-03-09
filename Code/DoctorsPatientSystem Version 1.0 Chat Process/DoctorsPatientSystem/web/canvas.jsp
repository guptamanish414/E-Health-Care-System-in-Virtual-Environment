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

        <link rel="stylesheet" type="text/css" href="style.css"/>
        <script type="text/javascript" src="jquery-2.0.2.min.js"></script>
       <script type="text/javascript" src="jquery-2.0.2.min.js"></script>
    <script>
        $(document).ready(function(){
                        $("#select").val("");
                        $("#select").change(function(){
                         // alert($("#typ").val());
                          if($("#select").val()!=$("#typ").val()){alert("Type Mismatch");}
                            if(($("#select").val()=='Patients')){
          // $("#btn4").on("click", function(){
                                //$("#select").val("Doctors");
                                $("#signature").hide(1000);
                            }
                            else{
                                $("#imageView").show(1000);

                            }
                        });


            $("#btn2").click(function(){
                if($("#userid").val()!="" && $("#username").val()!="" && $("#password").val()!="" && $("#mail").val()!=""
                    && $("#addr").val()!="" && $("#place").val()!="" && $("#state").val()!="" && $("#Country").val()!="" && $("#zip").val()!="" && $("#phone").val()!="" && $("#job").val()!="" && $("#ofc").val()!=""){

                                if(($("#password").val()!=$("#password1").val())||($("#mail").val()!=$("#mail1").val())){
                                    alert("Password or Email mismatch");
                        /*alert($("#password").val());
                        alert($("#password1").val());
                        alert($("#mail").val());
                        alert($("#mail1").val());*/
                        /*$("#userid").val("");
                        $("#username").val("");
                        $("#password").val("");
                        $("#password1").val("");
                        $("#mail").val("");
                        $("#mail1").val("");
                        $("#addr").val("");
                        $("#place").val("");
                        $("#state").val("");
                        $("#country").val("");
                        $("#zip").val("");
                        $("#phone").val("");*/
                                }
                            else{
                                if((data != null && $("#select").val()=="Doctors")||(data==null && $("#select").val()=="Patients")){
                                    $.post('save',{data: data,id:$("#userid").val(),name:$("#username").val(),pswd:$("#password").val(),mail:$("#mail").val(),addr:$("#addr").val(),place:$("#place").val(),state:$("#state").val(),country:$("#Country").val(),zip:$("#zip").val(),phone:$("#phone").val(),job:$("#job").val(),ofc:$("#ofc").val(),type:$("#select").val()},alert("Registered Succefully"));
                                    }
                                else{alert("Some thing Wrong");}


                            }
            }
            else{
                alert("Some fields are blank");
                /*$("#userid").val("");
                    $("#username").val("");
                    $("#password").val("");
                    $("#password1").val("");
                    $("#mail").val("");
                    $("#mail1").val("");
                    $("#addr").val("");
                    $("#place").val("");
                    $("#state").val("");
                    $("#country").val("");
                    $("#zip").val("");
                    $("#phone").val("");*/
            }

            });
        });
    </script>
       <% String msg=request.getParameter("msg");
   String type=request.getParameter("type");
        if(msg==null){
            msg="";
        }
        %>
        <title>Canvas Paint - Example 4</title>
    <style type="text/css"><!--
      #container { position: relative; }
      #imageView { border: 1px solid #000; }
      #imageTemp { position: absolute; top: 1px; left: 1px; }
    --></style>
    </head>

    <body bgcolor="#CF4A41" text="white">
        


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
						
      <a href="home.jsp"><font color="black">Home</font></a>
      <script type="text/javascript">
         /* function visibility(){
    document.getElementById("imageView").style.background ='yellow'

   [container].style.display='none';
     alert("not done");
  }*/
          var data;
function print_text(){
var canvas = document.getElementById("imageView");

var ctx = canvas.getContext("2d");

/*baseimage = new Image();
//baseimage.src    = 'c:\what.jpg';
baseimage.onload = function() {
    ctx.drawImage(baseimage,1,1);

    //var dataURL = canvas.toDataURL("image/png");
	//window.open(dataURL);
    //document.getElementById('canvasImg').src = dataURL;
	//document.write('<img src="'+dataURL+'"/>');
}*/



alert("success");
data = canvas.toDataURL('image/jpg');//window.open(data);

//document.write('<img src="'+data+'"/>');
var imag= document.getElementById("im2");
imag.src=data;

alert("done sucessfully!!!!");

}

      </script>
 <h1>Doctors/Patients Registration Form:-</h1>
        <div><input type="text" name="type" id="typ" value="<%=type %>" style="visibility:hidden"/></div>
    <label for="select"></label>
    
      <div id="signature1">
          <table>
               <tr>
        <td>User id:-</td>
        <td><label for="textfield3"></label>
          <input type="text" name="id" id="userid"></td>
      </tr>
      <tr>
        <td>Name</td>
        <td><label for="textfield4"></label>
          <input type="text" name="name" id="username"></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="password" id="password"></td>
      </tr>
      <tr>
        <td>Re type Ur Password </td>
        <td>
          <label>
          <input type="password" name="rePass" id="password1">
        </label></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><input type="text" name="email" id="mail"></td>
      </tr>
      <tr>
        <td>Confirm Email </td>
        <td><input type="text" name="remail" id="mail1"></td>
      </tr>
      <tr>
        <td>Adress</td>
        <td><input type="text" name="address" id="addr"></td>
      </tr>
      <tr>
        <td>City/Town/Village</td>
        <td><input type="text" name="place" id="place"></td>
      </tr>
      <tr>
        <td>State</td>
        <td><input type="text" name="state" id="state"></td>
      </tr>
      <tr>
        <td>Country</td>
        <td><select name="Country" id="Country" style="width:150px">
	<option value="AFG">AFGHANISTAN</option>
	<option value="ALB">ALBANIA</option>
	<option value="ALG">ALGERIA</option>
	<option value="AND">ANDORRA</option>
	<option value="ANG">ANGOLA</option>
	<option value="ANU">ANGUILLA</option>
	<option value="AAB">ANTIGUA AND BARBUDA</option>
	<option value="ARG">ARGENTINA</option>
	<option value="ARM">ARMENIA</option>
	<option value="ARU">ARUBA</option>
	<option value="ASC">ASCENSION ISLAND</option>
	<option value="AUS">AUSTRALIA</option>
	<option value="AST">AUSTRIA</option>
	<option value="AZR">AZERBAIJAN</option>
	<option value="AZO">AZORES ISLANDS</option>
	<option value="BHM">BAHAMAS</option>
	<option value="BAH">BAHRAIN</option>
	<option value="BAN">BANGLADESH</option>
	<option value="BAR">BARBADOS</option>
	<option value="BEL">BELARUS</option>
	<option value="BLG">BELGIUM</option>
	<option value="BLZ">BELIZE</option>
	<option value="BEN">BENIN</option>
	<option value="BER">BERMUDA</option>
	<option value="BUT">BHUTAN</option>
	<option value="BOL">BOLIVIA</option>
	<option value="BOS">BOSNIA-HERZEGOVINA</option>
	<option value="BOT">BOTSWANA</option>
	<option value="BVI">BR VIRGIN ISL</option>
	<option value="BRA">BRAZIL</option>
	<option value="BRU">BRUNEI</option>
	<option value="BUL">BULGARIA</option>
	<option value="BFA">BURKINA FASO</option>
	<option value="BRN">BURUNDI</option>
	<option value="CAB">CAMBODIA</option>
	<option value="CAM">CAMEROON</option>
	<option value="CAN">CANADA</option>
	<option value="CAP">CAPE VERDE</option>
	<option value="CAY">CAYMAN ISLANDS</option>
	<option value="CAR">CENTRAL AFRICAN REPU</option>
	<option value="CHD">CHAD</option>
	<option value="CHI">CHILE</option>
	<option value="CNA">CHINA</option>
	<option value="COL">COLOMBIA</option>
	<option value="COM">COMOROS</option>
	<option value="CON">CONGO</option>
	<option value="CKI">COOK ISLANDS</option>
	<option value="COS">COSTA RICA</option>
	<option value="CRO">CROATIA</option>
	<option value="CUB">CUBA</option>
	<option value="CYP">CYPRUS</option>
	<option value="CZR">CZECH REPUBLIC</option>
	<option value="DRC">DEMOCRATIC RPB CONGO</option>
	<option value="DEN">DENMARK</option>
	<option value="DJI">DJIBOUTI</option>
	<option value="DMN">DOMINICA</option>
	<option value="DOM">DOMINICAN REPUBLIC</option>0
	<option value="ETI">EAST TIMOR</option>
	<option value="ECU">ECUADOR</option>
	<option value="EGY">EGYPT</option>
	<option value="ELS">EL SALVADOR</option>
	<option value="EGU">EQUATORIAL GUINEA</option>
	<option value="ERI">ERITREA</option>
	<option value="EST">ESTONIA</option>
	<option value="ETH">ETHIOPIA</option>
	<option value="FAE">FAROE ISLANDS</option>
	<option value="FAL">FALKLAND ISLANDS</option>
	<option value="FIJ">FIJI</option>
	<option value="FIN">FINLAND</option>
	<option value="FRA">FRANCE</option>
	<option value="FGU">FRENCH GUIANA</option>
	<option value="FPO">FRENCH POLYNESIA</option>
	<option value="GAB">GABON</option>
	<option value="GAM">GAMBIA</option>
	<option value="GEO">GEORGIA</option>
	<option value="GER">GERMANY</option>
	<option value="GHA">GHANA</option>
	<option value="GIB">GIBRALTAR</option>
	<option value="GRE">GREECE</option>
	<option value="GRN">GREENLAND</option>
	<option value="GRA">GRENADA</option>
	<option value="GAD">GUADELOUPE</option>
	<option value="GUA">GUATEMALA</option>
	<option value="GUI">GUINEA</option>
	<option value="GUB">GUINEA-BISSAU</option>
	<option value="GUY">FRENCH GUYANA</option>
	<option value="HAI">HAITI</option>
	<option value="HON">HONDURAS</option>
	<option value="HKO">HONG KONG</option>
	<option value="HUN">HUNGARY</option>
	<option value="ICE">ICELAND</option>
	<option value="IND">INDIA</option>
	<option value="IDN">INDONESIA</option>
	<option value="IRA">IRAN, ISLAMIC REP OF</option>
	<option value="IRQ">IRAQ</option>
	<option value="IRE">IRELAND</option>
	<option value="ISR">ISRAEL</option>
	<option value="ITA">ITALY</option>
	<option value="IVO">COTE D\&#39;IVOIRE</option>
	<option value="JAM">JAMAICA</option>
	<option value="JAP">JAPAN</option>
	<option value="JOR">JORDAN</option>
	<option value="KAZ">KAZAKHSTAN</option>
	<option value="KEN">KENYA</option>
	<option value="KIR">KIRIBATI</option>
	<option value="KUW">KUWAIT</option>
	<option value="KYR">KYRGYZSTAN</option>
	<option value="LAL">LAOS</option>
	<option value="LAT">LATVIA</option>
	<option value="LEB">LEBANON</option>
	<option value="LEE">LEEWARD ISL</option>
	<option value="LES">LESOTHO</option>
	<option value="LIB">LIBERIA</option>
	<option value="LBY">LIBYA</option>
	<option value="LIE">LIECHTENSTEIN</option>
	<option value="LIT">LITHUANIA</option>
	<option value="LUX">LUXEMBOURG</option>
	<option value="MAC">MACAO</option>
	<option value="MCD">FYR MACEDONIA</option>
	<option value="MAD">MADAGASCAR</option>
	<option value="MAL">MALAWI</option>
	<option value="MLY">MALAYSIA</option>
	<option value="MLS">MALDIVES</option>
	<option value="MLI">MALI</option>
	<option value="MLT">MALTA</option>
	<option value="MIS">MARSHALL ISLANDS</option>
	<option value="MAR">MARTINIQUE</option>
	<option value="MAU">MAURITANIA</option>
	<option value="MAT">MAURITIUS</option>
	<option value="MEX">MEXICO</option>
	<option value="FSM">MICRONESIA</option>
	<option value="MLD">MOLDAVIA</option>
	<option value="MON">MONACO</option>
	<option value="MNG">MONGOLIA</option>
	<option value="MTG">MONTENEGRO</option>
	<option value="MNT">MONTSERRAT</option>
	<option value="MOR">MOROCCO</option>
	<option value="MOZ">MOZAMBIQUE</option>
	<option value="MYA">BURMA</option>
	<option value="NAM">NAMIBIA</option>
	<option value="NAU">NAURU</option>
	<option value="NEP">NEPAL</option>
	<option value="NAN">DUTCH ANTILLES</option>
	<option value="NET">NETHERLANDS</option>
	<option value="NCA">NEW CALEDONIA</option>
	<option value="NZE">NEW ZEALAND</option>
	<option value="NIC">NICARAGUA</option>
	<option value="NGR">NIGER</option>
	<option value="NIG">NIGERIA</option>
	<option value="NKO">NORTH KOREA</option>
	<option value="NIR">NORTHERN IRELAND</option>
	<option value="NOR">NORWAY</option>
	<option value="OMA">OMAN</option>
	<option value="PAK">PAKISTAN</option>
	<option value="PAL">PALAU</option>
	<option value="PAN">PANAMA</option>
	<option value="PNG">PAPUA NEW GUINEA</option>
	<option value="PAR">PARAGUAY</option>
	<option value="PER">PERU</option>
	<option value="PHI">PHILLIPPINES</option>
	<option value="PIT">PITCAIRN ISLAND</option>
	<option value="POL">POLAND</option>
	<option value="POR">PORTUGAL</option>
	<option value="PRI">PUERTO RICO</option>
	<option value="QAT">QATAR</option>
	<option value="REU">REUNION</option>
	<option value="ROM">ROMANIA</option>
	<option value="RUS">RUSSIA</option>
	<option value="RWA">RWANDA</option>
	<option value="SKN">SAINT KITTS AND NEVI</option>
	<option value="SAM">SAMOA</option>
	<option value="SAN">SAN MARINO</option>
	<option value="SAO">SAO TOME/PRINCI</option>
	<option value="SAU">SAUDI ARABIA</option>
	<option value="SEN">SENEGAL</option>
	<option value="SER">SERBIA</option>
	<option value="SEY">SEYCHELLES</option>
	<option value="SIE">SIERRA LEONE</option>
	<option value="SIN">SINGAPORE</option>
	<option value="SLR">SLOVAK REPUBLIC</option>
	<option value="SLV">SLOVENIA</option>
	<option value="SOL">SOLOMON ISLANDS</option>
	<option value="SOM">SOMALIA</option>
	<option value="SAF">SOUTH AFRICA</option>
	<option value="RKO">SOUTH KOREA</option>
	<option value="SPA">SPAIN</option>
	<option value="SRI">SRI LANKA</option>
	<option value="SLT">ST LUCIA</option>
	<option value="SUD">SUDAN</option>
	<option value="SUR">SURINAME</option>
	<option value="SWZ">SWAZILAND</option>
	<option value="SWE">SWEDEN</option>
	<option value="SWI">SWITZERLAND</option>
	<option value="SYR">SYRIA</option>
	<option value="TAI">TAIWAN (ROC)</option>
	<option value="TAD">TAJIKISTAN</option>
	<option value="TAN">TANZANIA</option>
	<option value="THA">THAILAND</option>
	<option value="TOG">TOGO</option>
	<option value="TON">TONGA</option>
	<option value="TRI">TRINIDAD AND TOBAGO</option>
	<option value="TUN">TUNISIA</option>
	<option value="TUR">TURKEY</option>
	<option value="TKN">TURKMENISTAN</option>
	<option value="TCI">TURKS CAICOS</option>
	<option value="TUV">TUVALU</option>
	<option value="UGA">UGANDA</option>
	<option value="UKR">UKRAINE</option>
	<option value="UAE">UNITED ARAB EMIRATES</option>
	<option value="WAL">UNITED KINGDOM</option>
	<option selected="selected" value="USA">UNITED STATES</option>
	<option value="URU">URUGUAY</option>
	<option value="UZB">UZBEKISTAN</option>
	<option value="VAN">VANUATU</option>
	<option value="VEN">VENEZUELA</option>
	<option value="VIE">VIETNAM</option>
	<option value="VIR">BR VIRGIN ISLANDS</option>
	<option value="DRY">YEMEN</option>
	<option value="ZAM">ZAMBIA</option>
	<option value="ZIM">ZIMBABWE</option>

</select></td>
      </tr>
      <tr>
        <td>Zip/Postal Code </td>
        <td><input type="text" name="zip" id="zip"></td>
      </tr>
      <tr>
        <td>Phone</td>
        <td><input type="text" name="phone" id="phone"></td>
      </tr>
       <tr>
        <td>Occupation</td>
        <td><input type="text" name="job" id="job"></td>
      </tr>
       <tr>
        <td>Institution</td>
        <td><input type="text" name="ofc" id="ofc"></td>
      </tr>
      <tr>
        <td>Type</td>
        <td><select name="select" size="1" id="select" >

          <option>Doctors</option>
            <option>Patients</option>
        </select></td>
      </tr>

      <tr>
        <td>&nbsp;</td>
        <td><%=msg %></td>
      </tr>
          </table>
    <p>&nbsp;</p>
      </div>
					</li>
				</ul>
				
				<ul class="style2">
				  <li class="first">
				    <div id="signature">
				      <p>
				        <label>Signature Panel: <select id="dtool">
				          
				          <option value="pencil">Pencil</option>
				          </select>
			            </label>
			          </p>
				      <input id="clickMe" type="button" value="clickme" onclick="print_text()" />
        <input id="clickMe" type="button" value="clearcanvas" onClick="clear_text();"/>
        <%--<input id="clickMe" type="button" value="invisible" onClick="visibility();"/>--%>
				      
				      <div id="container">
				        <canvas id="imageView" width="400" height="300">				          </canvas>
			          </div>
                                    
				      <img src="" width="300" height="132" alt="" id="im2" name="canvas1"/>  </div>
				    <button type="button" id="btn2">Click Me To Submit</button>
				    <div id="msg1"></div>
				    <script type="text/javascript" src="example4.js"></script>
			        <script type="text/javascript" src="canvas.js"></script>
				    
				    
				    
			        <a href="home.jsp"><font color="white">Home</font></a>
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

