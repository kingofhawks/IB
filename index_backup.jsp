<!DOCTYPE html>
<html>
<head>
<%@ page contentType="text/html; charset=GB2312"%>
<title>国际结算模拟系统</title>
<meta name="Description" content="国际结算模拟系统5.0版" />
<meta name="Copyright" content="本页版权公司所有。All Rights Reserved" />
<base onmouseover="window.status='国际结算模拟系统 V5.0 ';return true" />

<!-- Bootstrap core CSS -->
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">

<style>
body {margin:0px;}
body, table {font-size:12px;}
td.submit {padding:4px;}
/*input.text {border:1px solid #000000; height:22px; width:114px; robin:expression(this.autocomplete='off'); font-size:12px;}*/
input.submit_btn {border:0px; height:59px; width:83; background-image:url(images/login_submit.gif); cursor:hand;}
.bank_div {border:1px solid #000000; width:114px; height:18px; clip:rect(0px,135px,17px,0px);overflow:hidden;}
#brno {font-size:12px; height:16px; position:relative; margin:-2px;width:116px;border:0px;}
.sele_div{border:1px solid #000000; width:114px; height:18px; clip:rect(0px,135px,17px,0px);overflow:hidden;}
.selectBox {font-size:12px; height:16px; position:relative; margin:-2px;width:115px;border:0px;}
.errDiv {color:#FF0000; padding:2px 1px 2px 1px; font-weight:bold;}
/*
a:link {color:#000000;text-decoration:none;}
a:visited {color: #445980;text-decoration: none;}
a:hover {color:#FAAA05; text-decoration:underline;}
*/
.version {color:#FF0000;}
.kangL {border:1px solid #6185B9;  font-size:12px;}
.kangXD {border:1px solid #c4c4c4; background-color: #F5F5F5; font-size:12px; width:195px; height:45px; text-align:center; vertical-align:middle;}
.redVer {color:#FF0000; font-size:12px; font-family:Arial, Helvetica, sans-serif;}
a.flash:link {color:#ff0000;text-decoration:none;font-weight:bold;}
a.flash:visited {color: #ff0000;text-decoration: none;font-weight:bold;}
a.flash:hover {color:#ff0000; text-decoration:underline;font-weight:bold;}

.blue {color: #003399}

.blog-masthead {
    background-color: #428bca;
    -webkit-box-shadow: inset 0 -2px 5px rgba(0,0,0,.1);
    box-shadow: inset 0 -2px 5px rgba(0,0,0,.1);
}

    /* Nav links */
.blog-nav-item {
    position: relative;
    display: inline-block;
    padding: 10px;
    font-weight: 500;
    color: #cdddeb;
}
.blog-nav-item:hover,
.blog-nav-item:focus {
    color: #fff;
    text-decoration: none;
}

    /*
  * Footer
  */

.blog-footer {
    background-color: #428bca;
    color: #428bca;
    padding: 40px 0;
    text-align: center;
    border-top: 1px solid #e5e5e5;
}
.blog-footer p:last-child {
    margin-bottom: 0;
}

</style>
<script language="javascript" type="text/javascript"
	src="common/loginScript.js"></script>
<script language="javascript">

function logout(){
document.getElementById("stunews").innerHTML='<table width="95%" border="0" cellpadding="0" cellspacing="0" class="text"><tr><td width="36%" height="25" align="right" valign="middle">用户编号：</td><td width="64%" valign="middle"><input name="usid" type="text" class="text" id="usid" onKeyDown="if (event.keyCode==13) {event.keyCode=9;}" style="ime-mode:disabled"></td></tr><tr><td height="25" align="right" valign="middle">用户密码：</td><td valign="middle"><input name="pswd" type="password" class="text" id="pswd" maxLength="6" onKeyDown="if (event.keyCode==13) {setLogin();}"></td></tr></tr><tr><td height="25" align="right" valign="middle">&nbsp;</td><td valign="middle"><input type="image" name="imageField" src="/IB/images/login.gif"  onClick="setLogin();return false">&nbsp;<input type="image" name="cancle" src="/IB/images/cancle.gif" width="53" height="23" onClick="cancle();return false"></td></tr></table>';
document.getElementById("logoutmethod").innerHTML='';
HidExam();
}

function DisplayExam()
{   
	if(document.all["ok"].style.display=="none")
	{
		document.all["ok"].style.display="block";
		document.all["ok1"].style.display="none";
	}
	else
	{
		document.all["ok"].style.display="none";
		document.all["ok1"].style.display="block";
	}

}
function HidExam()
{
    if(document.all["ok"].style.display=="block")
    {
        document.all["ok"].style.display="none";
        document.all["ok1"].style.display="block";
    }
    else
    {
        document.all["ok"].style.display="block";
        document.all["ok1"].style.display="none";
    }

}
</script>
<script>
function cancle(){
document.getElementById("usid").value="";
document.getElementById("pswd").value="";
}

</script>
</head>
<body onLoad="init()">
<div class="blog-masthead">
    <div class="container">
        <nav class="blog-nav">
            <a class="blog-nav-item" href="#">
                <img src="resources/images/logo_pic.png" alt="">
            </a>
        </nav>
    </div>
</div>
<form name="form1" method="post" action="#" onSubmit="return doLogin()" onKeyPress="if(event.keyCode == 13)event.returnValue = false">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle">
                <table width="778" height="526" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="530">
						<div id="ok" style="display:block">
                           <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="530" height="526">
                              <div id="flash">
                              <param name="movie" value="UNmain.swf">
                                <param name="quality" value="high">
                                <embed src="UNmain.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="530" height="526"></embed>
                          </object>
						  </div>
						  <div id="ok1" style="display:none">
                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="530" height="526">
                                <param name="movie" value="main.swf">
                                <param name="quality" value="high">
                                <embed src="main.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="530" height="526"></embed>
                          </object>
						  </div>
                        </td>
						<td bgcolor="#FFFFFF" width="2"></td>
                        <td width="246" valign="bottom" background="/IB/images/login_bg.gif">
                            <table width="246" height="310" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="30%">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="110" align="center" valign="top"><img src="/IB/images/logoTitle.gif" width="219" height="105"></td>
                                </tr>
                                <tr>
                                  <td height="330" align="center"><table width="212" height="160"  border="0" cellpadding="0" cellspacing="0" background="/IB/images/loginbg.gif">
                                    <tr>
                                      <td width="212"  align="center" valign="middle"><div id="stunews">
                                        <table width="95%" border="0" cellpadding="0" cellspacing="0" class="text">
                                          <tr>
                                            <!--<td width="36%" height="28" align="right" valign="middle">用户编号：</td>        -->
                                            <td  width="100%" height="28"  align="right" valign="middle">
                                               <input name="usid" placeholder="用户编号" type="search" class="form-control" autofocus required id="usid" onKeyDown="if (event.keyCode==13) {event.keyCode=9;}" maxlength="16"  style="ime-mode:disabled">
                                            </td>
                                          </tr>
                                          <tr>
                                            <td valign="middle"><input name="pswd" placeholder="用户密码" type="password" class="form-control" id="pswd" required maxlength="6" onKeyDown="if (event.keyCode==13) {setLogin('');}">                                            </td>
                                          </tr>
                                          <tr>
                                            <td valign="bottom">
                                                <!--
                                                <input type="image" name="imageField" src="/IB/images/login.gif" width="53" height="23" onClick="setLogin('');return false">&nbsp;<input type="image" name="cancle" src="/IB/images/cancle.gif" width="53" height="23" onClick="cancle();return false">
                                                -->
                                                <button class="btn btn-lg btn-primary btn-block" type="submit" onClick="setLogin('');return false">登录</button>
                                            </td>
                                          </tr>
                                        </table>
                                      </div>
                                          <table>
                                            <tr>
                                              <TD></TD>
                                              <TD><div id="logoutmethod" class="errDiv"></div></TD>
                                            </tr>
                                            <tr>
                                              <td><div id="errMsg" class="errDiv">
                                                <%
//System.out.println("--->"+request.getSession().getAttribute("loginnews"));
if(request.getSession().getAttribute("errMsg")!=null){
System.out.print("");
//out.println("<script LANGUAGE=\"JavaScript\">showErr(\""+request.getSession().getAttribute("errMsg")+"\");</script>");
out.println(request.getSession().getAttribute("errMsg"));
request.getSession().removeAttribute("errMsg");
}

%>
                                              </div></td>
                                            </tr>
                                          </table>
                                        <noscript>
                                          <div class="errDiv"><nobr>注意：您需要启用Javascript才能正常使用本系统。</nobr></div>
                                        </noscript>                                      </td>
                                    </tr>
                                  </table></td>
                                </tr>
                          </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="53" align="center" valign="middle" background="/IB/images/indexbg.gif"></td>
                                </tr>
                            </table>
                      </td>
                    </tr>
                    <!--
                    <tr>
                        <td height="22" colspan="3" align="center" valign="middle">本页使用flash技术，如不能正常显示，请<a href="/IB/install-flash-player.exe" class="flash">单击此处</a>，下载flash播放插件</td>
                    </tr>     -->
                </table>
            </td>
        </tr>
    </table>
</form>

<div class="blog-footer">
    <p><a class="blue" href="http://www.xindajd.com.cn/">版权所有@北京信达佳鼎科技有限公司</a>  <span class="redVer"><span class="blue">Version：</span>5.08.06.001</span></p>

    <p>
        <a class="blue" href="#">回到顶部</a>
    </p>
</div>


<SCRIPT LANGUAGE="JavaScript">
<!--
var http_request = false;
function setLogin(sign)
{
  var url="";
 document.getElementById("errMsg").innerHTML='';
  if(sign =='true'){
  //alert("------------");
   url = "/IB/Login?sign="+sign;
  }else{
  url = "/IB/Login?usid="+document.forms[0].usid.value+"&pswd="+document.forms[0].pswd.value;
  }
  //alert(url);
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
      var text = http_request.responseText;     
     if(text.length==14){       
       window.location.href("/IB/temp1.jsp");
       return;
       }
     
      if(text.substring(0,1)=='/'){
      window.location=text  
     
      }else if(text.indexOf('</')!=-1){
          document.getElementById("stunews").innerHTML=text;
         document.getElementById("errMsg").innerHTML= '';
         document.getElementById("logoutmethod").innerHTML='<input type="image" onclick="logout()" src="/IB/images/quit.gif">';
        DisplayExam();   
      }else{
      document.getElementById("stunews").innerHTML='<table width="95%" border="0" cellpadding="0" cellspacing="0" class="text"><tr><td width="36%" height="25" align="right" valign="middle">用户编号：</td><td width="64%" valign="middle"><input name="usid" type="text" class="text" id="usid" onKeyDown="if (event.keyCode==13) {event.keyCode=9;}" style="ime-mode:disabled"></td></tr><tr><td height="25" align="right" valign="middle">用户密码：</td><td valign="middle"><input name="pswd" type="password" class="text" id="pswd" maxLength="6" onKeyDown="if (event.keyCode==13) {setLogin();}"></td></tr></tr><tr><td height="25" align="right" valign="middle">&nbsp;</td><td valign="middle"><input type="image" name="imageField" src="/IB/images/login.gif">&nbsp;<input type="image" name="cancle" src="/IB/images/cancle.gif" width="53" height="23" onClick="cancle();return false"></td></tr></table>';      
      document.getElementById("errMsg").innerHTML= text;
      }
     // alert(text);
        
       // document.getElementById("flash").innerHTML="<strong>提示：</strong>" + http_request.responseText;
      }
      catch(e)
      {
      }
    }
    else
    {
      document.getElementById("stunews").innerHTML="<strong><color=\"#FF0000\">对不起，无法获得相关的提示信息。</color></strong>";
    }
  }
  else
  {
    try
    {
      document.getElementById("stunews").innerHTML = "<div class='kangXD'><br>系统正在检查登录信息，请稍等…<br></div>";
    }
    catch (e)
    {
    }
  }
}
//-->
<%
//System.out.println("--->"+request.getSession().getAttribute("loginnews"));
if(request.getSession().getAttribute("loginnews")!=null){
request.getSession().removeAttribute("loginnews");
out.println("setLogin('true');");
}

%>
</SCRIPT>



</body>
</html>
