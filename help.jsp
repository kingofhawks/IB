<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<style>
.help {font-size:13px;margin:0px 0px 0px 0px; 	color:#005FA3; /*background-color:#F5FFFA;*/*filter: progid:DXImageTransform.Microsoft.Gradient(startColorStr=#FFFFFF, endColorStr=#AFDBFF, gradientType=0); border:#3A8DCF 1px solid; overflow:hidden;}
#tipDiv {float:left; padding:4px 4px 4px 4px; text-align:left;font-size:13px; }
#helpDiv {float:left; padding:2px 2px 2px 2px; text-align:left;vertical-align:middle; color:#FF6009;line-height:21px; font-size:13px;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 2px;
	margin-bottom: 0px; overflow:hidden;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<BODY><table width="100%" height="54px" border="0" cellpadding="0" cellspacing="0" class="help">
  <tr>
    <td><div id="tipDiv"></div><div id="helpDiv"></div></td>
  </tr>
</table>

<SCRIPT LANGUAGE="JavaScript">
<!--
var http_request = false;
function setHelp(prid)
{
  var url = "/IB/getHelp.do?prid=" + prid;
  http_request = false;
  if (window.XMLHttpRequest)
  {
    http_request = new XMLHttpRequest();
    if (http_request.overrideMimeType)
    {
      http_request.overrideMimeType('text/html');
     
    }
  }
  else if (window.ActiveXObject)
  {
    try
    {
      http_request = new ActiveXObject("Msxml2.XMLHTTP");
    }
    catch (e)
    {
      try
      {
        http_request = new ActiveXObject("Microsoft.XMLHTTP");
      }
      catch (e)
      {
      }
    }
  }
  if (!http_request)
  {
    return false;
  }
  http_request.onreadystatechange = show;
  http_request.open('GET', url, true);
  http_request.send(); 
}
function show()
{
  if (http_request.readyState == 4)
  {
    if(http_request.status == 200)
    {
      try
      {
	    top.helpFrame.rows="44"; 
        document.getElementById("tipDiv").innerHTML="<img src=\"images/tips.gif\" border=\"0\">";
        document.getElementById("helpDiv").innerHTML="<strong>提示：</strong>" + http_request.responseText
      }
      catch(e)
      {
      }
    }
    else
    {
	  top.helpFrame.rows="0"; 
      document.getElementById("helpDiv").innerHTML="<strong><color=\"#FF0000\">对不起，无法获得相关的提示信息。</color></strong>";
    }
  }
  else
  {
    try
    {
	  top.helpFrame.rows="0"; 
      document.getElementById("helpDiv").innerText = "获取提示信息中…";
    }
    catch (e)
    {
    }
  }
}
//-->
</SCRIPT>
</BODY>
</HTML>
