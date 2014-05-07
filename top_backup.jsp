<!DOCTYPE  HTML  PUBLIC  "-//W3C//DTD  HTML  4.0  Transitional//EN">   
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>
<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>国际结算模拟系统</title>
<script type="text/javascript" src="common/default.js"></script>
<style>
body,table {margin:0px; font-size:12px;color:#08346B;behavior: url('/IB/common/mouse.htc') }
td.systemInfo_title {color:#FFFFFF; vertical-align:middle; text-align:center;}
td.systemInfo_date {vertical-align:middle; text-align:right;}
td.systemInfo_middle{background:url(images/top_systemInfo_bg.gif)}
td.systemInfo_anounce{ text-align:right;}
.userInfo{background-image:url(/IB/images/userInfo.gif);white-space:nowrap;}
.personalInfo {text-transform : uppercase;color:#FF6643;}
#roleSelectDiv{position:relative; display:none; border:1px solid #000000; width:127px; height:18px; clip:rect(0px,117px,17px,0px);overflow:hidden; top:14px; left:40px;zindex:1px;
}
#roleSelect {font-size:12px; height:14px; position:relative; margin:-2px;width:129px;border:0px; }
#changeRoleDiv {cursor:hand;}
a {behavior:url('/IB/common/link.htc')}
body,td,th {
	color: #006EC5;
}

</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>

<%String id=request.getParameter("id");%>

<script language="javascript">
<!--
function reSetFrames() 
{ 
var url ="cases.do?flag=load&id=<%=id%>";
var name = "newwindowtop";
var features = "height=425,width=264,top=200,left=780,scrollbars=yes,resizable=no,location=no";
var bankWindow=window.open(url, name, features);
if (!bankWindow) {
  bankWindow = window.open(url,name,features);
}

if (!bankWindow) {
  window.location.replace(url)
} else {
  window.opener=null;
  window.close();
  bankWindow.focus();
}}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script> 
</head>

<body onLoad="top.window.focus(),MM_preloadImages('images/btn_chgRole_o.gif','images/authorization_o.gif','images/btn_competition_o.gif','images/btn_ansManage_o.gif','images/btn_viewAns_o.gif','images/btn_settings_o.gif','images/btn_view_o.gif','images/btn_viewlog_o.gif','images/btn_mydz_o.gif','images/btn_caseedit_o.gif','images/btn_loginOut_o.gif')">


 <SCRIPT language=JavaScript>
/*<!-- Begin
var windowW=214 // wide
var windowH=398 // high
var windowX = 260 // from left
var windowY = 100 // from top
var urlPop = "cases.do?flag=load&id=<%=id%>";
var title =  "案例查看"
var autoclose = true
// do not edit below this line
s = "width="+windowW+",height="+windowH;
var beIE = document.all?true:false
function openFrameless() {
if (beIE) {
NFW = window.open("","popFrameless","fullscreen,"+s);
NFW.blur();
window.focus();
NFW.resizeTo(windowW,windowH);
NFW.moveTo(windowX,windowY);
var frameString=""+
"<html>"+
"<head>"+
"<title>"+title+"</title>"+
"</head>"+
"<frameset rows='*,0' framespacing=0 border=0 frameborder=0>"+
"<frame name='top' src='"+urlPop+"' scrolling=auto>"+
"<frame name='bottom' src='about:blank' scrolling='no'>"+
"</frameset>"+
"</html>";
NFW.document.open();
NFW.document.write(frameString);
NFW.document.close();
}
else {
NFW = window.open(urlPop,"popFrameless","scrollbars,"+s);
NFW.blur();
window.focus();
NFW.resizeTo(windowW,windowH);
NFW.moveTo(windowX,windowY);
}
NFW.focus();
if (autoclose) {
window.onunload = function(){NFW.close();}
   }
}
//  End -->*/
</SCRIPT>


<table width="100%" height="88" border="0" cellpadding="0" cellspacing="0" background="/IB/images/topbg.gif">
  <tr>
    <td width="252" rowspan="2"><img src="images/top_left.gif" width="252" height="88"></td>
    <td width="74%" height="40"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" >
      <tr>
        <td align="right" valign="top"><%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session.getAttribute("user");%>
              <table width="550" height="28" border="0" cellpadding="0" cellspacing="0" class="userInfo">
                <tr>
                  <td width="550" align="right" nowrap>当前银行编号：<span
                            class="personalInfo">
                    <%if(user!=null&&user.getBrno()!=null){out.print(user.getBrno());}%>
                    </span>&nbsp;&nbsp; 当前用户编号：<span class="personalInfo">
                      <%if(user!=null&&user.getUsid()!=null){out.print(user.getUsid());}%>
                  </span>&nbsp;&nbsp; 当前角色：<span id="currentRole"
                            class="personalInfo"></span>&nbsp;&nbsp;&nbsp;&nbsp;</td> </tr>
            </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" align="right" cellpadding="0"            cellspacing="0">
      <tr>
	  <td width="56"></td>
        <td width="151" background="/IB/images/btn_chgRole.gif" style="background-repeat:no-repeat"><div id="roleSelectDiv">
          <select name="select" id="roleSelect"
                    onblur="$('roleSelectDiv').style.display='none';$('changeRoleDiv').style.display='';$('currentRole').innerText=this.options[this.selectedIndex].text;"
                    onchange="this.blur();top.leftFrame.location.replace('menu.jsp?role='+this.value);top.mainFrame.location.replace('announcement.do?sign=stu')">
            <%if (session.getAttribute("rildArray") != null) {
            out.print(session.getAttribute("rildArray"));
            session.removeAttribute("rildArray");
        }%>
          </select>
        </div>
              <script language="javascript" type="text/javascript">try{$("currentRole").innerText = $("roleSelect").options[$("roleSelect").selectedIndex].text}catch(e){}</script>
          <div id="changeRoleDiv"
                    onclick="this.style.display='none';$('roleSelectDiv').style.display='block';$('roleSelect').focus()"><img
                    src="images/btn_chgRole.gif" name="Image7" width="150" height="40"
                    border="0" id="Image7" onMouseOver="MM_swapImage('Image7','','images/btn_chgRole_o.gif',1)" onMouseOut="MM_swapImgRestore()"></div></td>
        <%if(user!=null&&user.getRole()!=null&&(user.getRole().equals("9999")||user.getRole().equals("9998"))){%>
        <td width="60"><a href="/IB/authorizationAction.do"
                    target="_parent"><img
                    src="images/authorization.gif" name="Image8" width="60"
                    height="40" border="0" id="Image8" onMouseOver="MM_swapImage('Image8','','images/authorization_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
        <%}%>
        <logic:equal name="user" property="role" value="9998">
          <td width="40"><a href="/IB/systemManage/grade/gradeList.jsp"
                        target="mainFrame"><img
                        src="images/btn_competition.gif" name="Image6" width="40"
                        height="40" border="0" id="Image6" onMouseOver="MM_swapImage('Image6','','images/btn_competition_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          <td width="60"><a
                        href="/IB/announcement.do?sign=teacher"
                        target="mainFrame"><img
                        src="images/btn_ansManage.gif" name="Image5" width="60"
                        height="40" border="0" id="Image5" onMouseOver="MM_swapImage('Image5','','images/btn_ansManage_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
        </logic:equal>
        <td width="60"><a href="announcement.do?sign=stu" target="mainFrame"><img
                    src="images/btn_viewAns.gif" name="Image1" width="60" height="40"
                    border="0" id="Image1" onMouseOver="MM_swapImage('Image1','','images/btn_viewAns_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
        <%--                 <%if(user!=null&&user.getRole()!=null&&user.getRole().equals("9999")){%><td width="70"><a href="/IB/systemManage/systemTableManage/bankPrid.jsp" target="mainFrame"><img--%>
        <%--                    src="images/btn_bankset.gif" width="70" height="20"--%>
        <%--                    border="0"></a></td><%}%>--%>
        <td width="60"><a href="/IB/person.do"
                    target="mainFrame"><img
                    src="images/btn_settings.gif" name="Image4" width="60" height="40"
                    border="0" id="Image4" onMouseOver="MM_swapImage('Image4','','images/btn_settings_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
        <%if(user!=null&&user.getRole()!=null&&!user.getRole().equals("9998")&&!user.getRole().equals("9999")){%>
        <%}%>
        <%if(user!=null&&user.getRole()!=null&&!user.getRole().equals("9999")){%>
        <td width="85"><a href="/IB/flowChart/showFlowChart.jsp" target="mainFrame"><img
                    src="images/btn_viewlog.gif" name="Image2" width="85" height="40"
                    border="0" id="Image2" onMouseOver="MM_swapImage('Image2','','images/btn_viewlog_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
        <td width="60"><a href="/IB/bill/bills.jsp" target="mainFrame"><img 
				    src="images/btn_mydz.gif" name="Image9" width="60" height="40" 
					border="0" id="Image9" onMouseOver="MM_swapImage('Image9','','images/btn_mydz_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
        <%}%>
        <%if(user!=null&&user.getRole()!=null&&user.getRole().equals("9998")){%>
        <td width="75"><a href="/IB/cases.do?flag=list" target="mainFrame"><img 
                    src="images/btn_caseedit.gif" name="Image19" width="75" height="40" 
                    border="0" id="Image19" onMouseOver="MM_swapImage('Image19','','images/btn_caseedit_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
        <%}%>
        <td width="40"><a href="temp.jsp" target="mainFrame"><img
                    src="images/btn_loginOut.gif" name="Image3" width="40" height="40"
                    border="0" id="Image3" onMouseOver="MM_swapImage('Image3','','images/btn_loginOut_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
      </tr>
    </table></td>
  </tr>
</table>

</body>
</html>
