var http_request = false;
var spanId;
var searchVaule;
function searchCase()
{
  var url ="/IB/SearchNameByLable?lable="+document.getElementById("lable").value;
  
  http_request = false;
  if (window.XMLHttpRequest) {
    http_request = new XMLHttpRequest();
    if (http_request.overrideMimeType) {
      http_request.overrideMimeType('text/html');
    }
  } else if (window.ActiveXObject) {
    try {
      http_request = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
      try {
        http_request = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (e) {}
    }
  }

  if (!http_request) { return false; }
  
  http_request.onreadystatechange = showCont;
  http_request.open('GET', url + "&" + Math.random, true);
 // http_request.open('GET', url , true);
  http_request.send();
}

function showCont()
{ 
  if (http_request.readyState == 4) {
    if (http_request.status == 200) {
      try {
		searchVaule= http_request.responseText;//查询的内容;
		var ch=new Array();
			ch=searchVaule.split("-");
		var len=ch.length;
			spanId=document.body.getElementsByTagName("span");
		var	len1=spanId.length;
		if(searchVaule!="null")
		   {
				for(var j=0;j<len-1;j++)
				{
					for(var i=0;i<len1-1;i++)
					{  
					   if(spanId[i].getAttribute("id")==ch[j])
					   {
							document.getElementById(ch[j]).className="caseSearch";
						    document.getElementById("tips").style.display="";
					 		document.getElementById("tips").innerHTML="黄色标识为查询结果";
					   }
					}
				 }
		    }
	  } catch (e) {}
    } else {
      document.getElementById("tips").style.display="";
/*      document.getElementById("tips").innerHTML="<b><font color='#FF0000'>对不起，无法读取到相关查询信息。</font></b>";
*/      document.getElementById("tips").innerHTML="获取查询信息中…";
    }
  } else {
    try {
      document.getElementById("tips").style.display="";
      document.getElementById("tips").innerHTML="<b><font color='#FF0000'>对不起，没有找到</font></b>";
    /* document.getElementById("tips").innerHTML="获取查询信息中…";*/
    } catch (e) {}
  }
}