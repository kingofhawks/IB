<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.witsoft.bean.common.SessionManageBean" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html>
<head>
<title>Menu</title>
<meta name="Description" content="国际结算模拟系统5.0版" />
<meta name="Copyright" content="本页版权北京永基实创科技有限公司所有。All Rights Reserved" />
<base onmouseover="window.status='国际结算模拟系统 V5.0 ';return true" />
<style type="text/css">
<!--
body {	margin: 0px;}
.treetitle{
border: #ccc 1px solid ; height:28;text-align:left;cursor:hand;}
.casetitle
{
border-top: #ccc 1px solid ; border-bottom: #ccc 1px solid ; border-right: #ccc 1px solid ; height:38;text-align:left;cursor:hand;
}
-->
</style>
<%
 com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                    .getAttribute("user");

String id=new SessionManageBean().findByUsidAndSessionId(user.getUsid(),"caseId");
%>
<script>
 var oPopup=window.createPopup();   
 function rdl_doClick(cont)   
  {   
      var  str=cont;  
		    oPopup.document.body.innerHTML=str;
      var   x=window.event.clientX+window.screenLeft;   
      var   y=window.event.clientY+window.screenTop;   
      oPopup.show(x,y,140,30);   
  }   	

function caseRes(){
var ids;
    ids="<%=id%>";
	if(ids!="00"){//能查看案例结果
		var url ="/IB/cases.do?flag=load&id=<%=id%>";
		window.open(url,"leftFrame");
		document.getElementById("Image1").src="/IB/images/tree.gif";
		document.getElementById("Image2").src="/IB/images/case_o.gif";
	} 
}
function caseTree(){
		document.getElementById("Image1").src="/IB/images/tree_o.gif";
		document.getElementById("Image2").src="/IB/images/case.gif";
}

function tipTree(){
	rdl_doClick("<table id='mypopup' style='width:140px;height:30px;font-size:12px;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px'><tr><td>点击返回系统导航</td></tr></table>");	

}

function tipCase()
{
	var ids;
		ids="<%=id%>";
	if(ids=="00"){
			rdl_doClick("<table id='mypopup'  style='width:140px;height:30px;font-size:12px;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px'><tr><td>对不起，不能查看案例</td></tr></table>");	
	}else{
			rdl_doClick("<table id='mypopup'  style='width:140px;height:30px;font-size:12px;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px'><tr><td>点击查看案例</td></tr></table>");	
	}	
}

</script>
</head>
<input type="hidden" id="clickstate">
<body>
<table width="100%" height="38" border="0" cellpadding="0" cellspacing="0" background="images/treebg.gif" >
  <tr>
    <td width="108" height="38" align="left" valign="top" class="treetitle" ><a onFocus="this.blur()" onClick="caseTree()"  href="/IB/menu.jsp?id=<%=id%>"  target="leftFrame"><img src="images/tree_o.gif"   width="108" height="38" border="0" id="Image1"  onMouseOver="tipTree()" onMouseOut="oPopup.hide();"></a></td>
   <td width="108" height="38" align="left" valign="top"  class="casetitle" >
   <a onFocus="this.blur()" onClick="caseRes()">
   <img src="images/case.gif" name="Image2" width="108" height="38" border="0" id="Image2"  onMouseOver="tipCase()" onMouseOut="oPopup.hide();"></a>
   </td>
  </tr>
</table>
</body>
</html>
