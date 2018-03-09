<%-- 
    Document   : comments
    Created on : 18 Jul, 2013, 10:32:00 AM
    Author     : Somdatta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body bgcolor="#CF4A41" text="white">
         <form action="" method="POST">
        <img src="images/img01.jpg" width="100" height="100" alt="" align="right"/>
        <div class="cstmrInfo floatfix" >
    <div style="font-size: 1.2em; color: Red;">
      <span id="ContentPlaceHolder1_ContentPlaceHolderRight_lblMessage"></span>
    </div>
    <hr />
    <p class="req floatRight">*Required field</p>
    <ol>
      <li>
        <label><em>*</em>Name:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtName" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtName" />
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_RequiredFieldValidator2" style="color:Red;visibility:hidden;">*</span>
      </li>
       <li>
        <label><em>*</em>Email:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtEmail" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtEmail" />
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_RequiredFieldValidator1" style="color:Red;visibility:hidden;">*</span>
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_regExEmail" style="color:Red;margin-left:-12px;display:none;">Incorrect email format.</span>
      </li>
      <li>
        <label><em>*</em>Confirm email:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtConfirmEmail" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtConfirmEmail" />
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_cmprValid" style="color:Red;visibility:hidden;">Emails do not match.</span>
      </li>
      <li>
        <label>Position:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtPosition" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtPosition" />
      </li>
      <li>
        <label>Institution/Affiliation:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtCompany" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtCompany" />
      </li>
      <li>
        <label>Department:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtDepartment" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtDepartment" class="text textSmall shippingControls" />
      </li>
      <li>
        <label> Address:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtAddress1" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtAddress1" />
      </li>
      <li>
        <label>Address 2:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtAddress2" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtAddress2" />
      </li>
      <li>
        <label>City/Town:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtCity" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtCity" />
      </li>
      <li>
        <label>Country:</label>
        <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$ddlCountry" id="ContentPlaceHolder1_ContentPlaceHolderRight_ddlCountry" style="width:150px">
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
	<option value="DOM">DOMINICAN REPUBLIC</option>
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

</select>
      </li>
      <li>
        <label>State/Province:</label>
        <span id="spanContentPlaceHolder1_ContentPlaceHolderRight_ddlState">
<script type="text/javascript">
        $(document).ready(function () {
            selectedStateContentPlaceHolder1_ContentPlaceHolderRight_ddlState="";
            LoadedWorld = {};
            $.get("/WebResource.axd?d=DCtUs2wdd_KjsrpTgNehFPNU6JoMWWnbXFd2yT2tAP4rOsgtOCAMtLHOLny6F7pweYY7HIFPNG924kamDvBeod__6Mx3x8Y4AnxZYGxomvKhUzdv7mDIQIhls_KXvDAt0&t=635058705656252563", function (data) {
                LoadedWorld = data;
                var cntry = $("#ContentPlaceHolder1_ContentPlaceHolderRight_ddlCountry");
                if(cntry.val() != '')$("#ContentPlaceHolder1_ContentPlaceHolderRight_ddlCountry").trigger("change");
            });
            $("#ContentPlaceHolder1_ContentPlaceHolderRight_ddlCountry").change(function ()
            {
                    $statesOb = $(LoadedWorld).find("world > countries > country > code:contains('" + $(this).val() + "')").siblings().find("state");
                    if ($(this).val() != '' && $statesOb.length > 0) {
                    $ddlState = $('<select name="ContentPlaceHolder1_ContentPlaceHolderRight_ddlState" id="ContentPlaceHolder1_ContentPlaceHolderRight_ddlState" class="" />');$statesOb.each(function () {;
                    $("<option>" + $(this).find("name").text() + "</option>").appendTo($ddlState);});
                    $ddlState.val(selectedStateContentPlaceHolder1_ContentPlaceHolderRight_ddlState);
                    $("#spanContentPlaceHolder1_ContentPlaceHolderRight_ddlState").empty();
                    $("#spanContentPlaceHolder1_ContentPlaceHolderRight_ddlState").append($ddlState);
                }
                else if ($(this).val() != ''){
                    $txtState = $('<input name="ContentPlaceHolder1_ContentPlaceHolderRight_ddlState" id="ContentPlaceHolder1_ContentPlaceHolderRight_ddlState" class="" />');
                    $txtState.val(selectedStateContentPlaceHolder1_ContentPlaceHolderRight_ddlState);
                    $("#spanContentPlaceHolder1_ContentPlaceHolderRight_ddlState").empty();
                    $("#spanContentPlaceHolder1_ContentPlaceHolderRight_ddlState").append($txtState);
                }else{$("#spanContentPlaceHolder1_ContentPlaceHolderRight_ddlState").empty(); }
            });
        });
</script></span>
      </li>

      <li>
        <label>ZIP/Postal Code</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtZip" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtZip" style="width:150px" />
      </li>

      <li>
        <label>Phone:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtPhone" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtPhone" />

      </li>
      <li>
        <label>Fax:</label>
        <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtFax" type="text" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtFax" />
      </li>
      <hr />
      <li>
        <label><em>*</em>Question regarding:</label>
        <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$ddlEmailGroups" id="ContentPlaceHolder1_ContentPlaceHolderRight_ddlEmailGroups">
	<option value="" cssclass="contactDD">Select one...</option>
	<option value="685">Advertising and sponsorships</option>
	<option value="686">Conferences</option>
	<option value="687">Corporate website</option>
	<option value="688">Editorial</option>
	<option value="689">Electronic access (e-journals)</option>
	<option value="690">Reprints and permissions</option>
	<option value="691">Subscriptions and orders</option>
	<option value="693">Admin</option>
	<option value="695">Online Manuscript Submission/Peer Review</option>
	<option value="696">Custom Collections</option>

</select>
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_rfvDepartments" style="color:Red;visibility:hidden;">*</span>
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_cvDepartments" style="visibility:hidden;"></span>
      </li>
      <li>
        <label><em id="emProduct" style="display: none">*</em>Product:</label>
        <select name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$ddlPubs" id="ContentPlaceHolder1_ContentPlaceHolderRight_ddlPubs" class="contactDD" style="width:425px;">
	<option value="" title="Select product...">Select product...</option>
	<option value="356" title=" 19 Articles You Can Use: Series of Planned Giving Reprintables"> 19 Articles You Can Use: Series of Planned Giving Reprintables</option>
	<option value="621" title="3D Printing and Additive Manufacturing">3D Printing and Additive Manufacturing</option>
	<option value="311" title="Advances in Preschool Psychopharmacology">Advances in Preschool Psychopharmacology</option>
	<option value="368" title="Advances in Tissue Engineering, Volume 1: Angiogenesis">Advances in Tissue Engineering, Volume 1: Angiogenesis</option>
	<option value="375" title="Advances in Tissue Engineering, Volume 2: Stem Cells">Advances in Tissue Engineering, Volume 2: Stem Cells</option>
	<option value="605" title="Advances in Wound Care">Advances in Wound Care</option>
	<option value="280" title="Advances in Wound Care, Volume 1">Advances in Wound Care, Volume 1</option>
	<option value="391" title="Advances in Wound Care, Volume 2">Advances in Wound Care, Volume 2</option>
	<option value="1" title="AIDS Patient Care and STDs">AIDS Patient Care and STDs</option>
	<option value="2" title="AIDS Research and Human Retroviruses">AIDS Research and Human Retroviruses</option>
	<option value="3" title="Alternative and Complementary Therapies">Alternative and Complementary Therapies</option>
	<option value="4" title="Antioxidants &amp; Redox Signaling">Antioxidants &amp; Redox Signaling</option>
	<option value="118" title="ASSAY and Drug Development Technologies">ASSAY and Drug Development Technologies</option>
	<option value="99" title="Astrobiology">Astrobiology</option>
	<option value="172" title="Bariatric Surgical Practice and Patient Care">Bariatric Surgical Practice and Patient Care</option>
	<option value="611" title="Big Data">Big Data</option>
	<option value="110" title="Biopreservation and Biobanking ">Biopreservation and Biobanking </option>
	<option value="609" title="BioResearch Open Access">BioResearch Open Access</option>
	<option value="111" title="Biosecurity and Bioterrorism: Biodefense Strategy, Practice, and Science">Biosecurity and Bioterrorism: Biodefense Strategy, Practice, and Science</option>
	<option value="6" title="Biotechnology Law Report">Biotechnology Law Report</option>
	<option value="319" title="Botanical Medicine: From Bench to Bedside">Botanical Medicine: From Bench to Bedside</option>
	<option value="389" title="Brain Connectivity">Brain Connectivity</option>
	<option value="173" title="Breastfeeding Medicine">Breastfeeding Medicine</option>
	<option value="322" title="Briefings in Palliative, Hospice, and Pain Medicine &amp; Management">Briefings in Palliative, Hospice, and Pain Medicine &amp; Management</option>
	<option value="8" title="Cancer Biotherapy and Radiopharmaceuticals">Cancer Biotherapy and Radiopharmaceuticals</option>
	<option value="9" title="Cellular Reprogramming">Cellular Reprogramming</option>
	<option value="384" title="Childhood Obesity">Childhood Obesity</option>
	<option value="360" title="Clinical Natural Medicine Handbook">Clinical Natural Medicine Handbook</option>
	<option value="254" title="Controversies in Science and Technology Volume 2: From Climate to Chromosomes">Controversies in Science and Technology Volume 2: From Climate to Chromosomes</option>
	<option value="374" title="Controversies in Science and Technology Volume 3: From Evolution to Energy">Controversies in Science and Technology Volume 3: From Evolution to Energy</option>
	<option value="10" title="Cyberpsychology, Behavior, and Social Networking">Cyberpsychology, Behavior, and Social Networking</option>
	<option value="11" title="Diabetes Technology &amp; Therapeutics">Diabetes Technology &amp; Therapeutics</option>
	<option value="594" title="Disruptive Science and Technology">Disruptive Science and Technology</option>
	<option value="13" title="DNA and Cell Biology">DNA and Cell Biology</option>
	<option value="364" title="Doctor of the Heart: My Life in Medicine">Doctor of the Heart: My Life in Medicine</option>
	<option value="300" title="Ecopsychology">Ecopsychology</option>
	<option value="101" title="Election Law Journal: Rules, Politics, and Policy">Election Law Journal: Rules, Politics, and Policy</option>
	<option value="15" title="Environmental Engineering Science">Environmental Engineering Science</option>
	<option value="259" title="Environmental Justice">Environmental Justice</option>
	<option value="108" title="Foodborne Pathogens and Disease">Foodborne Pathogens and Disease</option>
	<option value="588" title="Games for Health Journal">Games for Health Journal</option>
	<option value="16" title="Gaming Law Review and Economics: Regulation, Compliance, and Policy">Gaming Law Review and Economics: Regulation, Compliance, and Policy</option>
	<option value="17" title="Genetic Engineering &amp; Biotechnology News">Genetic Engineering &amp; Biotechnology News</option>
	<option value="18" title="Genetic Testing and Molecular Biomarkers">Genetic Testing and Molecular Biomarkers</option>
	<option value="65" title="High Altitude Medicine &amp; Biology">High Altitude Medicine &amp; Biology</option>
	<option value="317" title="History of Telemedicine">History of Telemedicine</option>
	<option value="603" title="Human Gene Therapy Methods">Human Gene Therapy Methods</option>
	<option value="614" title="Human Gene Therapy Package">Human Gene Therapy Package</option>
	<option value="19" title="Human Gene Therapy Program:">Human Gene Therapy Program:</option>
	<option value="140" title="Industrial Biotechnology">Industrial Biotechnology</option>
	<option value="142" title="Internet Gaming Law: Second Edition, Revised and Expanded">Internet Gaming Law: Second Edition, Revised and Expanded</option>
	<option value="387" title="Journal of Adolescent and Young Adult Oncology">Journal of Adolescent and Young Adult Oncology</option>
	<option value="24" title="Journal of Aerosol Medicine and Pulmonary Drug Delivery">Journal of Aerosol Medicine and Pulmonary Drug Delivery</option>
	<option value="26" title="Journal of Alternative and Complementary Medicine, The">Journal of Alternative and Complementary Medicine, The</option>
	<option value="388" title="Journal of Caffeine Research">Journal of Caffeine Research</option>
	<option value="29" title="Journal of Child and Adolescent Psychopharmacology">Journal of Child and Adolescent Psychopharmacology</option>
	<option value="31" title="Journal of Computational Biology">Journal of Computational Biology</option>
	<option value="32" title="Journal of Endourology and Part B, Videourology">Journal of Endourology and Part B, Videourology</option>
	<option value="33" title="Journal of Gynecologic Surgery">Journal of Gynecologic Surgery</option>
	<option value="35" title="Journal of Interferon &amp; Cytokine Research">Journal of Interferon &amp; Cytokine Research</option>
	<option value="36" title="Journal of Laparoendoscopic &amp; Advanced Surgical Techniques and Part B, Videoscopy">Journal of Laparoendoscopic &amp; Advanced Surgical Techniques and Part B, Videoscopy</option>
	<option value="38" title="Journal of Medicinal Food">Journal of Medicinal Food</option>
	<option value="39" title="Journal of Neurotrauma">Journal of Neurotrauma</option>
	<option value="40" title="Journal of Ocular Pharmacology and Therapeutics">Journal of Ocular Pharmacology and Therapeutics</option>
	<option value="41" title="Journal of Palliative Medicine">Journal of Palliative Medicine</option>
	<option value="42" title="Journal of Women&#39;s Health">Journal of Women&#39;s Health</option>
	<option value="618" title="LGBT Health">LGBT Health</option>
	<option value="114" title="Lymphatic Research and Biology">Lymphatic Research and Biology</option>
	<option value="233" title="Medical Acupuncture">Medical Acupuncture</option>
	<option value="115" title="Metabolic Syndrome and Related Disorders">Metabolic Syndrome and Related Disorders</option>
	<option value="44" title="Microbial Drug Resistance">Microbial Drug Resistance</option>
	<option value="20" title="Monoclonal Antibodies in Immunodiagnosis and Immunotherapy">Monoclonal Antibodies in Immunodiagnosis and Immunotherapy</option>
	<option value="619" title="MOOCs FORUM">MOOCs FORUM</option>
	<option value="610" title="New Space">New Space</option>
	<option value="601" title="Nucleic Acid Therapeutics">Nucleic Acid Therapeutics</option>
	<option value="43" title="OMICS: A Journal of Integrative Biology">OMICS: A Journal of Integrative Biology</option>
	<option value="48" title="Pediatric Allergy, Immunology, and Pulmonology">Pediatric Allergy, Immunology, and Pulmonology</option>
	<option value="128" title="Photomedicine and Laser Surgery">Photomedicine and Laser Surgery</option>
	<option value="235" title="Planned Giving Today">Planned Giving Today</option>
	<option value="306" title="Planned Giving Today Annuity CD">Planned Giving Today Annuity CD</option>
	<option value="271" title="Planned Giving Today Bequest CD">Planned Giving Today Bequest CD</option>
	<option value="612" title="Planned Giving Today Binder">Planned Giving Today Binder</option>
	<option value="272" title="Planned Giving Today Endowment CD">Planned Giving Today Endowment CD</option>
	<option value="270" title="Planned Giving Today Marketing CD - Expanded">Planned Giving Today Marketing CD - Expanded</option>
	<option value="366" title="PokerWoman: How to Win at Love, Life, and Business using the Principles of Poker">PokerWoman: How to Win at Love, Life, and Business using the Principles of Poker</option>
	<option value="301" title="Population Health Management">Population Health Management</option>
	<option value="127" title="Rejuvenation Research">Rejuvenation Research</option>
	<option value="616" title="Soft Robotics">Soft Robotics</option>
	<option value="125" title="Stem Cells and Development">Stem Cells and Development</option>
	<option value="53" title="Surgical Infections">Surgical Infections</option>
	<option value="252" title="Sustainability: The Journal of Record">Sustainability: The Journal of Record</option>
	<option value="54" title="Telemedicine and e-Health">Telemedicine and e-Health</option>
	<option value="380" title="Therapeutic Hypothermia and Temperature Management">Therapeutic Hypothermia and Temperature Management</option>
	<option value="55" title="Thyroid">Thyroid</option>
	<option value="261" title="Tissue Engineering, Part C: Methods">Tissue Engineering, Part C: Methods</option>
	<option value="595" title="Tissue Engineering, Parts A, B, &amp; C">Tissue Engineering, Parts A, B, &amp; C</option>
	<option value="67" title="Vector-Borne and Zoonotic Diseases">Vector-Borne and Zoonotic Diseases</option>
	<option value="390" title="Videoscopy&amp;trade;">Videoscopy&amp;trade;</option>
	<option value="367" title="Videourology&amp;trade;">Videourology&amp;trade;</option>
	<option value="620" title="Violence and Gender">Violence and Gender</option>
	<option value="57" title="Viral Immunology">Viral Immunology</option>
	<option value="122" title="Zebrafish">Zebrafish</option>

</select>
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_rfvPubs" style="color:Red;visibility:hidden;">*</span>
      </li>
      <li>
        <label><em>*</em>Question:</label>
        <textarea name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolderRight$txtQuestion" rows="4" cols="30" id="ContentPlaceHolder1_ContentPlaceHolderRight_txtQuestion" style="width:350px;">
</textarea>
        <span id="ContentPlaceHolder1_ContentPlaceHolderRight_RequiredFieldValidator3" style="color:Red;vertical-align:top;visibility:hidden;">*</span>
      </li>

      <li class="reCaptcha"><label>&nbsp;</label>

       <div style="margin-left:150px"> <script type="text/javascript">
		var RecaptchaOptions = {
			theme : 'white',
			tabindex : 0
		};

</script><script type="text/javascript" src="http://api.recaptcha.net/challenge?k=6LcjW8sSAAAAAChH_9Qhb7TGyydwAibIVUGH_CQX ">

</script><noscript>
		<iframe src="http://api.recaptcha.net/noscript?k=6LcjW8sSAAAAAChH_9Qhb7TGyydwAibIVUGH_CQX " width="500" height="300" frameborder="0">

		</iframe><br>

		<textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea><input name="recaptcha_response_field" value="manual_challenge" type="hidden" />
</noscript>
</div>

      </li>

     <label>&nbsp;</label>
  

    </ol>
    </div>
        <input type="submit" name="button" id="button" value="Submit"/>
  <script type="text/javascript">

<!--
  function ValidateDepartments(source, args) {
            var val = args.Value;
            if (val == "685" || val == "688" || val == "689" || val == "690" || val == "692" || val == "695" ) {
                $("#emProduct").show();
                ValidatorEnable(ContentPlaceHolder1_ContentPlaceHolderRight_rfvPubs, true);
            }
            else {
                $("#emProduct").hide();
                ValidatorEnable(ContentPlaceHolder1_ContentPlaceHolderRight_rfvPubs, false);
            }
        }
// -->
    </script>




         </form>

    <!--end of CONTENT CONTAINER -->

    </body>
</html>
