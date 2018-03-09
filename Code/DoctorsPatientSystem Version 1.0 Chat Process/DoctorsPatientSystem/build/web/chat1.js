/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

var isFirefox;
var isIE;

function getAjax(){

    var xhr;
    try{
     xhr=new ActiveXObject("Msxml2.XMLHTTP");
    }catch(e){}
    try{
     xhr=new ActiveXObject("Microsoft.XMLHTTP");
    }catch(e){
        xhr=null;
    }
    if(!xhr && typeof XmlHttpRequest!=undefined){
        xhr=new XmlHttpRequest();
    }
    return xhr;
}

function browserType(){
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

function getchat(){
    browserType();
    req=getAjax();
    alert("Hello");
    url='cs?msg='+getElement("writebox")+'&receiver='+getElement("id").value+'&sender='+getElement("user").value;
    alert(url);
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