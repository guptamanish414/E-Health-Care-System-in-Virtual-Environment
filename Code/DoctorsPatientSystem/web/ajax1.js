var isFirefox;
var isIE;

function getAjax()
{
	var XmlHttp;
	//Creating object of XMLHTTP in IE
	try
	{
		XmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
	}catch(e){
	try{
	XmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}catch(oc){
	XmlHttp = null;
	}
	}
	//Creating object of XMLHTTP in Mozilla and Safari
	if(!XmlHttp && typeof XMLHttpRequest != "undefined"){
	XmlHttp = new XMLHttpRequest();
	}
	return XmlHttp;
	}
	function sniffBrowserType() {
		isFirefox = ( navigator.appName == "Netscape" );
		isIE = (navigator.appName == "Microsoft Internet Explorer" );
		}
	function getElement( id ){
		if( isIE ) {
		return document.all[ id ];
		}else {
		return document.getElementById( id );
		}
		}
	function getPath(){

	sniffBrowserType();
	req = getAjax();
	url='gp?id='+getElement("id").value;
	alert(url);
	//url='check.php?id='+id;
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
    var chatbox=getElement("chatbox");
    chatbox.value=getElement("writebox").value;
    req.onreadystatechange = function(){
    if( req.readyState == 4 && req.status == 200 ) {
	var chatbox=getElement("chatbox");
	var message=req.responseText;
	result=message.split("^")
	chatbox.innerHTML=result[0];
}

}
    req.open('GET',url,true);
    req.send(null);
}

