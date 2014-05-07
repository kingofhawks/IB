<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GBK"%>

<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript"
	src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript">
function init()
{
    $("sType").checked || !$("bType").checked ? switchNewUserType(1):switchNewUserType(2)
}

function switchNewUserType(n)
{
    switch (n)
    {
        case 2:
            $("singleUser").style.display = "none";
            $("singleNo").style.display = "none";
            $("batchUser").style.display = "";
            $("batchNo").style.display = "";
            $("usnm").disabled = true;
            $("ustl").disabled = true;
            $("stus").disabled = false;
            $("pnct").disabled = false;
            break
        default:
            $("singleUser").style.display = "";
            $("singleNo").style.display = "";
            $("batchUser").style.display = "none";
            $("batchNo").style.display = "none";
            $("usnm").disabled = false;
            $("ustl").disabled = false;
            $("stus").disabled = true;
            $("pnct").disabled = true;
        }
}
</script>
</head>

<body onLoad="init()">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--内表格开始-->
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" class="innerTable_main">
				<div id="innerTable_div"><!--内容开始--> <html:form
					action="userManageNew.do" onsubmit="checkForm(this)">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">

						<tr>
							<td width="100%" align="center" valign="top">
							 <div style="height:80px"></div><table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
								
								<tr>
								  <td colspan="2" align="center" valign="middle" class="innertitle">用户管理</td>
							  </tr>
								<tr>
									
									<td height="30" colspan="2" align="right" valign="middle"><table width="94%" height="20" border="0" cellspacing="0" celpadding="0">
										<tr>
											<td width="232" align="right"><nobr><html:radio property="type"
												styleId="sType" value="single"
												onclick="switchNewUserType(1)" /> <label for="sType">单个开户</label></nobr></td>
											<td width="279" align="center" valign="middle"><nobr>
											  <html:radio property="type" styleId="bType"
												value="batch" onclick="switchNewUserType(2)" /> <label
												for="bType">批量开户</label></nobr>
									    <td width="171">										</tr>
									</table></td>
								</tr>

								<tr id="singleUser">
									<td width="38%" height="20" align="right" valign="middle" bgcolor="#EBEBEB" class="attR">用户名：</td>
								  <td valign="middle"><html:text property="usnm" maxlength="16" /></td>
								</tr>

								<tr id="singleNo">
									<td height="20" align="right" valign="middle" bgcolor="#EBEBEB"><bean:message
										key="systemManage.popedomManage.tel" /></td>
									<td valign="middle"><html:text property="ustl" maxlength="16" /></td>
								</tr>
								<tr id="batchUser">
									<td width="38%" height="20" align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*开始用户编号：</td>
									<td colspan="2" valign="middle"><html:text property="stus"
										maxlength="16" onkeypress="regInput(/^[a-zA-Z]*[0-9]*$/)" style="ime-mode:Disabled"/>（以字母开始,不能用US打头）</td>
								</tr>

								<tr id="batchNo">
									<td height="20" align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*用户数：</td>
									<td colspan="2" valign="middle"><html:text property="pnct"
										maxlength="4" onkeypress="regInput(/^[0-9]*$/)"/></td>
								</tr>

								<tr>
									<td height="20" align="right" valign="middle" bgcolor="#EBEBEB"><bean:message
										key="systemManage.popedomManage.isUsed" /></td>
									<td valign="middle">
									<div class="sele_div"><html:select property="rncd">
										<html:option value="Y">YES</html:option>
										<html:option value="N">NO</html:option>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="middle" bgcolor="#EBEBEB" class="attR">班级：</td>
									<td valign="middle">
									<div class="sele_div"><html:select property="ugid">
										<%out.println(request.getAttribute("OPTION_UGID"));%>
									</html:select></div>									</td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					<div class="footer">
					<html:hidden property="errCode" value="" />
					<input type="image" src='<bean:message key="common.finish" />'>&nbsp;&nbsp;<input type="image" name="cancel" src='<bean:message key="common.cancel" />' onclick="JavaScript:document.location='/IB/userManage.do?prid=USMT';return false">
					 </div>
				</html:form> <!--内容结束--></div>
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
</html:html>
