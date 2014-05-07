<%--测评--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.witsoft.bean.cases.CasesManage" %>
<html>
<head>
<script language="javascript" type="text/javascript" src="/IB/common/list.js"> </script>
<title>测评</title>
<style>
div.sele_div_cl{border:1px solid #000000; width:122px; height:18px; clip:rect(0px,112px,17px,0px);overflow:hidden;}
select {position:relative; margin:-2px;width:124px;border:0px;behavior:url('/IB/common/select.htc'); }
</style>
<script language="javascript">
function setHref(){
 var link01 = document.getElementById('link01');
   window.open("/IB/gradeexcel.jsp?ugid="+document.getElementById('ugid').value);
   return true;
}
</script>
</head>
<body>
<%
com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                    .getAttribute("user");
request.setAttribute("OPTION_UGID", com.witsoft.common.ConvertOptions
                        .ConvertArrayToString(new com.witsoft.bean.systemManage.popedomManage.QueryUserGroup()
                                .getUserGroup(user.getBrno(), user.getUsid())).replace("<option></option>", ""));
CasesManage manage=new CasesManage();
String casesId=manage.getCaseId(null,null);
                                %>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td align="center" valign="middle" class="outerTable_mainContent">
		<!--内表格开始-->
		<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" valign="top" class="innerTable_main">
				
				<!--内容开始-->
				 <form>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
						  <td width="100%" align="center" valign="top">
							 <div class="blankt" style="height:20px"></div><table width="90%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
								<tr>
								  <td height="25" colspan="2" align="center" valign="middle"  class="innertitle">测&nbsp;&nbsp;&nbsp;&nbsp;评</td>
							  </tr>
								<tr>
								  <td align="right" valign="top" bgcolor="#EBEBEB">请填入要测评的案例编号：</td>
								  <td width="76%" align="left" valign="top">
								    <input name="casesId" id="casesId" value="<%=casesId%>" size="80" maxlength="80" readonly="readonly">
							      &nbsp;
							      <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('test','casesId');return false"></html:image>
						      </td>
							  </tr>
								<tr>
									<td width="24%" align="right" valign="middle" bgcolor="#EBEBEB">请输入用户编号：</td>
								  <td align="left" valign="middle">
									    <input name="usid" type="text" class="sele_div_cl">（默认为全部学生） </td>
							    </tr>
								
								<tr>
								    <td align="right" valign="middle" bgcolor="#EBEBEB">请选择班级：</td>
								    <td align="left" valign="middle">
                                    <table width="100%" height="20" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="1"></td>
  </tr>
  <tr>
    <td><div class="sele_div_cl">
                                        <select id='ugid' name="ugid">
                                            <%out.println(request.getAttribute("OPTION_UGID"));%>
                                        </select>
                                  </div></td>
  </tr>
</table>
       							  </td>
							    </tr>
							</table>
							<table width="90%" border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="80%" height="60" align="center" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;<br>
					              <input type="button" name="submit" value="评估" onClick="init()" class="btn">	
                                   &nbsp;&nbsp;
								  <input type="button" id="tes1" name="tes1" value="查看成绩图" onClick="jFreeChart()" class="btn">
								   &nbsp;&nbsp;
							    <input type="button" id ="link01"  onClick="setHref()" value="导出学生成绩列表" class="btn"></td>
                              </tr>
                            </table></td>
							
						</tr>
					</table><div id="innerTable_divLis" style="width:90%;height:220px" >
				   <div id="grade">
					<table width="100%" border="0" cellspacing="1" cellpadding="1" id="item_list" style="cursor:auto;">
                <tr>
                <th width="12%">用户编号</th>
                <th width="16%">姓名</th>
                <th width="13%">班级</th>
                <th width="11%">案例总分</th>
                <th width="18%">学生所做案例操作总分</th>
                <th width="12%">扣除分数</th>
                <th width="18%">实际得分&#8249;百分制&#8250;</th>
                </tr>
</table></div>
</div>
<SCRIPT LANGUAGE="JavaScript">
/**
成绩表状图
**/
function jFreeChart()
{
var ugid="";
ugid=document.getElementById("ugid").value;
window.open('/IB/jFreeChart.do?ugid='+ugid);
}
</SCRIPT>

				 </form>
                 <SCRIPT LANGUAGE="JavaScript">
<!--

var http_request = false;
function init()
{
  var ugid = document.forms[0].ugid.value;
  var usid = document.forms[0].usid.value;
  var casesId=document.forms[0].casesId.value;
  
  var url = "/IB/GetGradeServlet?ugid=" + ugid+"&usid="+usid+"&casesId="+casesId;
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
        document.getElementById("grade").innerHTML= http_request.responseText
      }
      catch(e)
      {
      }
    }
    else
    {
      document.getElementById("grade").innerHTML="<strong><color=\"#FF0000\">对不起，无法获得相关的提示信息。</color></strong>";
    }
  }
  else
  {
    try
    {
      document.getElementById("grade").innerText = "正在获取学生成绩…";
    }
    catch (e)
    {
    }
  }
}
//-->
</SCRIPT>

				<!--内容结束-->
				</div>
			  </td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		<!--内表结束--></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>

</table>
</body>
</html>
