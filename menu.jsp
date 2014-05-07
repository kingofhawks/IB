<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.witsoft.bean.common.SessionManageBean" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html>
<head>

<title>Menu</title>
<meta name="Description" content="国际结算模拟系统5.0版" />
<meta name="Copyright" content="本页版权北京永基实创科技有限公司所有。All Rights Reserved" />
<base onmouseover="window.status='国际结算模拟系统 V5.0 ';return true" />
<script language="JavaScript" src="common/MzTreeView10.js"></script>
<SCRIPT LANGUAGE="JavaScript">
<!--
//开始
function document.oncontextmenu() {event.returnValue = false;} //屏蔽鼠标右键
function document.ondragstart() {event.returnValue = false;} //
function window.onhelp() {return false;} //屏蔽F1帮助
function document.onkeydown()
{
  if ((window.event.altKey) && ((window.event.keyCode==37) || (window.event.keyCode==39))) {
    //屏蔽 Alt+方向键← 和 Alt+方向键→
    event.returnValue = false;
  }

  if (event.keyCode==8) {
    //屏蔽退格删除键
    if (event.srcElement.type != "text" && event.srcElement.type != "textarea" && event.srcElement.type != "password") {
      event.keyCode = 0;
      event.returnValue = false;
    }
  }

  if ((event.keyCode==116) || (event.ctrlKey && event.keyCode==82)) {
    //屏蔽 F5 刷新键  Ctrl+R
    event.keyCode = 0;
    event.returnValue = false;
  }

  if (event.keyCode == 122) {event.keyCode = 0; event.returnValue = false;} //屏蔽F11
  if (event.ctrlKey && event.keyCode == 78) event.returnValue = false; //屏蔽Ctrl+n
  if (event.shiftKey && event.keyCode == 121) event.returnValue = false; //屏蔽shift+F10
  if (window.event.srcElement.tagName == "A" && window.event.shiftKey)
    window.event.returnValue = false; //屏蔽shift加鼠标左键新开一网页
  if ((window.event.altKey) && (window.event.keyCode == 115)) {
    //屏蔽Alt+F4
    window.showModelessDialog("about:blank","","dialogWidth:1px;dialogheight:1px");
    return false;
  }
}
//结束

function Trim(strValue){return strValue.replace(/^\s*|\s*$/g,"");}
function SetCookie(sName, sValue){document.cookie = sName + "=" + escape(sValue)+";expires=Fri, 31 Dec 2050 23:59:59 GMT;";}
function GetCookie(sName){
	var aCookie = document.cookie.split(";");
	for (var i=0; i < aCookie.length; i++){
		var aCrumb = aCookie[i].split("=");
		if (sName == Trim(aCrumb[0])){
			return unescape(aCrumb[1]);
		}
	}
	return null;
}
function savecols(){
	if (document.body.offsetWidth>=100){
		SetCookie("datacols",document.body.offsetWidth+",*");
	}
}
window.onresize=savecols;
//-->
</SCRIPT>
<style>
body,td{font:12px verdana; cursor:default;color:#08346B;}
body {
	margin:0px 0px 0px 2px;
	scrollbar-face-color:#BEE2FF;
	scrollbar-highlight-color:#EBF2F9;
	scrollbar-shadow-color:#C6C7D6;
	scrollbar-3dlight-color:#C6C7D6;
	scrollbar-arrow-color:#000000;
	scrollbar-track-color:#FFFFFF;
	scrollbar-darkshadow-color:#FFFFFF;
	background-color: #F6F9FD;
}

table {table-layout:fixed;}

/**/td.menuTable_top_left, td.menuTable_top_right, td.menuTable_bottom_left, td.menuTable_bottom_right{width:6px; height:6px; background-image:url(images/menuTable_top_left.gif); background-attachment: fixed; background-repeat: no-repeat;}
td.menuTable_top_left {background-image:url(images/menuTable_top_left.gif);}
td.menuTable_top_right {background-image:url(images/menuTable_top_right.gif);}
td.menuTable_bottom_left {background-image:url(images/menuTable_bottom_left.gif);}
td.menuTable_bottom_right {background-image:url(images/menuTable_bottom_right.gif);}

td.menuTable_top_x, .menuTable_bottom_x{height:6px; background-attachment: fixed; background-repeat: repeat-x;}
td.menuTable_top_x{background-image:url(images/menuTable_top_x.gif)};
td.menuTable_bottom_x{background-image:url(images/menuTable_bottom_x.gif);}

td.menuTable_left_y, .menuTable_right_y {background-attachment: fixed; background-repeat: repeat-y;}
td.menuTable_left_y{background-image:url(images/menuTable_left_y.gif);}
td.menuTable_right_y{background-image:url(images/menuTable_right_y.gif);}
td.menuTable_main{background-color:#ffffff; vertical-align:top;}

#deeptree{width:100%;height:100%;overflow:auto;vertical-align:top;background-color:#F6F9FD; padding-top:6px}

a {color:#08346B;text-decoration:none;padding-left:3px; font-size:13px;}

#caseRes{width:100%;height:100%;overflow:auto;vertical-align:top;
filter: progid:DXImageTransform.Microsoft.Gradient(startColorStr=#FFFFFF, endColorStr=#DDECF9, gradientType=0);}
.treetitle{
border-top: #ccc 1px solid ; 
border-left: #ccc 1px solid ; 
border-bottom: #ccc 1px solid ; 
border-right: #ccc 1px solid ; 
height:38;
text-align:left;
cursor:hand;
}
.casetitle
{
border-top: #ccc 1px solid ; 
border-bottom: #ccc 1px solid ; 
border-right: #ccc 1px solid ; 
height:38;
text-align:left;
cursor:hand;
}

</style>
<script language="JavaScript">
<!--
function rHelp(url)
{
	top.helpFrame.setHelp(getQueryString("PRID",url));
}
function getQueryString(str,urlString)
{
    var rs=new RegExp("(^|)"+str+"=([^\&]*)(\&|$)","gi").exec(urlString),tmp;
    if(tmp=rs){return tmp[2];}else{return false;}
}
<%
 com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                    .getAttribute("user");

String id=new SessionManageBean().findByUsidAndSessionId(user.getUsid(),"caseId");%>	

//-->
</script>
</head>

<body>
<table width="100%" height="100%" border="0" cellspacing="0"  cellpadding="0">
    <tr>
        <td class="menuTable_top_left"></td>
        <td class="menuTable_top_x" style="background-color:#F6F9FD"></td>
        <td class="menuTable_top_right"></td>
    </tr>
    <tr>
        <td class="menuTable_left_y"></td>
        <td class="menuTable_main" valign="top">
		<div id="deeptree" style="display:block"></div>
        <%
        String role = request.getParameter("role");
        if (role != null && !role.equals("")) {
           
            user.setRole(role);
            session.setAttribute("user", user);
        }
        %> <script language="JavaScript">
		00<!--
		<%out.print(new com.witsoft.bean.system.TreeBean().getTree(((com.witsoft.common.UserBean)session.getAttribute("user")).getRole()));%>
		//-->
		</script></td>
        <td class="menuTable_right_y"></td>
    </tr>
    <tr>
        <td class="menuTable_bottom_left"></td>
        <td class="menuTable_bottom_x"></td>
        <td class="menuTable_bottom_right"></td>
    </tr>
</table>

</body>
</html>
