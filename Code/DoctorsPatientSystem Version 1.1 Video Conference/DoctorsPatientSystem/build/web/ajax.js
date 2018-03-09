//Global variables
var timeID;
var refreshRate = 2000; // two seconds
var rnd = Math.random();

var isFirefox;
var isIE;
var flag=1;
var cht=null;
//var XmlHttp;
var AjaxServerPageName;
AjaxServerPageName = "server.jsp?contentId=";

//Creating and setting the instance of appropriate XMLHTTP Request object to a ?XmlHttp? variable
function getAjax()
{
var XmlHttp;

//Creating object of XMLHTTP in IE
try
{
XmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
}
catch(e)
{
try
{
XmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
}
catch(oc)
{
XmlHttp = null;
}
}
//Creating object of XMLHTTP in Mozilla and Safari
if(!XmlHttp && typeof XMLHttpRequest != "undefined")
{
XmlHttp = new XMLHttpRequest();
}
return XmlHttp;
}

// Get browser type
function sniffBrowserType() {
isFirefox = ( navigator.appName == "Netscape" );
isIE = (navigator.appName == "Microsoft Internet Explorer" );
}
function getElement( id )
{
if( isIE ) {
return document.all[ id ];
}
else {
return document.getElementById( id );
}
}

function setFocus(ControlName)
{
var control = document.getElementById(ControlName);
if( control != null )
{
control.focus();
}
}
function FocusWindow()
{

//TODO: FireFox doesn't work?
window.focus();

}

function getAvaila(){

sniffBrowserType();
req = getAjax();
url='av?id='+getElement("id").value;
req.onreadystatechange = function(){
if( req.readyState == 4 && req.status == 200 ) {
	var msg=getElement("msg");
	var message=req.responseText;
	result=message.split("^")
	msg.innerHTML=result[0];
}

}

req.open( 'GET', url, true );
req.send( null );

}

function getChat(){
    sniffBrowserType();
    req=getAjax();
    url='cs?msg='+getElement("writebox").value+'&receiver='+getElement("id").value+'&sender='+getElement("user").value;
    //alert(url);
    var chatbox=getElement("chatbox");
    chatbox.innerHTML+='\n' + getElement("user").value + ':' +getElement("writebox").value + '\n';
    req.onreadystatechange = function(){
    if( req.readyState == 4 && req.status == 200 ) {
	//var chatbox=getElement("responsebox");
	var message=req.responseText;
	result=message.split("^");
        //alert(result[0]);
	//chatbox.innerHTML=getElement("id").value+ ':' + result[0] + '\n';
        getElement("writebox").value="";
}

}
    req.open('GET',url,true);
    req.send(null);
}


    function chatResponse(){
        sniffBrowserType();
        req=getAjax();
        url='crs?sender='+getElement("id").value+'&receiver='+getElement("user").value;
        //alert(url);
        req.onreadystatechange=function(){
        if( req.readyState == 4 && req.status == 200 ) {
	
        var chatbox=getElement("chatbox").value;
	var message=req.responseText;
	result=message.split("^")
        if( result[0] == null ){

        }
        else{
            if(cht != result[0]){
                cht=result[0];
	show('chat');
        //var chk;
       // alert(result[0]);

       // var addtext=chatbox.concat(cht);
        getElement("chatbox").innerHTML+=getElement("id").value + ':' + cht ;

            }
        }
      }
       }
        
       req.open('GET',url,true);
       req.send(null);
    }

    function ToSave(){
        sniffBrowserType();
        req=getAjax();
        //var data=getElement("im1").dataURL('image/jpg');
        url='save';
        alert(url);
        req.onreadystatechange=function(){
            if( req.readyState == 4 && req.status == 200 ) {

                var message=getElement("msg1").value;
                var mess=req.responseText;
                result=mess.split("^")
                message.innerHTML=result[0];
            }

        }
        req.open('POST',url,false);
        req.setRequestHeader('Content-Type','application/upload');
        req.send(data);
    }