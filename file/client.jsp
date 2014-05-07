<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>选择客户</title>
<base target="_self">
<link href="/IB/file/dialog.css" rel="stylesheet"
	type="text/css">
<style>
* { font-size:12px;}
</style>
<script>
var rtValue = new Array()
function sendData()
{
	try
	{
	  var mystr = window.dialogArguments;
	  myObj = mystr.split(",");
	  var rt =""
	  for (i=0; i<myObj.length; i++)
	  {
	      if(myObj[i]!=""){
    	 rt = rt + "document.getElementById(\"" + myObj[i] +"\").value='" + (rtValue[i] ? rtValue[i] : "") +"';"
		 }
	  }
	  window.returnValue = rt
	}catch(e)
	{
	}
	window.close();
}

document.onkeydown = function ()
{
	if (event.keyCode==27)
	{
		window.close();
	}
}
function ck(trObj)
{
	trs = document.getElementById("conTab").firstChild.children;
	for (i=0; i<trs.length; i++)
	{
	  if (i==trObj.rowIndex)
	  {
	    trObj.style.backgroundColor='#FFCC99';
	    trObj.style.cursor = "default";
	    continue;
	  }else
	  {
	    trs[i].style.background = ((trs[i].rowIndex%2==0)?"#ECF4FC":"#ffffff");
	    trs[i].style.cursor = "hand";
	  }
	}
	rtValue[0] = window.event.srcElement.parentNode.firstChild.innerText;
	rtValue[1] = window.event.srcElement.parentNode.childNodes[2].innerText;
	rtValue[2] = window.event.srcElement.parentNode.childNodes[3].innerText;
}
function dc(ttobj)
{
    ck(ttobj);sendData();
}
</script>
</head>


<body>
<table width="650"  border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td><html:form action="emclmgpAction.do">
		<table width="100%" height="75" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="300">
					<fieldset style="width:300px; padding:0 10px 5px 10px;"><legend>查询条件</legend>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td align="right" width="100">客户号：</td>
							<td><html:text property="clno">
							</html:text></td>
						</tr>
						<tr>
							<td align="right">帐号：</td>
							<td><html:text property="acno"></html:text>
							</td>
						</tr>
						<tr>
							<td align="right">客户中文名称：</td>
							<td><html:text property="clnona"></html:text>
							<html:hidden property="adl1"/>
							</td>
						</tr>
					</table>
					</fieldset></td>
				<td width="11" align="center" valign="middle"><br>
				<table width="95%" height="100%" border="0" align="center"
					cellpadding="0" cellspacing="0">
				</table>
				</td>
				<td width="309" valign="bottom">
				  <table width="80" height="75" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
					  <td height="25" align="center" valign="bottom"><input type="button" name="Submit" value="提 交"
							onclick="sendData()" class="btn"></td>
					</tr>
					<tr>
					  <td height="25" align="center" valign="bottom"><input type="button" name="Submit2" value="退 出"
							onclick="window.close()" class="btn"></td>
					</tr>
					<tr>
					  <td height="25" align="center" valign="bottom"><input type="submit" name="Submit" value="查 找" class="btn"></td>
					</tr>
					<tr>
						<td></td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</html:form></td>
	</tr>
	<tr>
		<td>
		<div style="overflow:hidden; width:100%;" id="headerDiv">
		<table width="100%" border="0" cellspacing="1" cellpadding="5"
			class="item_list_display">
			<tr>
				<th width="10%">客户号</th>
				<th width="17%">机构号</th>
				<th width="35%">客户名称</th>
				<th width="38%">客户地址</th>
		  </tr>
		</table>
		</div>
		</td>
	</tr>
	<tr>
		<td>
		<div style="overflow:auto; width:100%; height:125px;"
			onscroll="document.getElementById('headerDiv').scrollLeft = scrollLeft">
		<table id="conTab" width="100%" border="0" cellspacing="1"
			cellpadding="5" class="item_list_display">
			<logic:notEmpty name="list">
				<logic:iterate id="list" name="list" indexId="index" scope="request">   
					
                  
              <%if ((index.intValue() % 2) == 1) {
            out.print("<tr height=\"20\" onclick=\"ck(this)\" ondblclick=\"dc(this)\" bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr height=\"20\" onclick=\"ck(this)\" ondblclick=\"dc(this)\" bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
             
						<td width="10%">
					      <bean:write name="list" property="clno" /></td>
						<td width="17%">
					      <bean:write name="list" property="brno" /></td>
						<td width="35%">
					      <bean:write name="list" property="clnm" /></td>
						<td width="38%">
					      <bean:write name="list" property="adl1" /></td>
					</tr>
				</logic:iterate>
			</logic:notEmpty>
		</table>
		</div>
		</td>
	</tr>
</table>
<a href="client.jsp" id="reload" style="display:none;">reload..</a>
</body>
</html>
